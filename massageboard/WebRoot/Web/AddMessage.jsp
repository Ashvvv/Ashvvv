<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="sys.DaoImpl.*" %>
<%@ page import="sys.Dao.*" %>
<%@ page import="sys.Entity.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>增加留言</title>
   
	
	<link rel="stylesheet" type="text/css" href="CSS/CSS.css">
	
	<script language="javascript">
    	function checkValidate()
		{
			var title = document.form1.txtName;
			var name = document.form1.txtName;
			var content = document.form1.txtContents;
			if(title.value == "")
			{
				alert("留言标题不能为空！");
				return false;
			}
			if(name.value == "")
			{
				alert("留言人姓名不能为空！");
				return false;
			}
			if(content.value == "")
			{
				alert("留言内容不能为空！");
				return false;
			}
			return true;
		}
    </script>
  </head>
  
  <body>
  <div>
    <form name="form1" method="post" action="manage/doAddMessage.jsp">
      <table width="50%" border="0" align="center" cellpadding="0" cellspacing="0" class="border">
        <tr>
          <td colspan="2" align="center" valign="middle" bgcolor="#FF9999" class="td_right"><font size="+3"><strong>添加留言</strong></font></td>
        </tr>
        <tr>
          <td width="22%" height="42" align="right" class="td_bottom">留言标题：</td>
          <td width="78%" class="td_right"><label>
            <input name="txtTitle" type="text" id="textarea" value="" size="22">
          </label></td>
        </tr>
        <tr>
          <td height="42" align="right" class="td_bottom">留言人姓名：</td>
          <td class="td_right"><label>
            <input name="txtName" type="text" id="textarea2" value="" size="22">
          </label></td>
        </tr>
        <tr>
          <td height="120" align="right" class="td_bottom">留言内容：</td>
          <td class="td_right"><label>
            <textarea name="txtContents" id="textarea3" cols="35" rows="6"></textarea>
          </label></td>
        </tr>
        <tr>
          <td height="42">&nbsp;</td>
          <td><label>
            <input type="submit" name="submit" id="submit" value="提交" onClick="return checkValidate()">
          </label>&nbsp;&nbsp;
            <label>
              <input type="reset" name="reset" id="reset" value="重置">&nbsp;&nbsp;&nbsp;
              <a href="index.jsp">返回</a>
          </label></td>
        </tr>
      </table>
    </form>
  </div>
  <br>
  </body>
</html>
