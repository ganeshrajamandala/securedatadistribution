<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Utils.DbConnector"%>
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

<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<!--<link rel="stylesheet" href="/resources/demos/style.css" />-->
 </head>    
 
<body background="images/bgimg3.jpg">
     <center> <img src="images/title.png" align="middle"/> </center>
        <% if (request.getParameter("m") != null) {
                session.setAttribute("adminUid", request.getParameter("m").toString());
                System.out.println(request.getParameter("m").toString());
            }
        %>

        <a href="AdminPage.jsp">Back</a> 
          <a href="HomePage.jsp">LogOut</a>
          <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                          <center> <h3> <marquee scrollamount="5" width="40">&lt;&lt;&lt;</marquee>Sub-Domain Details<marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;</marquee></h3>            
                          
                              <br/><br/>
                                    <form action="addSD" method="post">
                            
                                      Sub Domain Name  <input type="text" name="name"/><br/><br/><br/>
                 <input type="submit" value="Add Sub Domain"/>
                
                </form>
                          </center>
    <br/><br/><br/><br/><br/> <br/><br/><br/><br/><br/>                       
                         
                              
                       
    </body>
</html>
