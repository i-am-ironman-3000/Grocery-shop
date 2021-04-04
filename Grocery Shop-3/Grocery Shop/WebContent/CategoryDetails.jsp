 <%@page import="grocery.Product"%>
<%@page import="java.util.List"%>
<%@page import="javax.websocket.Session"%>
<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>
<jsp:include page="header.jsp"/>

<%
 String catid=request.getParameter("catid");
%>
       <h2>Product Details</h2>
       <div class="container">
         <div class="row">
         
         <%
         List<Product> list=DbUtils.getList(catid);
           for(Product p : list){
        	   %>
        	   <div class="col-sm-3 p-3">
        	   <div class="card text-center" style="background-color:skyblue;color:blue">
        	   
	  	       <img src=" <%=p.getPropic() %>" style="width=100%;height:200px;padding:10px">
	  	        <h5><%=p.getProname() %></h5>
	  	         <h5><%=p.getPrice() %></h5>
	  	          <h5><%=p.getQt() %>Kg</h5>
	  	          <div class="col-sm-6 mx-auto">
	  	          <a 
				     onclick="return confirm('Are you sure to delete this category ?')"
				     href="DeleteProduct?proname=<%=p.getProname() %>" class="btn btn-danger">Delete</a>
				  </div>
		      
	  	        </div> 
	  	        </div> 
	  	   <%
           } 
	  	  %>
	   
	 	   
	</div>
       </div>
   
 
  <jsp:include page="footer.jsp"/>