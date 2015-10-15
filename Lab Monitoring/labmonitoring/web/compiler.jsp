<%-- u
    Document   : compiler
    Created on : Feb 6, 2015, 2:38:59 PM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student</title>
           <%!String lang="gcc",name="", output="",input="",code="Write your code Here ", strPath="",strPath1=""; %>
        <%@page import="java.sql.*"%>
          <%@page import="java.io.*"%>
       
          <link rel="stylesheet" href="CSS/uu.css">
          <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
       

<link rel="stylesheet" href="CSS/codemirror.css">
<script src="JS/codemirror.js"></script>
<script language="JavaScript">
    
function disableCtrlKeyCombination(e)
{
	//list all CTRL + key combinations you want to disable
	var forbiddenKeys = new Array('a', 'n', 'c', 'x', 'v', 'j');
	var key;
	var isCtrl;

	if(window.event)
	{
		key = window.event.keyCode;     //IE
		if(window.event.ctrlKey)
                        isCtrl = true;
                else
                        isCtrl = false;
	}
	else
	{
		key = e.which;     //firefox
		if(e.ctrlKey)
			isCtrl = true;
		else
			isCtrl = false;
	}

	//if ctrl is pressed check if other key is in forbidenKeys array
	if(isCtrl)
	{
		for(i=0; i<forbiddenkeys .length; i++)
		{
			//case-insensitive comparation
			if(forbiddenKeys[i].toLowerCase() == String.fromCharCode(key).toLowerCase())
			{
				alert('Key combination CTRL + '
					+String.fromCharCode(key)
					+' has been disabled.');
				return false;
			}
		}
	}
	return true;
}

</script>
<script src="JS/clike.js"></script>
<style>
		h1
		{
		text-decoration:blink;
		font-family:"ubuntu";
		}
		textarea
		{
			border:5px solid red;
			border-style:groove;
			box-shadow:10px 10px 5px #888888;
			background-color:pink; 
		}
		input
		{
			border:2px solid blue;
			border-radius:25px;
			font-family:"ubuntu";
			font-size:25px;
			background-color:yellow;
			
		}
		h2,h3
		{
		text-decoration:blink;
		font-family:"ubuntu";
		}
	</style>
    </head>
    
    <body>
          <%

              //  name=session.getAttribute("student_name");
             name=(String)session.getAttribute("student_name");
              try
                                               {
                                                  
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lab","root","root");
                   Statement stmt=con.createStatement();
                   ResultSet rs3=stmt.executeQuery("select * from current_exp");
                   String exp_no=null,sub_key=null; 
                   while(rs3.next())
                        
                    {
                         exp_no=rs3.getString(1);
                         sub_key=rs3.getString(2);
                        // out.print(exp_no);
                        
                    }
                    if(exp_no == null && sub_key==null)
                    {
                        %>
    
                 <script>
                     alert('No Experiment have been assigned by the lab instructor');
                     
                     </script>
            <% 
                        
                    }
                    else
                        
                    {
                        %>
                        <h2>
                            Experiment:</h2>
        
        <h3>
                        <%
                        ResultSet rs4=stmt.executeQuery("select name from assign where sno='"+exp_no+"'and subkey='"+sub_key+"'");
                        while(rs4.next())
                        {
                            String experiment_name=rs4.getString(1);
                            out.print(experiment_name);
                        }
                    }
                        
                                               }
              catch(Exception e)
              {
                  out.print(e);
                  //out.print("some error Reported !");
                  e.printStackTrace();
                  
              }
            
             
          //String code=request.getParameter("code");
         // session.setAttribute(code, "code");
             
             
             
          %>
              
             
        </h3>       
    
       
    <%
        
       
        try
        {
         lang=request.getParameter("lang");
        
        code=request.getParameter("code");
        input=request.getParameter("input");
    if(lang.equals("java"))
  strPath = name+".java";
    else
       strPath = name+".c";
    
    
 File strFile = new File(strPath);
 boolean fileCreated = strFile.createNewFile();
 //File appending
 Writer objWriter = new BufferedWriter(new FileWriter(strFile));
 objWriter.write(code);
 objWriter.flush();
 objWriter.close();
 
   strPath1 = "inp";
 File strFile1 = new File(strPath1);
 boolean fileCreated1 = strFile1.createNewFile();
 //File appending
 Writer objWriter1 = new BufferedWriter(new FileWriter(strFile1));
 objWriter1.write(input);
 objWriter1.flush();
 objWriter1.close();
       
                 String s= null;
                String log="";
               output="";
                /* String command[]={"java rajat"};
                ProcessBuilder pb=new ProcessBuilder(command);
                pb.directory(new File("Desktop"));
                Process process=pb.start();
                InputStream is=process.getInputStream();
                InputStreamReader isr=new InputStreamReader(is);
                BufferedReader br=new BufferedReader(isr);
                String line;
                out.print(br.readLine());
                while((line=br.readLine())!=null)
                {
                    out.print("jj"+line);
                }
                
                */
               //change this string to your compilers location
              //    Process p5 = Runtime.getRuntime().exec("cd Desktop
               Process p = Runtime.getRuntime().exec("javac "+strPath);
               if(lang.equals("java"))
               {
                     p = Runtime.getRuntime().exec("javac "+strPath);
               }
               else
               {
                     p = Runtime.getRuntime().exec("gcc "+strPath+" -o "+name);
               }
             //  if(lang=="java")
                       // Process p = Runtime.getRuntime().exec("javac "+strPath);
             
                 //   Process p = Runtime.getRuntime().exec("gcc "+strPath);
                   
             
             //InputStream os1=p1.getInputStream();
             //BufferedReader stdout=new BufferedReader(new InputStreamReader(os1));
       
      // out.print(stdout.readLine());
             BufferedReader stdError = new BufferedReader(new 
                  InputStreamReader(p.getErrorStream()));
             //  BufferedReader stdoutput = new BufferedReader(new 
               //   InputStreamReader(p.getOutputStream()));
             boolean error=false;

             //log+="\n....\n";
             while ((s = stdError.readLine()) != null) {
                 log+=s;
                 error=true;
                 log+="\n";
             }
             if(error==false)
             {
                 log+="";//Do something to indicate that compilation is successful
             //out.print(log+"\n");
                 output+=log+"\n";
                 Process p1=Runtime.getRuntime().exec("java "+name);
               if(lang.equals("java"))
               {
              p1=Runtime.getRuntime().exec("java "+name);
               }
               else
               {
                    p1=Runtime.getRuntime().exec("./"+name);
               }
             p1.waitFor();
             int exitCode=p1.exitValue();
             //out.print(exitCode);
             if(exitCode==0)
             {
             BufferedReader br=new BufferedReader(new InputStreamReader(p1.getInputStream()));
             String outp="";
           // out.print("Output\n"+br.readLine());
             while((outp=br.readLine())!=null)
             {
                 output+=outp;
                 //out.print(outp);
             }
              
             }
             else
             {
                 output+="Runtime Error";
                // out.print("Runtime Error");
             }
             }
             if(error==true)  //done now only
             //out.print(log);
                 output+=log;
            

         } 
        catch (Exception e)
        {
            // e.printStackTrace();
         }
        
        
        %>
        
        
        <form action="compiler.jsp?lang=<%=lang%>" method="post">
          <input type="hidden" value=<%= name %> id="name" name="name"/>
          <textarea id="code" style="width:420px ; height:300px;" name="code" value="Write your code here"  >
