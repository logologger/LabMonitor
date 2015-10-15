<%-- 
    Document   : experiment_current
    Created on : Jan 14, 2015, 4:22:12 PM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
         <%@page import="java.util.Date"%>
         <%@page import="java.text.DateFormat"%>
         <%@page import="java.text.SimpleDateFormat"%>
        <%@page import="java.sql.*"%>
    </head>
    <body>
        <p>
            Students have 2 hours to complete the experiment .
            Marks awarded will be decided by the submissions done by the students and implementation of the program.
            Students are advised not to cheat and talk during their implementation of experiment.
            The following page will show the list of students you are doing the experiment .Along with their submissions.
             show the student list here ...
             Teacher will also have a button to end the Experiment and a button to show the answer of the Experiment.
             He will also provided the facility to mail the solution along with the Question.
             
             
        </p>
        <% 

     try
                                               {
                                                     DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
Date date = new Date();
String dating="02/02/2015";
                                                   
                                                      String subkey=(String)session.getAttribute("subkey");  
    String current=(String)session.getAttribute("current_exp");
    String y="Done";
    //out.println("subkey"+subkey);
   // out.println("current"+current);
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lab","root","root");
                   Statement stmt=con.createStatement();
                  // String up="update assign set status="+y+"where subkey="+subkey+"and sno="+current;
                   int s=stmt.executeUpdate("update assign set status=' "+y+" ',date='"+dating+"' where subkey='"+subkey+"' and sno='"+current+"'");
               
                   if(s>0)
                   {
                       //out.println("Success");
                   }
                   else
                   {
                      // out.println("Failed");
                   }
                                               }
     catch(Exception e)
     {
         out.println(e);
         
     }
     
      %>
      
      <%
     String section=(String)session.getAttribute("section");
try
{
         Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lab","root","root");
                   Statement stmt=con.createStatement();
                     ResultSet rs=stmt.executeQuery("select * from student where section='"+section+"'");
                    while(rs.next())
                    {
                        out.println(rs.getString(1));
                    }
 
}
catch(Exception e)
{
}
     %>
    </body>
</html>
