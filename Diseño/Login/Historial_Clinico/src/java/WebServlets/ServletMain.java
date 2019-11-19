package WebServlets;

import java.awt.Color;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import javax.swing.JOptionPane;

/**
 * Servlet implementation class ServletMain
 */
@WebServlet(description = "My First Servlet", urlPatterns = { "/ServletMain" , "/ServletMain.do"}, initParams = {@WebInitParam(name="id",value="1"),@WebInitParam(name="name",value="pankaj")})//"/ServletMain")
public class ServletMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String HTML_START="<html><body>";
	public static final String HTML_END="</body></html>";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletMain() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
                    response.sendRedirect("login.html");
                    /*PrintWriter out = response.getWriter();
                    Date date = new Date(0);
                    
                    out.println(HTML_START + "<h2>Hi There!</h2><br/><h3>Date="+date +"</h3>"+HTML_END);*/
                    
                    
                    
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*String user = request.getParameter("user");
		String pwd = request.getParameter("pwd");
		
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
			session.setAttribute("user", "Pankaj");
			//setting session to expiry in 30 mins
			session.setMaxInactiveInterval(30*60);
			Cookie userName = new Cookie("user", user);
			userName.setMaxAge(30*60);
			response.addCookie(userName);
			response.sendRedirect("Historial.jsp");
		}else{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/Servlet.jsp");
			PrintWriter out= response.getWriter();
			out.println("<font color=red>Either user name or password is wrong.</font>");
			rd.include(request, response);
                        }
		} catch (SQLException e) {
			e.printStackTrace();
			throw new ServletException("DB Connection problem.");
		} catch (ClassNotFoundException ex) {
                Logger.getLogger(ServletMain.class.getName()).log(Level.SEVERE, null, ex);
            }
			
            try {
                rs.close();
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ServletMain.class.getName()).log(Level.SEVERE, null, ex);
            }*/
				
        
        
        
    }
    

}
