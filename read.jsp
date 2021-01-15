<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Utils.DbConnector"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>MJMC01_2019</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--        <link href="style.css" rel="stylesheet" type="text/css" />-->
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script type="text/javascript" src="js/radius.js"></script>

<!--        <link rel="stylesheet" href="css/style3.css" />-->
        <script src="js/jq1.js"></script>
        <script src="js/jq2.js"></script>
<!--        <link rel="stylesheet" href="/resources/demos/style.css" />-->
        <script>
            $(function() {
                $( "#tabs" ).tabs();
            });
        </script>
    
    </head>
    
  <body background="images/bgimg3.jpg">
     <center> <img src="images/title.png" align="middle"/> </center>
                                 <%
    if((request.getParameter("gg")!=null)){
       System.out.println("hhh ::"+request.getParameter("gg"));
       
        out.println("<script> alert('You are not authorized Person to access this file..')</script>");
    }
    %>
        
                          <a href="userHome.jsp">Back</a>
                            <a href="HomePage.jsp">LogOut</a>
                       
                        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                            <center>
                                <h2> File Details</h2>
 
                   <table  style="width:55%;" border="100">
                    <tr  style="font-family:verdana;font-size:12px;">
                        <td height="20"><strong> <center>File Name </center></strong></td></tr>
                <%
                Connection con1 = null;
                String name=null;
                try {
                            con1 = DbConnector.getConnection();
                            Statement st1 = con1.createStatement();
                            String query11 = "select * from upload ";// "+" AND email = '"+mail+"' ";
                            ResultSet rs1 = st1.executeQuery(query11);

                            while (rs1.next()) {

                              name  = rs1.getString("file_name");
                              %>
                             <tr style="font-family:verdana;font-size:12px;"> 
                                 <td> <font color="#804040"><center><%=name%></center></font> </td>
                             
                             <%
                               }
                           }catch (Exception e) {
                                e.printStackTrace();
                               }
                            %>
                
                     <tr>
                         <form action="fileReq" method="post">
                             <td></td>
                             <td><strong>Type File Name:</strong><input type="text" name="getName" style="height: 35px; width: 200px; font-weight: bold;"/>
                                 <input type="submit" value="Request" style="height: 38px; width: 100px; font-weight: bold;"/></td>
                         </form>
                     </tr>
                 </table>
</center>
   <br/><br/><br/><br/><br/> <br/><br/>  <br/><br/><br/> <br/><br/>  <br/><br/><br/> <br/><br/>                    
                         
               
    </body>
</html>
