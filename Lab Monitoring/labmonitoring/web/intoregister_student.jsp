<%-- 
    Document   : intoregister_student
    Created on : Mar 6, 2015, 8:39:16 PM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <%@page import="java.sql.*"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registering..</title>
    </head>
    <body>
         <%
        String id=request.getParameter("emailid");
                 String pass=request.getParameter("password");
                 String name=request.getParameter("name");
                
                 try
                                               {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lab","root","root");
                  

                          Statement stmt=con.createStatement();
                  int s=stmt.executeUpdate("insert into student_register values('"+id +"','"+pass+"','"+name+"')");
                 int p=stmt.executeUpdate("insert into student_login values('"+id+"','"+pass+"')");
                  if(s>0 )
                     {
                         
                         
                         
                         response.sendRedirect("student_login_page.jsp");
                          
                         
                  
                    }
                    else
                                               {
                        response.sendRedirect("register_student.jsp");
                        
                    }
                    
                                 }     
                  
                                 
                   
 catch(Exception e)
                 {
     out.print(e);
                         }
                 %>
    </body>
</html>
