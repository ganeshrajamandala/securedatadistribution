

<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.concurrent.ExecutionException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

        <%@page import="javax.servlet.http.*"%>
            <%@page import="Utils.DbConnector"%>
                <%@page import="javax.servlet.http.*"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
    
    <style type="text/css">
        meter{
            
           width: 500px;
           height: 50px;
           alignment-adjust: central;
            
        } 
        
        body{
            
            background-color: rgba(3, 169, 244, 0.38);

        }
        
        
        
    </style>
    
    
    
    
    
    
    
    
    
    
    
    <body style="background-color: #D41010B3;" >
        <%
            try{
            String per="per";
            
            String login=null;
            ResultSet rs=null;
         PreparedStatement ps=null,ps1=null,ps2=null,ps3=null,ps6=null;
            
            HttpSession h=request.getSession();
           String name=(String)h.getAttribute("name");
           
          /* PrintWriter out=response.getWriter();*/
           out.print(name);
           
           
                 Connection con = DbConnector.getConnection();
                 
                 
                    
    ps2=con.prepareStatement("select date from userreg where name='"+name+"' ");
    
   rs=ps2.executeQuery();
   while(rs.next()){
       
       login=rs.getString(1);
       
   }  java.util.Date dt1=new java.util.Date();
   
   String dt=dt1.toString();
                 ps1=con.prepareStatement("insert into performance values(?,?,?,?)");
                 ps1.setString(1,login);
                 ps1.setString(2,per);
                 ps1.setString(3,per);                 
                 ps1.setString(4,name);                 
                 ps1.executeUpdate();                 
               
                 ps=con.prepareStatement("UPDATE performance SET logout='"+dt+"' where name ='"+name+"'");
                 ps.executeUpdate();
    
 
   
              /* String [] lgt=login.split(" ");
                   int lll=Integer.parseInt(lgt[3]);                   
                   out.print(lll);
                   String [] logt=(String)lll.split(":");*/
                   
                   
                   
                   
                   
                   
                     
	    String [] d=dt.split(" ");
	    String s=d[3];
		String e[]=s.split(":");
		String w1=e[0];
		String w2=e[1];
		String w3=e[2];
		int k1=Integer.parseInt(w1);
		int k2=Integer.parseInt(w2);
		int k3=Integer.parseInt(w3);
		
		System.out.println(k1);
		System.out.println(k2);
		System.out.println(k3);


                String [] d1=login.split(" ");
                String s1=d1[3];
		String e1[]=s1.split(":");
		String w11=e1[0];
		String w22=e1[1];
		String w33=e1[2];
		int k11=Integer.parseInt(w11);
		
		int k22=Integer.parseInt(w22);
		int k33=Integer.parseInt(w33);
		
		
		System.out.println(w11);
		System.out.println(w22);
		System.out.println(w33);
		
		
		
		int i1=k1-k11;
		
		int i2=k2-k22;
		int i3=k3-k33;
		System.out.println(i1);
		System.out.println(i2);
		System.out.println(i3);
		
		int i5=i1*60;
		int i6=i5+i2;
		System.out.println(i6);


                ps6=con.prepareStatement("insert into timecomplex (name,timecplx,logintime,logout) values(?,?,?,?)");
		/*ps.setInt(1, id);*/
		ps6.setString(1, name);
		ps6.setInt(2, i6);
		ps6.setString(3, login);
		ps6.setString(4, dt);
		
		
		ps6.executeUpdate();
		 
                   
                   
                   
                   
                   
                   
                   %>
        
        <center><br><br><br>
            <h1>Result Analysis on Time complexity</h1><br><br>
            <meter min="0" max="60" value="<%=i6%>"></meter><br><h1 style="color: blue"><%=i6%>min</h1><br>
        </center>
        <%
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
   
            }catch(Exception e){
                e.printStackTrace();
            }
    
    %>
    
    

    
    
    
    </body>
</html>
