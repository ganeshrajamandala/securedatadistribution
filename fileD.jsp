
<%@page import="Utils.DbConnector"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>MJMC01_2019</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%
     


 //String us = session.getAttribute("userId").toString();
 //System.out.println(us);
       
              String getf = request.getParameter("uu");
              Class.forName("com.mysql.jdbc.Driver");
              Connection conn = DbConnector.getConnection();
              Statement st = conn.createStatement();
              String qqq = "select * from upload where file_name= '"+getf+"' ";
              String qqq1="SELECT file_data , AES_DECRYPT(file_data,'mykeystring') FROM upload WHERE file_name= '"+getf+"' "; 
              String qqq3="SELECT AES_DECRYPT(file_data,'mykeystring') AS decrypted_password FROM upload WHERE file_name= '"+getf+"'"; 
              ResultSet rs = st.executeQuery(qqq3);
              if(rs.next()){
		Blob b = rs.getBlob("decrypted_password");
                //Blob b = rs.getBlob("AES_DECRYPT(file_data,'mykeystring')");
                  //Blob b1=rs.getBlob(2);
                //System.out.println(b);
		if(b != null)
		{
                   // System.out.println("Fdsf");
			String fileName = "image";
			byte[] ba = b.getBytes(1, (int)b.length());
			 response.setContentType("image/jpg");
			response.setHeader("Content-Disposition","attachment; filename=\""+getf+"\"");
			
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			//session.removeAttribute("document1");
		}
		else
		{
			response.sendRedirect("down.jsp");
		}
                               }
%>

</body>
</html>