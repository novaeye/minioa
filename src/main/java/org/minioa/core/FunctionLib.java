package org.minioa.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.regex.Pattern;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.faces.context.FacesContext;

import org.hibernate.Query;
import org.hibernate.Session;
import org.jivesoftware.smack.Chat;
import org.jivesoftware.smack.MessageListener;
import org.jivesoftware.smack.packet.Message;

public class FunctionLib {
	/**
	 * 作者：daiqianjie 网址：www.minioa.net 创建日期：2011-11-05
	 */
	public static String dbType = "mysql";

	public static String baseDir, separator, webAppName, openfireAdmin;
	public static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	public static SimpleDateFormat dtf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	public static String getSeparator() {
		if (separator == null) {
			String osName = System.getProperty("os.name");
			if (osName == null)
				osName = "";
			if (osName.toLowerCase().indexOf("win") != -1)
				separator = "\\";
			else
				separator = "/";
		}
		return separator;
	}

	public static String getBaseDir() {
		if (baseDir == null)
			baseDir = FacesContext.getCurrentInstance().getExternalContext().getInitParameter("baseDir") + getSeparator();
		return baseDir;
	}

	public static String getWebAppName() {
		if (webAppName == null)
			webAppName = FacesContext.getCurrentInstance().getExternalContext().getInitParameter("webAppName");
		return webAppName;
	}

	public static String getOpenfireAdmin() {
		if (openfireAdmin == null)
			openfireAdmin = getWebParameter("openfireAdmin");
		return openfireAdmin;
	}

	public static String getWebParameter(String parameter) {
		return FacesContext.getCurrentInstance().getExternalContext().getInitParameter(parameter);
	}

	public static boolean isNum(String str) {
		if (str == null)
			return false;
		Pattern pattern = Pattern.compile("[0-9]+");
		return pattern.matcher(str).matches();
	}

	public static boolean isFloat(String str) {
		if (str == null)
			return false;
		Pattern pattern = Pattern.compile("[0-9|.]+");
		return pattern.matcher(str).matches();
	}

