<%@page import="java.sql.ResultSet"%>
<%@page import="Utils.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
<!--  <link rel="stylesheet" href="/resources/demos/style.css" />-->
  
  
<!--  	<link rel="stylesheet" type="text/css" href="./css/style2.css">-->

             <script language="JavaScript">
            function valid() {
                var1 = document.f.name.value;
                var2 = document.f.password.value;
                var3 = document.f.email.value;
                var4 = document.f.phone.value;
                var5 = document.f.place.value;
                
                 if (var1 == "")
                {
                    alert("Enter Your Name");
                    document.f.name.value;
                    return false;
                }
                 if (var2 == "")
                {
                    alert("Enter Your Password");
                    document.f.password.value;
                    return false;
                }
                 if (var3 == "")
                {
                    alert("Enter Your email");
                    document.f.email.value;
                    return false;
                }
                
                   if (var3.indexOf("@", 0) < 0)
                {
                    alert("Please enter a valid e-mail address.");
                    
                    return false;
                }
                if (var3.indexOf(".", 0) < 0)
                {
                    alert("Please enter a valid e-mail address.");
                  
                    return false;
                }
                
                 if (var4 == "")
                {
                    alert("Enter Your phone");
                    document.f.phone.value;
                    return false;
                }
                 if (!/^[0-9]{10}$/.test(var4)) {
                    alert("Please input exactly 10 numbers!");
                    return false;
                }
                
                 if (var5 == "")
                {
                    alert("Enter Your place");
                    document.f.place.value;
                    return false;
                }
                
              }
        </script>
</head>
    
 
<body background="images/bgimg3.jpg">
     <!-- <center> <img src="images/title.png" align="middle"/> </center> -->
  
  

      <a href="HomePage.jsp">Home</a>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
      <center>   
      <h1>User Registration</h1>
   <form name="f" action="mailAction" method="post" onSubmit="return valid();">
            Name  <input id="name" type="text" name="name" value="" /> <br/><br/>
            &nbsp; &nbsp; &nbsp;  PassWord <input id="password" type="password" name="password" value="" /><br/><br/>
            Email  <input id="email" type="text" name="email" value="" /><br/><br/>
           Domain <select id="keys" name="domain" onchange="loadXMLDoc()"> 
                                        <option value="-1">-Select-</option>

                                        <%
                                            String sql1 = "select * from domain";
                                            System.out.println(";;;;;;;;;;;;;;;" + sql1);
                                            PreparedStatement pst1 = null;
                                            Connection conn1 = null;
                                            try {
                                                conn1 = DbConnector.getConnection();
                                                pst1 = conn1.prepareStatement(sql1);
                                                ResultSet rs1 = pst1.executeQuery();
                                                while (rs1.next()) {%>
                                        <option value="<%=rs1.getString("domain_name")%>"><%=rs1.getString("domain_name")%></option>
                                        <%}
                                            } catch (Exception e) {
                                            }%>
                                    </select> <br/><br/>
               Sub Domain<select id="keys" name="subDomain"  onchange="loadXMLDoc()"> 
                                        <option value="-1">-Select-</option>

                                        <%
                                            String sql2 = "select * from sub_domain";
                                            System.out.println(";;;;;;;;;;;;;;;" + sql2);
                                            PreparedStatement pst2 = null;
                                            Connection conn2 = null;
                                            try {
                                                conn2 = DbConnector.getConnection();
                                                pst2 = conn2.prepareStatement(sql2);
                                                ResultSet rs2 = pst2.executeQuery();
                                                while (rs2.next()) {%>
                                        <option value="<%=rs2.getString("subdomain_name")%>"><%=rs2.getString("subdomain_name")%></option>
                                        <%}
                                            } catch (Exception e) {
                                            }%>
                                    </select><br/><br/>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="submit" value="Submit"/> <input type="reset" value="Reset"/>      
           
                
            </form></center> 
 <br/><br/><br/><br/><br/>                       
                         
        
		


           
</body>
</html>
