package org.minioa.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.faces.context.FacesContext;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.jboss.seam.ui.*;

import org.minioa.core.FormField;

public class FormFieldDao {
	/**
	 * 作者：daiqianjie 网址：www.minioa.net 创建日期：2011-11-27
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

	public FormFieldDao() {
	}

	public List<Integer> buildDsList() {
		getMySession();
		List<Integer> dsList = new ArrayList<Integer>();
		try {
			String key = "", key2 = "";
			if (mySession.getTempStr() != null) {
				if (mySession.getTempStr().get("FormField.key") != null)
					key = mySession.getTempStr().get("FormField.key").toString();
				if (mySession.getTempStr().get("FormField.key2") != null)
					key2 = mySession.getTempStr().get("FormField.key2").toString();
			}

			String sql = getSession().getNamedQuery("core.form.field.records.count").getQueryString();
			String where = " where formId = 0";
			if (!key.equals(""))
				where += " and fieldName like :key";
			if (!key2.equals(""))
				where += " and fieldText like :key2";
			Query query = getSession().createSQLQuery(sql + where);
			if (!key.equals(""))
				query.setParameter("key", "%" + key + "%");
			if (!key2.equals(""))
				query.setParameter("key2", "%" + key2 + "%");

			for (int i = 0; i < Integer.valueOf(String.valueOf(query.list().get(0))); i++)
				dsList.add(i);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		mySession.setRowCount(dsList.size());
		return dsList;
	}

	public ArrayList<FormField> buildRecordsList() {
		ArrayList<FormField> recordsList = new ArrayList<FormField>();
		try {
			getMySession();
			Map<?, ?> params = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
			// 判断reload参数，是否填充空列表
			if ("false".equals((String) params.get("reload"))) {
				for (int i = 0; i < mySession.getPageSize(); i++)
					recordsList.add(new FormField());
				return recordsList;
			}
			// 设置第一页
			if ("true".equals((String) params.get("resetPageNo")))
				mySession.setScrollerPage(1);

			String key = "", key2 = "";
			if (mySession.getTempStr() != null) {
				if (mySession.getTempStr().get("FormField.key") != null)
					key = mySession.getTempStr().get("FormField.key").toString();
				if (mySession.getTempStr().get("FormField.key2") != null)
					key2 = mySession.getTempStr().get("FormField.key2").toString();
			}
			recordsList = new ArrayList<FormField>();
			Criteria criteria = getSession().createCriteria(FormField.class);
			criteria.add(Restrictions.eq("formId", 0));
			if (!key.equals(""))
				criteria.add(Restrictions.like("fieldName", key, MatchMode.ANYWHERE));
			if (!key2.equals(""))
				criteria.add(Restrictions.like("fieldText", key2, MatchMode.ANYWHERE));
			criteria.addOrder(Order.asc("fieldType"));
			criteria.addOrder(Order.asc("fieldName"));
			criteria.setMaxResults(mySession.getPageSize());
			criteria.setFirstResult((Integer.valueOf(mySession.getScrollerPage()) - 1) * mySession.getPageSize());

			Iterator<?> it = criteria.list().iterator();
			while (it.hasNext()) {
				FormField bean = (FormField) it.next();
				recordsList.add(bean);
			}
			it = null;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return recordsList;
	}

	public FormField selectRecordById() {
		FormField bean = new FormField();
		try {
			Map<?, ?> params = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
			String id = (String) params.get("id");
			if (FunctionLib.isNum(id)) {
				Criteria criteria = getSession().createCriteria(FormField.class).add(Restrictions.eq("ID_", Integer.valueOf(id))).addOrder(Order.desc("ID_"));
				Iterator<?> it = criteria.list().iterator();
				while (it.hasNext())
					bean = (FormField) it.next();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return bean;
	}

	public void newRecord(FormField bean) {
		try {
			bean.setCID_(getMySession().getUserId());
			bean.setCDATE_(new java.util.Date());
			getSession().save(bean);
			bean = null;
			String msg = getLang().getProp().get(getMySession().getL()).get("success");
			getMySession().setMsg(msg, 1);
		} catch (Exception ex) {
			String msg = getLang().getProp().get(getMySession().getL()).get("faield");
			getMySession().setMsg(msg, 2);
			ex.printStackTrace();
		}
	}

	public void updateRecordById(FormField bean) {
		try {
			Map<?, ?> params = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
			String id = (String) params.get("id");
			if (FunctionLib.isNum(id)) {
				bean.setMID_(getMySession().getUserId());
				bean.setMDATE_(new java.util.Date());
				bean.setID_(Integer.valueOf(id));
				getSession().update(bean);
			}

			String msg = getLang().getProp().get(getMySession().getL()).get("success");
			getMySession().setMsg(msg, 1);
		} catch (Exception ex) {
			String msg = getLang().getProp().get(getMySession().getL()).get("faield");
			getMySession().setMsg(msg, 2);
			ex.printStackTrace();
		}
	}

	public void deleteRecordById() {
		try {
			String id = getMySession().getTempStr().get("FormField.id");
			if (FunctionLib.isNum(id)) {
				Criteria criteria = getSession().createCriteria(FormField.class).add(Restrictions.eq("ID_", Integer.valueOf(id))).addOrder(Order.desc("ID_"));
				Iterator<?> it = criteria.list().iterator();
				while (it.hasNext())
					getSession().delete((FormField) it.next());
			}
			String msg = getLang().getProp().get(getMySession().getL()).get("success");
			getMySession().setMsg(msg, 1);
		} catch (Exception ex) {
			String msg = getLang().getProp().get(getMySession().getL()).get("faield");
			getMySession().setMsg(msg, 2);
			ex.printStackTrace();
		}
	}

	public void showDialog() {
		try {
			Map<?, ?> params = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
			getMySession().getTempStr().put("FormField.id", (String) params.get("id"));
		} catch (Exception ex) {
			String msg = getLang().getProp().get(getMySession().getL()).get("faield");
			getMySession().setMsg(msg, 2);
			ex.printStackTrace();
		}
	}
}
