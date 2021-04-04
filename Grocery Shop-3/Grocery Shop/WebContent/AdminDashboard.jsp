<%@page import="java.sql.*"%>
<%@page import="grocery.DbUtils"%>
<jsp:include page="header.jsp"/>
<div class="container text-center p-4">
   <h2>Welcome Admin</h2>
   <div class="row p-4 mx-auto">
     <div class="col-sm-3">
          <div class="card m-2 p-2 bg-success text-white text-center">
             <h4>Categories</h4>
             <h5><%=DbUtils.countRecords("category") %></h5>
          </div>
     </div>
     <div class="col-sm-3">
          <div class="card m-2 p-2 bg-info text-white text-center">
             <h4>Products</h4>
             <h5><%=DbUtils.countRecords("product") %></h5>
          </div>
     </div>
     <div class="col-sm-3">
          <div class="card m-2 p-2 bg-warning text-white text-center">
             <h4>Customers</h4>
                       
					 <h5><%=DbUtils.countRecords("user")-1 %></h5>
	
             
          </div>
     </div>
   </div>
</div>

<jsp:include page="footer.jsp"/>