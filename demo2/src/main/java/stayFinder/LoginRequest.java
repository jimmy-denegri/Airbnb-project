package stayFinder;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class LoginRequest
 */
@WebServlet("/LoginRequest")
public class LoginRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter pw = response.getWriter();
			response.setContentType("text/html");
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stayfinder", "root", "trescer3942");
			
			String n = request.getParameter("txtName");
			String p = request.getParameter("txtPwd");
			
			PreparedStatement ps = con.prepareStatement("SELECT email FROM users WHERE email=? AND password_hash=?");
			ps.setString(1, n);
			ps.setString(2, p);
			
			ResultSet rs =  ps.executeQuery();
			
			if(rs.next()) {
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
			else {
				pw.println("<font color=red size=18>Login Failed<br>");
				pw.println("<a href=login.jsp> Try again!!</a>");
			}
			
		} catch (ClassNotFoundException e){
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
