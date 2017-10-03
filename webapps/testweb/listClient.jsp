<%-- 
    Document   : listClient
    Created on : Dec 5, 2016, 9:40:13 PM
    Author     : tutyb_000
--%>

<%@page import="Model.Client, Control.DAO, java.util.*"%>
<%
    String name = (String) request.getParameter("name");
    DAO dao = new DAO();
    ArrayList<Client> clients = dao.getClientsByName(name);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" cellspacing="0" cellpadding="10">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Id Card Number</td>
                <td>Address</td>
                <td>Phone</td>
                <td>Email</td>
                <td>Description</td>
                <td>Select</td>
            </tr>
            <%
                for (Client client : clients) {
            %>
            <tr>
                <td><%=client.getId()%></td>
                <td><%=client.getName()%></td>
                <td><%=client.getIdCardNumber()%></td>
                <td><%=client.getAddress()%></td>
                <td><%=client.getPhone()%></td>
                <td><%=client.getEmail()%></td>
                <td><%=client.getDescription()%></td>
                <td><a href="listMoto.jsp?id=<%=client.getId()%>">Select</a></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
