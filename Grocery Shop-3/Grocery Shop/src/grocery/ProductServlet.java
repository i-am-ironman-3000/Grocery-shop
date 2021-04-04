package grocery;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/saveproduct")
public class ProductServlet extends HttpServlet {
 
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String proname=req.getParameter("proname");
		String price=req.getParameter("price");
		String qt=req.getParameter("qt");
		String catid=req.getParameter("catid");
		Part propic=req.getPart("propic");
	    String filename=propic.getSubmittedFileName();
	    try {
	       Connection con=DbUtils.connect();
	       PreparedStatement ps=con.prepareStatement("insert into product(proname,price,propic,qt,catid) values(?,?,?,?,?)");
	       ps.setString(1, proname);
	       ps.setString(2, price);
	       ps.setString(3, "images/"+filename);
	       ps.setString(4, qt);
	       ps.setNString(5, catid);
	       ps.executeUpdate();
		    String path=getServletContext().getRealPath("/images/");
		    propic.write(path+filename);
		    HttpSession session=req.getSession();
		    session.setAttribute("msg", "Producted added successfully..");
		    resp.sendRedirect("AddProduct.jsp");
		   con.close();
	    }
	    catch(Exception ex) {
	    	resp.getWriter().println("Error "+ex.getMessage());
	    }
	}
}
