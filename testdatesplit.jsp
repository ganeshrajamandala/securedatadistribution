
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
    <body>
        <h1>Hello World!</h1>
        
        
        <%=new java.util.Date()%>
        
     <%
     	String date="Tue Jan 01 03:27:43 IST 2008";
        String [] d=date.split(" ");
        
        
        Calendar beginTime=Calendar.getInstance();
        
 out.print(beginTime.set(Integer.ParseInt(d[0])));
out.print(beginTime.set(Integer.ParseInt(d[1])));
out.print(beginTime.set(Integer.ParseInt(d[2})));
out.print(beginTime.set(Integer.ParseInt(d[3])));
out.print(beginTime.set(Integer.ParseInt(d[4])));
out.print(beginTime.set(Integer.ParseInt(d[5]))); 
        
 %>
        
        
    </body>
</html>
