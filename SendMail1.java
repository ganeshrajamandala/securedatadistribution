package actionS;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SendMail
 */
public class SendMail1  extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMail1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
            System.out.println("in servlet");
                    
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	    HttpSession session=request.getSession(false); 
	    String to=(String)session.getAttribute("emailid"); 
	    System.out.println("kishan magic : "+to);
	    //String to=request.getParameter("to");  
	    String subject="Key";  
	    String msg=(String)session.getAttribute("msg");   
	    System.out.println("kishan magic 2 : "+msg);    
	    Mailer.send(to, subject, msg);  
	 
	    out.print("message has been sent successfully");  
	    out.close();  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
