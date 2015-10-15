
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.io.*"%>
      <%
            
            
            try
            {
            File folder=new File("/var/www/html/real/answers/");
		File listoffiles[]=folder.listFiles();

                out.print("[");
		for(int i=0;i<(listoffiles.length);i++)
		{
			File file=listoffiles[i];
			if(file.isFile() && file.getName().endsWith(".txt"))
			{
			//	String content=FileUtils.readFileToString(file);
				out.print("{\"answer\":\"");
				InputStreamReader reader=new InputStreamReader(new FileInputStream("/var/www/html/real/answers/"+file.getName()));
				BufferedReader br=new BufferedReader(reader);
                                String s;
				while((s=br.readLine())!=null)
				{   
                                    String s1="";
                                    for(int p=0;p<s.length();p++)
                                    {
                                        char ch=s.charAt(p);
                                        if(ch=='"')
                                        {
                                            s1=s1+"\\\"";
                                            
                                        }
                                        else
                                        {
                                             if(ch=='\n')
                                        {
                                            s1=s1+"<\br>";
                                        }
                                             else
                                            s1=s1+ch;
                                        }
                                        
                                       
                                        
                                    }
                                    s1=s1+"<br>";
                                    if(s1!=null)
					out.print(s1+"");
                                    
                                }
                                out.print("\",\"name\":\""+file.getName().substring(0,file.getName().length()-4)+"\"");
                                out.print("}");
                                if(i<(listoffiles.length-1))
                                    out.print(",");

			}

		}
                out.print("]");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
           // out.print("[{\"answer\":\"rajat\",\"name\":\"rajat\"}]");
            
        %>
          <%
              /*
    JSONObject obj=new JSONObject();
    obj.put("name","foo");
    obj.put("num",new Integer(100));
    obj.put("balance",new Double(1000.21));
    obj.put("is_vip",new Boolean(true));
    obj.put("nickname",null);
    out.print(obj);
    out.flush();
                      */
  %>
  
