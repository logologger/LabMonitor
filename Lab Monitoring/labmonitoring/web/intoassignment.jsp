<%-- 
    Document   : intoassignment
    Created on : Nov 13, 2014, 1:13:44 PM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@page import="java.sql.*"%>
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assigning..Please Wait</title>
    </head>
    <body>
        <%
            
            String current=request.getParameter("curr_exp_no");
            session.setAttribute("curr_exp_no", current);
           // out.print(java.sql.Timestamp(new java.util.Date().getTime));
        
// here what i have to do put the database entry to currrent experiment ...  
// fill the database table current_exp with current exp_no along with subkey 
//When the experiment gets over then just delete the corresponding entry from the database
//problem here is that if in 2 sections are doing experiment that too on same sub...then both need to do the same experiment..will come to solution soon !!
// student portal when will login is asked to 

    String subkey=(String)session.getAttribute("subkey");  
     try
                                               {
                                                  
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lab","root","root");
                   Statement stmt=con.createStatement();
                   session.setAttribute("current_exp", current);
                
                
                   int s=stmt.executeUpdate("insert into current_exp values('"+current+"','"+subkey+"')");
                  
if(s>0)
{
    
    response.sendRedirect("monitor_teacher.jsp");
          }
                  else {
        out.print("error");
        %>
        
        alert('something Fishy going on ....Please contact the maker!');
<%
        }                         
                   
                   
                   
                   
                   }
                   catch(Exception e)
                   {
                       
                   }
%>

 </body>
   
</html>
