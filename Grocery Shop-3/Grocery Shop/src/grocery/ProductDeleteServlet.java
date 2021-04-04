package grocery;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteProduct")
public class ProductDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String proname=req.getParameter("proname");
		try {
			Connection con=DbUtils.connect();
			PreparedStatement ps=con.prepareStatement("DELETE FROM product WHERE proname=?");
			ps.setString(1, proname);
			ps.executeUpdate();
			resp.sendRedirect("AddProduct.jsp");
			con.close();
		}
		catch(Exception ex) {
		     resp.getWriter().println("Error "+ex.getMessage());
		}
	}
}
