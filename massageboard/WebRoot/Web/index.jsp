<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="sys.DaoImpl.*" %>
<%@ page import="sys.Dao.*" %>
<%@ page import="sys.Entity.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>留言列表</title>
  
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link href="CSS/CSS.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
  <div>
    <form name="form1" method="post" action="">
      <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="border">
        <tr>
          <td align="center" valign="middle" bgcolor="#FF9999" class="td_right"><font size="+3">&nbsp; 
          <strong>留言列表</strong></font></td>
        </tr>
        <tr>
          <td align="right" class="td_right" height="27"><a href="AddMessage.jsp">添加留言</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <%
        	messageDao message = new messageDaoImpl();
        	List list = message.GetMessageAll();
        	for(int i = 0; i < list.size(); i++)
        	{
        		message mess = (message)list.get(i);
         %>
        <tr>
          <td class="td_right"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="33%" height="27" class="td_bottom" ><strong>留言用户名：</strong><%=mess.getUsername() %></td>
              <td width="33%" class="td_bottom"><strong>留言人IP：</strong><%=mess.getIp() %></td>
              <td width="33%" class="td_right"><strong>留言创建时间：</strong><%=mess.getCreatetime() %></td>
            </tr>
            <tr>
              <td height="27" colspan="3" class="td_right"><strong>留言标题：</strong><%=mess.getTitle() %></td>
            </tr>
            <tr>
              <td height="27" colspan="3" class="td_right"><strong>留言内容: </strong><%=mess.getContents() %></td>
            </tr>
            <tr>
              <td colspan="3"><br></td>
            </tr>            
          </table></td>
        </tr>
        <%
            	}
             %>
        
      </table>
    </form>
  </div>
  </body>
</html>
