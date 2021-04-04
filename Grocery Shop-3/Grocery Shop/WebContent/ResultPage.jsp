<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>



       
      <div class="container" >
 
 
         <div class="row">
	   <%
	  
		     Connection con=DbUtils.connect();
	         PreparedStatement ps=con.prepareStatement("SELECT * FROM product where proname like ?");
	         ps.setString(1,"%"+ request.getParameter("name")+"%");
	         ResultSet rs=ps.executeQuery();
	         while(rs.next()){
	   %>
	   
	    
	       <div class="card text-center" style="background-color:skyblue;color:blue">
	          <img src="<%=rs.getString("propic") %>" style="width=100%;height:200px;padding:10px">
	          <h5><%=rs.getString("proname") %></h5>
	          
	          <h5>&#8377 <%=rs.getString("price") %></h5>
	          <h5><%=rs.getString("qt") %> Kg</h5>
	         
	        
	        
	        </div>
	                  
	    <%
	        }
	         con.close();
	    %>
	</div>
       </div>
   
 
  