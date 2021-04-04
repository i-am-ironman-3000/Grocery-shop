<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>
<jsp:include page="header.jsp"/>

<div class="conatiner p-4 text-center">
   <h4>All Customer Details</h4>
  <div class="row">
   <div class="col-sm-11 mx-auto">
       <table class="table table-bordered">
          <thead>
             <tr>
                <th>Sr.No</th>
                <th>Customer Name</th>
                <th>Customer Mobile No.</th>
                <th>Customer User ID</th>
                <th>Customer Address</th>
                <th>Order Details</th>
                
             </tr>
          </thead>
          <%
           Connection con=DbUtils.connect();
          ResultSet rs=con.createStatement().executeQuery("SELECT * FROM user");
          int count=1;
          while(rs.next()){
        	  String role=rs.getString("role");
        	  if(role.equals("customer")){
        	%>
  	      <tbody>
             <tr>
               <td><%= count %></td>
               <td><%=rs.getString("uname") %></td>
               <td><%=rs.getString("mbno") %></td>
               <td><%=rs.getString("uid") %></td>
               <td><%=rs.getString("address") %></td>
               <td><a href="Orderdetails.jsp?uname=<%=rs.getString("uname") %>" class="btn btn-primary">View</a></td>
               
              
             </tr>
          </tbody>
          <%  
            count++;          
        	  }
          }
          con.close();
          
          %>
       </table>
   </div>
  </div>
</div>

<jsp:include page="footer.jsp"/>