package grocery;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
  @Override
			protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
	           String proid=req.getParameter("proid");
	           String uname=req.getParameter("uname");
	           
	           try {
	        	   Connection con=DbUtils.connect();
	        	   PreparedStatement ps=con.prepareStatement("insert into cart(proid,uname) values(?,?)");
	        	   ps.setString(1, proid);
	        	   ps.setString(2, uname);
	        	   ps.executeUpdate();
	        	   HttpSession session=req.getSession();
	        	   session.setAttribute("proid", proid);
	        	   session.setAttribute("uname", uname);
	        	   resp.sendRedirect("Cart.jsp");
	        	   con.close();
	        	   
	           }
	           catch(Exception ex) {
	        	   resp.getWriter().println("Error "+ex.getMessage());
	           }
	          
	        
			}
			   
}
