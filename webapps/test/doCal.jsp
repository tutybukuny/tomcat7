<%@page language="java" import = "java.util.*, java.awt.*, entity.*, dao.*, Control.*"%>
<jsp:useBean id="calculator" class="entity.Calculator" scope="session"/>
<jsp:setProperty name="calculator" property="firstnumber"/>
<jsp:setProperty name="calculator" property="secondnumber"/>
<%
    CalculatorCtr cc = new CalculatorCtr();
    String result = cc.add(calculator);
    session.setAttribute("result", result);
    session.setAttribute("cal", calculator);
    response.sendRedirect("UserHome.jsp");
%>