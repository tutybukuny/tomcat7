<%-- 
    Document   : doReturn
    Created on : Dec 5, 2016, 10:39:27 PM
    Author     : tutyb_000
--%>

<%@page import="Control.DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Borrow"%>
<%
    DAO dao = new DAO();
    ArrayList<Borrow> borrows = (ArrayList) session.getAttribute("selectedBorrows");
    for (int i = 0; i < borrows.size(); i++) {
        Borrow borrow = borrows.get(i);
        int endDate = Integer.parseInt((String) request.getParameter("endDate" + i));
        float penalty = Float.parseFloat((String) request.getParameter("penalty" + i));
        borrow.setEndDate(endDate);
        borrow.setPenalty(penalty);
        dao.updateBorrow(borrow);
    }
    
    response.sendRedirect("index.jsp");
%>
