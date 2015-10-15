<%-- 
    Document   : intofillassign
    Created on : Nov 13, 2014, 12:07:15 PM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@page import="java.sql.*"%>
          <%@page import="java.util.Date"%>
         <%@page import="java.text.DateFormat"%>
         <%@page import="java.text.SimpleDateFormat"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>filling assignment</title>
        <%! String subkey; %>
    </head>
    <body>
        <%
         try
                                               {
                                                   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
Date date = new Date();

                                                   subkey=(String)session.getAttribute("subkey");
                                                   String dating="NOT DONE";
                                                   
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lab","root","root");
                   Statement stmt=con.createStatement();
                   String sno=request.getParameter("sno");
                   String name=request.getParameter("name");
                   String false1="Not Done";
                   int s=stmt.executeUpdate("insert into assign values('"+sno+"','"+name+"','"+false1+"','"+subkey+"','"+dating+"')");
                  
if(s>0)
{
    String m="assignment.jsp?subkey="+subkey;
    response.sendRedirect(m);
          }
                  else {
        out.print("error");
}                         
                   
                   
                   
                   
                   }
                   catch(Exception e)
                   {
                       out.println(e);
                   }
       %>
    </body>
</html>
