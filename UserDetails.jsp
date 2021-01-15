<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Utils.DbConnector"%>
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

        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<!--        <link rel="stylesheet" href="/resources/demos/style.css" />-->



    </head>


    <body background="images/bgimg3.jpg">
     <center> <img src="images/title.png" align="middle"/> </center>
        <% if (request.getParameter("m") != null) {
                session.setAttribute("adminUid", request.getParameter("m").toString());
                System.out.println(request.getParameter("m").toString());
            }
        %>

        
                           <a href="ownerHome.jsp">Back</a>
       <a href="HomePage.jsp">LogOut</a>
                       <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                            <center>
                            <h2>User Details</h2>
                        
                            <table  style="width:50%;" border="10">
                                <tr  style="font-family:verdana;font-size:12px;">

                                    <td height="36">Name</td>
                                    <td>Password</td>
                                    <td>Domain</td>
                                    <td>Sub Domain</td>
                                    <td>E-Mail</td>
                                </tr>
                                <%
                                    String name = null, pass = null, domain = null,sub_domain = null, mail = null, mobile = null, gen = null, blood = null, dis = null, zip = null;
                                    Connection con = null;
                                    // String names = request.getParameter("name");
                                    // String mails = request.getParameter("mail");
                                    // String passs = request.getParameter("password");
                                    try {
                                        con = DbConnector.getConnection();
                                        Statement st = con.createStatement();
                                        String query1 = "select * from userreg ";//where name = '"+names+"'";// "+" AND email = '"+mail+"' ";
                                        ResultSet rs = st.executeQuery(query1);

                                        while (rs.next()) {

                                            name = rs.getString("name");
                                            pass = rs.getString("pass");
                                            domain = rs.getString("domain");
                                            sub_domain = rs.getString("sub_domain");
                                            mail = rs.getString("mail");

                                %>
                                <tr style="font-family:verdana;font-size:12px;"> 
                                    <td> <font color="green"><%=name%></font> </td>
                                    <td> <font color="#804040"><%=pass%></font> </td>
                                    <td> <font color="#804040"><%=domain%></font> </td>
                                    <td> <font color="#804040"><%=sub_domain%></font> </td>
                                    <td> <font color="#804040"><%=mail%></font> </td>

                                    <%


                                            }


                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }


                                    %>
                            </table>
                       </center>
    <br/><br/><br/><br/><br/> <br/><br/>  <br/><br/><br/>                    
                         
                              
                           
    </body>
</html>

                            