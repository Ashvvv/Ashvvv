<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="sys.DaoImpl.*" %>
<%@ page import="sys.Dao.*" %>
<%@ page import="sys.Entity.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�����ύ����....</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    	request.setCharacterEncoding("GBK");
    	String title = request.getParameter("txtTitle");
    	String name = request.getParameter("txtName");
    	String contents = request.getParameter("txtContents");
    	String ip = request.getRemoteAddr();
    	
    	message message = new message();
    	message.setTitle(title);
    	message.setUsername(name);
    	message.setContents(contents);
    	message.setIp(ip);
    	
    	messageDao dao = new messageDaoImpl();
    	int num = dao.AddMessage(message);
    	
    	if(num > 0)
    	{
    		out.print("<Script> alert('������Գɹ���'); location.href='../index.jsp'; </Script>");
    	}else{
    		out.print("<Script> alert('������� �ύʧ�ܣ�'); location.href='../index.jsp'; </Script>");
    	}
    	
     %>
  </body>
</html>
