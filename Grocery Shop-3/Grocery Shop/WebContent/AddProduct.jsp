<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
</head>
<body>
 <div class="conatiner p-3">
 
   <h3 style="text-align:center;color:blue">Add Product</h3>
     <div class="row">
     	  
        <div class="col-sm-6 mx-auto">
        <%if(session.getAttribute("msg")!=null){
          %>
            <div class="alert alert-success font-weight-bold text-center">
             <%=session.getAttribute("msg") %>
           </div>
           <%
            session.removeAttribute("msg");
              } %>
		
             <form class="form-group" enctype="multipart/form-data"  method="post" action="saveproduct">
		       <div>
		       <label>Product Name</label>
		      <input type="text" class="form-control" name="proname" placeholder="Product Name"><br>
		      </div>
		      <div class="form-group">
		         <label>Category</label>
		         <select name="catid" class="form-control">
		           <option>-----select category----</option>
		           <%
		            Connection conn=DbUtils.connect();
		            String sql="select * from category";
		            ResultSet rss=conn.createStatement().executeQuery(sql);
		            while(rss.next()){
		            	%>
		            	<option value="<%= rss.getString("catid")%>">
		            	     <%=rss.getString("catname") %>
		            	</option>
		            	<%
		            }
		            conn.close();
		           %>
		         </select>
		      </div>
		      <div>
		        <label>Price</label>
		        <input type="text" class="form-control" name="price" placeholder="Price">
		      </div>
		      <div>
			      <label>Quantity</label>
			      <input type="text" class="form-control" name="qt" placeholder="Quantity in kg/L">
			   </div>
			   <div>
			      <label>Upload Photo</label>
			      <input type="file" accept=".jpg" class="form-control" name="propic">
		      </div>
		       <input type="submit"  class="btn btn-primary float-right" value="Add"><br>
		  </form>
		</div>
	</div>
		  <div style="text-align:center">
	     <h4>All Products</h4>
	  </div>
	<div class="row">
	   <%
             Connection con=DbUtils.connect();
	         ResultSet rs=con.createStatement().executeQuery("SELECT * FROM product");
	         while(rs.next()){
	   %>
	    <div class="col-sm-3 p-2">
	       <div class="card text-center" style="background-color:skyblue;color:blue">
	          <img src="<%=rs.getString("propic") %>" style="width=100%;height:200px;padding:10px">
	      
	          <h5><%=rs.getString("proname") %></h5>
	          
	          <h5>&#8377 <%=rs.getString("price") %></h5>
	          <h5><%=rs.getString("qt") %> Kg</h5>
	          <div class="col-sm-6 mx-auto">
	  	          <a 
				     onclick="return confirm('Are you sure to delete this category ?')"
				     href="DeleteProduct?proname=<%=rs.getString("proname") %>" class="btn btn-danger">Delete</a>
				  </div>
		      
	        </div>
	          
	    </div>
	    <%
	        }
	         con.close();
	    %>
	</div>
</div>
</body>
</html>
<jsp:include page="footer.jsp"/>