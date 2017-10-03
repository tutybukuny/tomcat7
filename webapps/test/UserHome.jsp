<%@page language="java" import = " java.util.*, java.awt.*, entity.*, dao.*" %>
<%
User user= (User) session.getAttribute("user");
String result = (String) session.getAttribute("result");
Calculator cal = (Calculator) session.getAttribute("cal");
if(cal==null) {
    cal = new Calculator(0, 0);
}
if(user == null){
    response.sendRedirect("Home.jsp?ok=0");
}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
    <HEAD>
        <TITLE>JSP demo test</TITLE>
        <META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
    </HEAD>
    <BODY leftMargin=0 topMargin=0>
        <div>
            Welcome <%= user.getUsername() %>!<BR>
            <FORM method="POST" name="tinhtoan" action="doCal.jsp">
                <TABLE>
                    <tr>
                        <td>a: </td>
                        <td><input type="text" name="firstnumber" value="<%=cal.getFirstnumber()%>"/></td>
                    </tr>
                    <tr>
                        <td>b: </td>
                        <td><input type="text" name="secondnumber" value="<%=cal.getSecondnumber()%>"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit"/></td>
                    </tr>
                </TABLE>
            </FORM>
            <% 
                if(result!=null){
            %>
            Result = <%=result%>
            <%
                }
            %>
        </div>
    </BODY>
</HTML>