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

<!--<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />-->
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<!--  <link rel="stylesheet" href="/resources/demos/style.css" />-->
  
  
  
</head>
    
 
<body background="images/bgimg3.jpg">
     <center> <img src="images/title.png" align="middle"/> </center>
    <% 
    String get = request.getParameter("m");
    if(get!=null){
         session.setAttribute("uID", get);
        System.out.println("User ID "+session.getAttribute("uID").toString());
    }
  %>
  

          <a href="Ulogin.jsp">Back</a>
        
     <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
          <center>
              <h2>Enter Secret Key</h2>
          
          <form action="CHK" method="get">
                           
            <input type ="text" name="userid" value ="<%=get%>" readonly/> <br/><br/>             
            <input type ="password" name="key"/>  <br/><br/>            
            <input type ="submit" value="Submit"/>              
         
          </form>
       
     
            </center>
   <br/><br/><br/><br/><br/> <br/><br/><br/><br/><br/>                       
                         
         
</body>
</html>
