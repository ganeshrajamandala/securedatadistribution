<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Utils.DbConnector"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>MJMC01_2019</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--<link href="style.css" rel="stylesheet" type="text/css" />-->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
</head>
<body background="images/bgimg3.jpg">
     <center> <img src="images/title.png" align="middle"/> </center>
    <%
    String U =  request.getParameter("m");
    if(U!=null){
        session.setAttribute("uID", U);
        System.out.println("User ID "+session.getAttribute("uID").toString());
    }
   %>

         <a href="userHome.jsp">Back</a>
         <a href="HomePage.jsp">LogOut</a>
         <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
       
         <center>
          <h2>User Profile</h2>
          
      
              <%
              String name=null,pass=null,email=null,mob=null,addr=null;
                Connection c = DbConnector.getConnection();
                Statement s = c.createStatement();
                ResultSet r = s.executeQuery("select * from userreg where name = '"+session.getAttribute("uID").toString() +"'  ");
                if (r.next()){
                   name = r.getString("name"); 
                   pass = r.getString("pass"); 
                   email = r.getString("mail"); 
                   mob = r.getString("domain"); 
                   addr = r.getString("sub_domain"); 
                }                                               
              
              %>
              <form action="UserpUpdate" method="post">
             Name  <input type="text" name="name"  value="<%=name%>"READONLY/> <br/><br/>
             Password  <input type="text" name="pass" value="<%=pass%>" /><br/><br/>
             Mail Id <input type="text" name="mail" value="<%=email%>"/><br/><br/>
             Domain <input type="text" name="dom" value="<%=mob%>"/><br/><br/>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sub Domain <input type="text" name="subd" value="<%=addr%>"/><br/><br/>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="submit"  value="UPDATE"/>
             
              </form></center>
     <br/><br/><br/><br/><br/> <br/><br/>                    
                         

</body>
</html>
