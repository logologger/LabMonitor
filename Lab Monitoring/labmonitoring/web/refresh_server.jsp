<%-- 
    Document   : refresh_server
    Created on : Feb 19, 2015, 1:34:48 AM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Server</title>
        <%@page import="java.io.*"%>
        <script>
            setTimeout("location.reload(true);",1000);
           </script>
    </head>
    <body>
   
        <%
            InputStreamReader reader=new InputStreamReader(new FileInputStream("code"));
            BufferedReader in=new BufferedReader(reader);
            String s;
            while((s=in.readLine())!=null)
            out.print(s);
            %>
    
    </body>
</html>
