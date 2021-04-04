package grocery;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/price")
public class CalculatePrice extends HttpServlet {
 
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String proid=req.getParameter("proid");
		String uname=req.getParameter("uname");
	   
		float qt=Float.parseFloat(req.getParameter("qt"));
		
		float price=Float.parseFloat(req.getParameter("price"));
		
		float total=qt*price;
		try {
		Connection con=DbUtils.connect();
		PreparedStatement ps=con.prepareStatement("insert into cartprice values(?,?,?,?)");
		ps.setString(1, proid);
		ps.setString(2, uname);
		ps.setFloat(3, total);
		ps.setFloat(4, qt);
		ps.executeUpdate();
		resp.sendRedirect("Cart.jsp");
		}
		catch(Exception ex) {
			resp.getWriter().println("Error "+ex.getMessage());
		}
	}
}
