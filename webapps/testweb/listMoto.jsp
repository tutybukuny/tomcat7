<%-- 
    Document   : listMoto
    Created on : Dec 5, 2016, 9:59:13 PM
    Author     : tutyb_000
--%>

<%@page import="Model.Borrow"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Motor"%>
<%@page import="Control.DAO"%>
<%
    int id = Integer.parseInt((String) request.getParameter("id"));
    DAO dao = new DAO();
    ArrayList<Borrow> borrows = dao.getBorrowByIdClient(id);
    session.setAttribute("borrows", borrows);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="return.jsp">
            <table border="1" cellspacing="0" cellpadding="10">
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Type</td>
                    <td>Mark</td>
                    <td>Description</td>
                    <td>Select</td>
                </tr>
                <%
                    for (int i = 0; i < borrows.size(); i++) {
                        Motor motor = borrows.get(i).getMotor();
                %>
                <tr>
                    <td><%=motor.getId()%></td>
                    <td><%=motor.getName()%></td>
                    <td><%=motor.getType()%></td>
                    <td><%=motor.getMark()%></td>
                    <td><%=motor.getDescription()%></td>
                    <td><input type="checkbox" name="<%=i%>"</td>
                </tr>
                <%
                    }
                %>
            </table>
            <input type="submit"/>
        </form>
    </body>
</html>
