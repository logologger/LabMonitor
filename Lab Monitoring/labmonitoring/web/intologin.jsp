<%-- 
    Document   : intologin
    Created on : Nov 12, 2014, 2:08:51 PM
    Author     : rajat
--%>


<!DOCTYPE html>
<html>
    <head>
        <%@page import="java.sql.*"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checking.....</title>
    </head>
    <body>
        <%
        String id=request.getParameter("empid");
                 String pass=request.getParameter("password");
                
                 try
                                               {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lab","root","root");
                  

                          Statement stmt=con.createStatement();
                         
                    ResultSet rs=stmt.executeQuery("select * from faculty where loginid='"+id+"' and password='"+pass+"'");
                    if(rs.next() )
                     {
                         
                         
                         session.setAttribute("userid", id);
                         response.sendRedirect("selectsemsub.jsp");
                          
                         
                  
                    }
                    else
                                               {
                        response.sendRedirect("login.jsp");
                        
                    }
                    
                                 }     
                  
                                 
                   
 catch(Exception e)
                 {
     out.print(e);
                         }
                 %>
    </body>
</html>
