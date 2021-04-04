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
@WebServlet("/savecategory")
public class CategoryServlet extends HttpServlet {
 
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	   String catname=req.getParameter("cat");
		Part catpic=req.getPart("pic");
		String filename=catpic.getSubmittedFileName();
	    
		try {
			Connection con=DbUtils.connect();
			String sql="insert into category(catname,catpic) values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1,catname);
			ps.setString(2, "images/"+filename);
            ps.executeUpdate();
            HttpSession session=req.getSession();
            session.setAttribute("msg", "Category Created..");
            resp.sendRedirect("Category.jsp");
            String path=getServletContext().getRealPath("/images/");
    		catpic.write(path+filename);
            con.close();
			
		}
		catch(Exception ex) {
			resp.getWriter().println("Error "+ex.getMessage());
		}
		
		
	
   }
}