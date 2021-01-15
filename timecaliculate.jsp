
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Utils.DbConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
        
        <%
                                    String host = null, name = null, pass = null, mail = null, pdfass = null, mobile = null, gen = null, blood = null, dis = null, zip = null;
                                    Connection con = null;
                                    // String names = request.getParameter("name");
                                    // String mails = request.getParameter("mail");
                                    // String passs = request.getParameter("password");
                                    try {
                                        con = DbConnector.getConnection();
                                        Statement st = con.createStatement();
                                        String query1 = "select * from adowner";//where name = '"+names+"'";// "+" AND email = '"+mail+"' ";
                                        ResultSet rs = st.executeQuery(query1);

                                        while (rs.next()) {

                                            host = rs.getString("name");
                                            name = rs.getString("pass");
                                            pass = rs.getString("mail");

                                %>
                                <tr style="font-family:verdana;font-size:12px;"> 
                                    <td> <font color="green"><%=host%></font> </td>
                                    <td> <font color="#804040"><%=name%></font> </td>
                                    <td> <font color="red"><%=pass%></font> </td>
                                    <td><a href="ownerEdit.jsp?<%=host%>">Edit</a></td>
                                    

                                    <%


                                            }


                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }


                                    %>
    </body>
</html>
