package org.minioa.core;

import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.jboss.seam.ui.*;

public class UserSession {
	/**
	 * 作者：daiqianjie 网址：www.minioa.net 创建日期：2011-11-05
	 */
	public Lang lang;

	public Lang getLang() {
		if (lang == null)
			lang = (Lang) FacesContext.getCurrentInstance().getExternalContext().getApplicationMap().get("Lang");
		if (lang == null)
			FunctionLib.redirect(FunctionLib.getWebAppName());
		return lang;
	}

	public MySession mySession;

	public MySession getMySession() {
		if (mySession == null)
			mySession = (MySession) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("MySession");
		if (mySession == null)
			FunctionLib.redirect(FunctionLib.getWebAppName());
		return mySession;
	}

	private Session session;

	private Session getSession() {
		if (session == null)
			session = new HibernateEntityLoader().getSession();
		return session;
	}

	public UserSession() {
	}

	private String online;

	public String getOnline() {
		try {
			FacesContext context = FacesContext.getCurrentInstance();
			HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
			Query query = getSession().getNamedQuery("core.user.session.update");
			query.setParameter("cId", getMySession().getUserId());
			query.setParameter("sId", request.getSession().getId());
			query.setParameter("cTime", request.getSession().getCreationTime());
			query.setParameter("mTime", request.getSession().getLastAccessedTime());
			query.setParameter("ipAddress", getMySession().getIp());
			online = String.valueOf(query.list().get(0));
			if ("-1".equals(online)) {
				query = getSession().getNamedQuery("core.user.session.delete");
				query.setParameter("sessionId", request.getSession().getId());
				query.executeUpdate();
				HttpSession session = (HttpSession) context.getExternalContext().getSession(false);
				session.invalidate();
				online = "<script language=\"javascript\">if(document.getElementById('mponline')) {document.getElementById('mpForMsgContentDiv').style.backgroundImage='url(images/error.png)';document.getElementById('mponline').component.show();}</script>";
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return online;
	}
}
