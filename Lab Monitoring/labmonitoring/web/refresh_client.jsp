<%-- 
    Document   : refresh
    Created on : Feb 18, 2015, 2:14:30 PM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@page import="java.io.*;" %>
        <%!String code="";%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auto save data</title>
        <script>
        /*    alert ("don");
        function refresh () {

    setTimeout(function () {
        location.reload()
    }, 100);
} */
</script>
<script type="text/JavaScript">
    // setTimeout("location.reload(true);",7000);
    
var textarea = document.getElementById("test");

textarea.onfocus = function() {
    moveCaretToEnd(textarea);

    // Work around Chrome's little problem
    window.setTimeout(function() {
        moveCaretToEnd(textarea);
    }, 1);
};



window.onload = function() {
var auto_refresh = setInterval(function() {
submitform();
}, 1000);
// Form submit function
function submitform() {
alert('rajat');
document.getElementById("fo").submit();

}
// To validate form fields before submission

};

</script>
       
    </head>
    <body>
        <%
            code=request.getParameter("code");
            out.print(code);
            try
            {
                
            File file=new File("code");
            if(file.exists())
            {
            BufferedWriter bw=new BufferedWriter(new FileWriter(file));
            bw.write(code);
            bw.close();
            
            }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
            %>
            <form id="fo" action="refresh_client.jsp" method="post">
                <input type="text"  autofocus id="test" name="code" value="<%=code%>"   style="width:200px;height:200px;" onfocus="this.value=this.value;" onchange="document.fo.submit();">
                <input type="submit" name="submit12" id="submit12">

       
       
    </form>
    </body>
</html>
