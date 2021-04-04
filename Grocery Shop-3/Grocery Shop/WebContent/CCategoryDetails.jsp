 <%@page import="grocery.Product"%>
<%@page import="java.util.List"%>
<%@page import="javax.websocket.Session"%>
<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>
<jsp:include page="Dheader.jsp"/>

<%
 String catid=request.getParameter("catid");
String catname=request.getParameter("catname");
%>
       <div class="container">
       <div class="row">
          <div class="col-sm-6 mx-auto" style="color:red">
           <h2>Category:  <%=catname %></h2>
           </div>
       </div>
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
	  	          
	  	        </div> 
	  	        </div> 
	  	   <%
           } 
	  	  %>
	   
	 	   
	</div>
       </div>
   
 
  <jsp:include page="footer.jsp"/>