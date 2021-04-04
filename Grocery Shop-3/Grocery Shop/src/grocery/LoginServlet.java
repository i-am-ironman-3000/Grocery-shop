package grocery;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");

	
		
		try {
			Connection con=DbUtils.connect();
			final String sql="select * from user where uid=? and pwd=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			ResultSet rs=ps.executeQuery();
			HttpSession session=req.getSession();
			if(rs.next()) {
				 String role=rs.getString("role");
				 if(role.equals("admin")) {
					 session.setAttribute("name", name);
	               resp.sendRedirect("AdminDashboard.jsp");
				 }
				 else {
					 session.setAttribute("uname", name);
					 resp.sendRedirect("CustomerDashboard.jsp");
				 }
			}
			else {
				session.setAttribute("msg", "Invaild user name or password");
				resp.sendRedirect("Login.jsp");
			}
			con.close();
		}
		catch(Exception ex) {
			resp.getWriter().println("Error "+ex.getMessage());
		}
	}

}
