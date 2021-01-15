/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actionS;

import Utils.DbConnector;
import java.io.IOException;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
        import javax.servlet.http.*;

/**
 *
 *
 */
public class CHK extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        
        try {
            String name=null;
          
            Connection con = DbConnector.getConnection();
            Statement st = con.createStatement();
            
            
            
            
            
            ResultSet rs = st.executeQuery("select * from userreg where name ='"+request.getParameter("userid") +"'");
            if(rs.next()){
                
                name=rs.getString(1);
                
                
         HttpSession h=request.getSession();
             h.setAttribute("name", name);
                
                
              if(request.getParameter("key").equals(rs.getString("key"))){
                  
                  
                  
                  
               
                  
                  java.util.Date dt=new java.util.Date();
        
        
                  
                  
                  PreparedStatement ps=con.prepareStatement("UPDATE userreg SET DATE='"+dt+"' where name ='"+request.getParameter("userid") +"'");
                   ps.executeUpdate();
                   
                   
                   
                   
                   
                  response.sendRedirect("userHome.jsp");
            
                  
                  
                  
                  
                  
                  
              } 
              else{
                  
                  response.sendRedirect("Ulogin.jsp?pp=check your key");
              }
            }
            else{
                response.sendRedirect("Ulogin.jsp?pp=check your key");
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(CHK.class.getName()).log(Level.SEVERE, null, ex);
        } finally {            
         /*   out.close();*/
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
