<%@page language="java" import = "java.util.*, java.awt.*, entity.*, dao.*"%>
<jsp:useBean id="user" class="entity.User" scope="request"/>
<jsp:setProperty name="user" property="*"/>
<%
session.setAttribute("user",user);
UserDAO userDAO = new UserDAO("root","");
if(userDAO.checkLogin(user)){
response.sendRedirect("UserHome.jsp");
}
else{
response.sendRedirect("Home.jsp?ok=0");
}
%>