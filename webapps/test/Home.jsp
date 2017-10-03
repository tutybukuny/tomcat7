<%@page language="java" import = " java.util.*, java.awt.*, entity.*, dao.*" %>
<% String msg = request.getParameter("ok"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>JSP demo test</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
</HEAD>
<BODY leftMargin=0 topMargin=0>
<table border="0" cellpadding="0" cellspacing="0" >
<tr>
<td width="100%" height="133">&nbsp;
<form method="POST" name = "Dangnhap" action="doLogin.jsp" >
<p align="left">Username:
<input type="text" name="username" size="12"></p>
<p align="left">Password:
<input type="password" name="password" size="12"></p>
<p align="left"> <input type="submit" value="Submit" name="B1">
<input type="reset" value="Reset" name="B2"></p>
</form>
<p></td> </tr> </table>
<% if((msg!=null)&&(msg.equals("0"))){ %>
<SCRIPT language=JavaScript>
alert ("Password ban nhap khong dung. Nhap lai!");
</SCRIPT>
<p align="center"></p>
</BODY>
<%} %>
</HTML>