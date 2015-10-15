<%-- 
    Document   : intologin_student
    Created on : Mar 6, 2015, 7:23:57 PM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <%@page import="java.sql.*"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Processing</title>
    </head>
    <body>
         <%
        String id=request.getParameter("empid");
                 String pass=request.getParameter("password");
              //out.print(id+"  "+pass);
                 try
                                               {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lab","root","root");
                  

                          Statement stmt=con.createStatement();
                         
                    ResultSet rs=stmt.executeQuery("select * from student_register where login_id='"+id+"' and password='"+pass+"'");
                    if(rs.next() )
                     {
                         
                         String name=rs.getString("name");
                         session.setAttribute("student_name", name);
                         response.sendRedirect("compiler_language.jsp");
                          
                         
                  
                    }
                    else
                                               {
                                                   
                    //response.sendRedirect("student_login_page.jsp"); 
                                                 %>  
                                                 <script> alert('Wrong UserID or Password');</script>
                                                  <%//  out.print(id+"  "+pass);
                      //  response.sendRedirect("compiler.jsp");    
                    }
                    
                                 }     
                  
                                 
                   
 catch(Exception e)
                 {
     out.print(e);
                         }
                 %>
    </body>
</html>
