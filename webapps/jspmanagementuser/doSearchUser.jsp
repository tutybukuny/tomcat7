<%@page language="java" import = " java.util.*, java.awt.*, entity.*, dao.*" %>
<%
    ServerDAO dao = new ServerDAO("sa", "123456");
    User user = dao.getUser((String) request.getParameter("username"));
    session.setAttribute("user", user);
    response.sendRedirect("showUser.jsp");
%>