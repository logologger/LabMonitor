<%-- 
    Document   : logout
    Created on : Jan 17, 2015, 4:53:49 PM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logging out...</title>
    </head>
    <body>
        <%
       session.removeAttribute("userid");
       response.sendRedirect("index.html");
       %>
    </body>
</html>