<%

    if(code!=null)
    {
    %>
    <%=code%>
    <%
}
    else
{
    
    if(lang.equals("java"))
    {
out.print("//Write your Program here\n");
out.print("class "+name);
out.print("\n{\n");
out.print("public static void main(String args[])throws IOException");
out.print("\n{\n\n\n");
out.print("}\n");

out.print("}");
    }
    else
    {
        out.print("#include<stdio.h>\n");
        out.print("int main()");
        out.print("\n{  // Write your code here \nreturn 0;\n}");
    }
}
%>
                
            
        </textarea>
<h2>Input</h2>
<textarea id="input" style="width:400px;height:150px;" name="input">
    <%
    if(input!=null)
    {
    %>
    <%=input%>
    <%
}
%>
</textarea>
            <input type="submit" name="compile" value="compile"/>
        </form>
       <h2>Output</h2>
    <p> <%
    if(output!=null)
    {
    %>
    <%=output%>
    <%
}
%></p>
    </body>
    <script>
        
     $("#code").on("keyup", function (e)
      {
         
        $.post("getAnswer.jsp",
        {
            name: $("#name").val(),
            answer: e.target.value
        });
    });
      var cEditor = CodeMirror.fromTextArea(document.getElementById("code1"), {
        lineNumbers: true,
        matchBrackets: true,
	theme:"tomorrow-night-eighties",
        mode: "text/x-csrc"
      });
    
    </script>
    <a href="compiler.jsp"></a>
<script>
   

 
     


  </script>
  <div style="height:400px;"><iframe style='overflow:hidden;width:100%;height:100%;' frameborder='0' border='0' src="http://chat.zoho.com/mychat.sas?u=a2bcbec324afcc875547739b0c0e4f1d&chaturl=IDMTA&V=000000-93e170-eeffe6-93e170-IDMTA"></iframe></div>
</html>
