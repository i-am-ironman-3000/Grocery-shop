package grocery;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {

   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   
	   String uname=req.getParameter("uname");
	   String uid=req.getParameter("uid");
	   String mbno=req.getParameter("mbno");
	   String address=req.getParameter("add");
	   String pwd=req.getParameter("pwd");
	   
	   try {
		   Connection con=DbUtils.connect();
		   final String sql="insert into user values(?,?,?,?,?,'customer')";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ps.setString(1, uname);
		   ps.setString(2, uid);
		   ps.setString(3, mbno);
		   ps.setString(4, address);
		   ps.setString(5, pwd);
		   ps.executeUpdate();
		   HttpSession session=req.getSession();
		   session.setAttribute("msg","User Registered Successfully..." );
		   resp.sendRedirect("Register.jsp");
		   con.close();
	   }
	   catch(Exception ex){
		   resp.getWriter().println("Error "+ex.getMessage());
		   
	   }
	   
   }
}
