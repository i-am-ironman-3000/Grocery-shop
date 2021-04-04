<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>

<jsp:include page="Sheader.jsp"/>
<% String name=request.getParameter("uname");
  
%>

       
      <div class="container-fluid text-center p-3" >
       <h2>All Products</h2>
 
         <div class="row">
	   <%
	  
		     Connection con=DbUtils.connect();
	         PreparedStatement ps=con.prepareStatement("SELECT * FROM product");
	       
	         ResultSet rs=ps.executeQuery();
	         while(rs.next()){
	   %>
	   
	    <div class="col-sm-3 p-2">
	       <div class="card text-center" style="background-color:skyblue;color:blue">
	          <img src="<%=rs.getString("propic") %>" style="width=100%;height:200px;padding:10px">
	          <h5><%=rs.getString("proname") %></h5>
	          
	          <h5>&#8377 <%=rs.getString("price") %></h5>
	          <h5><%=rs.getString("qt") %> Kg</h5>
	         
	          <div class="col-sm-8 mx-auto">
		      <a 
		     href="cart?proid=<%=rs.getString("proid") %>&uname=<%=name %>" class="btn btn-success">Add to Cart</a>
		        
		        
		     </div>
	        </div>
	        
	        </div>
	                  
	    <%
	        }
	         con.close();
	    %>
	</div>
       </div>
   
 
  <jsp:include page="footer.jsp"/>