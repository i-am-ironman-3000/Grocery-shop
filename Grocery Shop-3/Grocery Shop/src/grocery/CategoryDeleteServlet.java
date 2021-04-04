package grocery;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class CategoryDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String catid=req.getParameter("catid");
		try {
			Connection con=DbUtils.connect();
			PreparedStatement ps=con.prepareStatement("DELETE FROM category WHERE catid=?");
			ps.setString(1, catid);
			ps.executeUpdate();
			resp.sendRedirect("Category.jsp");
			con.close();
		}
		catch(Exception ex) {
		     resp.getWriter().println("Error "+ex.getMessage());
		}
	}
}