	public static boolean isEmail(String str) {
		if (str == null)
			return false;
		Pattern pattern = Pattern.compile("^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
		return pattern.matcher(str).matches();
	}

	public static String getString(Object o) {
		if (o != null)
			return String.valueOf(o);
		else
			return "";
	}

	public static String getSubString8(String str) {
		if (str.length() > 8)
			return str.substring(0, 8);
		return str;
	}

	public static String getSubString15(String str) {
		if (str.length() > 15)
			return str.substring(0, 15);
		return str;
	}

	public static String getSubString18(String str) {
		if (str.length() > 18)
			return str.substring(0, 18);
		return str;
	}

	public static String getSubString24(String str) {
		if (str.length() > 24)
			return str.substring(0, 24);
		return str;
	}

	public static int getInt(Object o) {
		if (o != null) {
			if (String.valueOf(o).equals("true"))
				return 1;
			if (String.valueOf(o).equals("false"))
				return 0;
			return Integer.valueOf(String.valueOf(o));
		} else
			return 0;
	}

	public static float getFloat(Object o) {
		if (o != null)
			return Float.valueOf(String.valueOf(o));
		else
			return 0;
	}

	public static boolean getBoolean(Object o) {
		if (o != null)
			return tinyint2Boolean(String.valueOf(o));
		else
			return false;
	}

	public static java.util.Date getDate(Object o) {
		if (o != null) {
			java.sql.Timestamp t = (java.sql.Timestamp) o;
			return new java.util.Date(t.getTime());
		} else
			return null;
	}

	public static String getDateString(Object o) {
		if (o != null) {
			java.sql.Timestamp t = (java.sql.Timestamp) o;
			return FunctionLib.df.format(new java.util.Date(t.getTime()));
		} else
			return "";
	}

	public static String getDateTimeString(Object o) {
		if (o != null) {
			java.sql.Timestamp t = (java.sql.Timestamp) o;
			return FunctionLib.dtf.format(new java.util.Date(t.getTime()));
		} else
			return "";
	}

	/**
	 * 将1转化成true，其它转化成false，针对MySQL数据库的TINYINT字段类型
	 * 
	 * @param str
	 *            0 or 1
	 * @return true or false
	 */
	public static boolean tinyint2Boolean(String str) {
		if ("1".equals(str))
			return true;
		else
			return false;
	}

	public static String gb23122Unicode(String str) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < str.length(); i++) {
			if (str.charAt(i) <= 256)
				sb.append("\\u00");
			else
				sb.append("\\u");
			sb.append(Integer.toHexString(str.charAt(i)));
		}
		return sb.toString();
	}

	public static void redirect(String page) {
		try {
			FacesContext context = FacesContext.getCurrentInstance();
			HttpServletResponse response = (HttpServletResponse) context.getExternalContext().getResponse();
			// System.out.println(context.getExternalContext().getRequestHeaderMap());
			response.sendRedirect("http://" + context.getExternalContext().getRequestHeaderMap().get("host") + "/" + page);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static void redirect(String templateName, String page) {
		try {
			if ("".equals(getWebAppName()))
				redirect("templates/" + templateName + "/" + page);
			else
				redirect(getWebAppName() + "/templates/" + templateName + "/" + page);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static void refresh() {
		try {
			FacesContext context = FacesContext.getCurrentInstance();
			HttpServletResponse response = (HttpServletResponse) context.getExternalContext().getResponse();
			response.sendRedirect(context.getExternalContext().getRequestHeaderMap().get("referer"));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static String getRequestHeaderMap(String parameter) {
		FacesContext context = FacesContext.getCurrentInstance();
		return context.getExternalContext().getRequestHeaderMap().get(parameter);
	}

	public static String exeSql(org.hibernate.Session s, String sql, String paramName, String paramValue, String type) {
		String str = "";
		if (type.equals("float"))
			str = "0";
		try {
			Query query = s.getNamedQuery(sql);
			query.setParameter(paramName, paramValue);
			Iterator<?> it = query.list().iterator();
			while (it.hasNext()) {
				Object obj = (Object) it.next();
				if (obj != null)
					str = String.valueOf(obj);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return str;
	}

	public static String exeSql(org.hibernate.Session s, String sql, String paramName, String paramValue, String paramName2, String paramValue2, String type) {
		String str = "";
		if (type.equals("float"))
			str = "0";
		try {
			Query query = s.getNamedQuery(sql);
			query.setParameter(paramName, paramValue);
			query.setParameter(paramName2, paramValue2);
			Iterator<?> it = query.list().iterator();
			while (it.hasNext()) {
				Object obj = (Object) it.next();
				if (obj != null)
					str = String.valueOf(obj);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return str;
	}

	public static String getIp() {
		String ip = "";
		try {
			FacesContext fc = FacesContext.getCurrentInstance();
			HttpServletRequest request = (HttpServletRequest) fc.getExternalContext().getRequest();
			ip = request.getHeader("x-forwarded-for");
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
				ip = request.getHeader("Proxy-Client-IP");
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
				ip = request.getHeader("WL-Proxy-Client-IP");
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
				ip = request.getRemoteAddr();
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
				ip = request.getHeader("via");
			if (ip == null || ip.length() == 0)
				ip = "unknown";
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ip;
	}

	public static void download(String filename, String oldname) {
		try {
			FacesContext ctx = FacesContext.getCurrentInstance();
			ctx.responseComplete();
			String contentType = "application/x-download;charset=utf-8";
			HttpServletResponse response = (HttpServletResponse) ctx.getExternalContext().getResponse();
			response.setContentType(contentType);
			StringBuffer contentDisposition = new StringBuffer();
			contentDisposition.append("attachment;");
			contentDisposition.append("filename=\"");
			contentDisposition.append(oldname);
			contentDisposition.append("\"");
			response.setHeader("Content-Disposition", new String(contentDisposition.toString().getBytes(System.getProperty("file.encoding")), "iso8859_1"));
			ServletOutputStream out = response.getOutputStream();
			byte[] bytes = new byte[0xffff];
			File file = new File(filename);
			if (!file.exists())
				return;
			InputStream is = new FileInputStream(file);
			int b = 0;
			while ((b = is.read(bytes, 0, 0xffff)) > 0)
				out.write(bytes, 0, b);
			is.close();
			ctx.responseComplete();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static boolean isDirExists(String dir) {
		try {
			File file = new File(dir);
			if (file.exists())
				return true;
			else
				return file.mkdirs();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	public static String getFileType(String fileName) {
		if (fileName.lastIndexOf(".") > -1)
			return fileName.substring(fileName.lastIndexOf("."));
		else
			return "";
	}

	public static String getFileName(String path) {
		String fileName = path;
		if (path.indexOf("\\") > -1) {
			int i = path.lastIndexOf("\\") + 1;
			fileName = path.substring(i);
			return fileName;
		}
		if (path.indexOf("/") > -1) {
			int i = path.lastIndexOf("/") + 1;
			fileName = path.substring(i);
		}
		return fileName;
	}

	public static String getOpenfireProperty(Session s, String property) {
		String str = "";
		try {
			Query query = s.createSQLQuery("SELECT propValue FROM ofproperty where name=:property");
			query.setParameter("property", property);
			str = String.valueOf((Object) query.list().get(0));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return str;
	}

	public static void sendOfMessage(String username, String messageText) {
		try {
			Application beanApp = (Application) FacesContext.getCurrentInstance().getExternalContext().getApplicationMap().get("Application");
			if (null == beanApp)
				return;
			if (beanApp.getInit() == 2) {
				MessageListener messageListener = new MessageListener() {
					@Override
					public void processMessage(Chat arg0, Message arg1) {
						;
					}
				};
				Chat chat = beanApp.getXmppConn().getChatManager().createChat(username + "@" + beanApp.getXmppConn().getServiceName(), messageListener);
				Message msg = new Message();
				msg.setBody(messageText + "\r\n" + dtf.format(new java.util.Date()));
				chat.sendMessage(msg);
				System.out.println("A short message has sent to " + username + " at time " + dtf.format(new java.util.Date()));
			} else
				System.out.println("The Xmpp is not Open!");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	/**
	 * 写入操作日志
	 * 
	 * @param s
	 *            数据库会话
	 * @param cId
	 *            操作人id
	 * @param ip
	 *            操作人ip
	 * @param tag
	 *            标签，或表名
	 * @param refId
	 *            相关表记录id
	 * @param summary
	 *            摘要
	 * @param details
	 *            sql明细
	 */
	public static void writelog(Session s, int cId, String ip, String tag, int refId, String summary, String details) {
		try {
			Query query = s.getNamedQuery("core.log.newrecord");
			query.setParameter("cId", cId);
			query.setParameter("tag", tag);
			query.setParameter("refId", refId);
			query.setParameter("summary", summary);
			query.setParameter("details", details);
			query.setParameter("ip", ip);
			query.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
