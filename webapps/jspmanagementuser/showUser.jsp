<%@page language="java" import = " java.util.*, java.awt.*, entity.*, dao.*" %>
<%
    User user = (User) session.getAttribute("user");
%>

<%=user.getUsername()%>