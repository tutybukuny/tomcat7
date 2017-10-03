<%-- 
    Document   : return
    Created on : Dec 5, 2016, 10:05:38 PM
    Author     : tutyb_000
--%>

<%@page import="Model.Motor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Borrow"%>
<%
    ArrayList<Borrow> borrows = (ArrayList) session.getAttribute("borrows");
    ArrayList<Borrow> selectedBorrows = new ArrayList<Borrow>();

    for (int i = 0; i < borrows.size(); i++) {
        String check = request.getParameter("" + i);
        if (check != null && check.equals("on")) {
            selectedBorrows.add(borrows.get(i));
        }
    }

    session.setAttribute("selectedBorrows", selectedBorrows);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function cal() {
                var total = 0;
                for (var i = 0; i <<%=selectedBorrows.size()%>; i++) {
                    var start = parseFloat(document.getElementById('start' + i).innerHTML);
                    var end = parseFloat(document.getElementById('end' + i).value);
                    var price = parseFloat(document.getElementById('price' + i).innerHTML);
                    var penalty = parseFloat(document.getElementById('penalty' + i).value);
                    console.log(start + " " + end + " " + price + " " + penalty);

                    var totalprice = document.getElementById('totalprice' + i);

                    var c = (end - start) * price + penalty;
                    
                    if(end === 0) c = '';
                    
                    totalprice.innerHTML = c;
                    total += c;
                }

                document.getElementById('totalCost').innerHTML = 'Total Cost = ' + total;
            }
        </script>
    </head>
    <body>
        <form method="POST" action="doReturn.jsp">
            <table border="1" cellspacing="0" cellpadding="10">
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Type</td>
                    <td>Mark</td>
                    <td>Description</td>
                    <td>Start Date</td>
                    <td>End Date</td>
                    <td>Price</td>
                    <td>Penalty</td>
                    <td>Total price</td>
                </tr>
                <%
                    for (int i = 0; i < selectedBorrows.size(); i++) {
                        Borrow borrow = selectedBorrows.get(i);
                        Motor motor = selectedBorrows.get(i).getMotor();
                %>
                <tr>
                    <td><%=motor.getId()%></td>
                    <td><%=motor.getName()%></td>
                    <td><%=motor.getType()%></td>
                    <td><%=motor.getMark()%></td>
                    <td><%=motor.getDescription()%></td>
                    <td id="start<%=i%>"><%=borrow.getStartDate()%></td>
                    <td><input type="text" name="endDate<%=i%>" onkeyup="cal()" value="0" id="end<%=i%>"/></td>
                    <td id="price<%=i%>"><%=borrow.getPrice()%></td>
                    <td><input type="text" name="penalty<%=i%>" onkeyup="cal()" value="0" id="penalty<%=i%>"/></td>
                    <td id="totalprice<%=i%>"></td>
                </tr>
                <%
                    }
                %>
            </table>
            <h1 id="totalCost">Total cost = 0</h1>
            <input type="submit"/>
        </form>
    </body>
</html>
