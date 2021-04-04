package grocery;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deletecart")
public class CartDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uname=req.getParameter("uname");
		String proid=req.getParameter("proid");
		try {
			Connection con=DbUtils.connect();
			PreparedStatement ps=con.prepareStatement("DELETE FROM cart WHERE uname=? and proid=?");
			ps.setString(1, uname);
			ps.setString(2, proid);
			ps.executeUpdate();
			
			PreparedStatement ps2=con.prepareStatement("DELETE FROM cartprice WHERE uname=? and proid=?");
			ps2.setString(1, uname);
			ps2.setString(2, proid);
			ps2.executeUpdate();
			resp.sendRedirect("Cart.jsp");
			con.close();
		}
		catch(Exception ex) {
		     resp.getWriter().println("Error "+ex.getMessage());
		}
	}
}
