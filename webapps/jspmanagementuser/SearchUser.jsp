<%@page language="java" import = " java.util.*, java.awt.*, entity.*, dao.*" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8"/>
    </head>
    <body>
        <div>
            <form method="POST" action="doSearchUser.jsp">
                <input type="text" name="username"/>
                <input type="submit"/>
            </form>
        </div>
    </body>
</html>