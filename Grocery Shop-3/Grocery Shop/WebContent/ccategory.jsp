<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>
<jsp:include page="Sheader.jsp"/>


       
      <div class="container-fluid text-center p-3">
       <h2>All Categories</h2>
         <div class="row">
	   <%
	        
             Connection con=DbUtils.connect();
	         PreparedStatement ps=con.prepareStatement("SELECT * FROM category");
	       
	         ResultSet rs=ps.executeQuery();
	         while(rs.next()){
	   %>
	    <div class="col-sm-3">
	       <div class="card text-center" style="background-color:skyblue;color:blue">
	          <img src="<%=rs.getString("catpic") %>" style="width=100%;height:200px;padding:10px">
	      
	          <h5><%=rs.getString("catname") %></h5>
	           <div class="col-sm-6 mx-auto">
		      <a 
		     href="Cdetails.jsp?catid=<%=rs.getString("catid") %>&catname=<%=rs.getString("catname") %>" class="btn btn-success">View</a>
		        
		        
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