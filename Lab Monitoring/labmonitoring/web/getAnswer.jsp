<%-- 
    Document   : getAnswer
    Created on : Mar 7, 2015, 1:03:38 AM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@page import="java.io.*;" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        
        <%
            try
            {
      // String name=request.getParameter("name");
            String name=(String)session.getAttribute("student_name");
        //    out.print(name);
            //String code=(String)session.getAttribute("code");
         //   out.print(code);
            
            String code=request.getParameter("answer");
            //out.print(code);
            String  strPath = name+".txt";
 File strFile = new File("/var/www/html/real/answers/"+strPath);
 
 boolean fileCreated = strFile.createNewFile();
 //File appending
 Writer objWriter = new BufferedWriter(new FileWriter(strFile));
 objWriter.write(code);
 objWriter.flush();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
 //objWriter.close()
            %>
    </body>
</html>
