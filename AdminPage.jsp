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
     <!--<center> <img src="images/title.png" align="middle"/></center>-->
    <% if(request.getParameter("m")!=null){
        session.setAttribute("adminUid", request.getParameter("m").toString());
        System.out.println(request.getParameter("m").toString());
    }
  %>
  

       <a href="AdminPage.jsp">Home</a>&nbsp;&nbsp;
    <a href="HomePage.jsp">LogOut</a>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <center>
       <h3> <marquee scrollamount="5" width="40">&lt;&lt;&lt;</marquee>WELCOME !!!<marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;</marquee></h3>
              
<pre><h2> 
  &nbsp;&nbsp;&nbsp;&nbsp;<a href="addServer.jsp">Add MCC Server</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ServerDetails.jsp">MCC Server Details</a><br/><br/><br/>

 &nbsp; <a href="adDataOwner.jsp">Add Data Owner</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="onwerDetails.jsp">Data Owner Details</a><br/><br/><br/>
 <!--  &nbsp;&nbsp;&nbsp;&nbsp;<a href="onwerDetails.jsp">Data Owner Detail</a> -->
<a href="Domain.jsp">Add Domain</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="subDomain.jsp">Add Sub Domain</a><br/><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aChangePass.jsp">Change Password</a><br/><br/>
</h2>
</pre>  </center>


</body>
</html>
