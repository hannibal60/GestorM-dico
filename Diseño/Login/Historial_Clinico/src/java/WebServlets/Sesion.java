/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jorge
 */
@WebServlet(name = "Sesion", urlPatterns = {"/Sesion"})
public class Sesion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    
    protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("userInput");
        String pwd = request.getParameter("passInput");

        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Connection con = Conexion.getConection();
            ps = con.prepareStatement("SELECT * FROM usuarios WHERE correo=? AND password=?");
            ps.setString(1, request.getParameter("userInput"));
            ps.setString(2, request.getParameter("passInput"));
            rs = ps.executeQuery();
            if(rs != null && rs.next()){
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                //setting session to expiry in 30 mins
                session.setMaxInactiveInterval(30*60);
                Cookie userName = new Cookie("user", user);
                response.addCookie(userName);
                //Get the encoded URL string
                String encodedURL = response.encodeRedirectURL("Historial.jsp");//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                response.sendRedirect(encodedURL);
            }else{
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.html");
                PrintWriter out= response.getWriter();
                out.println("<font color=red>Usuario y/o Contraseña incorrecta</font>");
                rd.include(request, response);
            }

            }   catch (ClassNotFoundException ex) {
                Logger.getLogger(Sesion.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(Sesion.class.getName()).log(Level.SEVERE, null, ex);
            }
    }

}
