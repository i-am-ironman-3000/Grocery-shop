<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>
<jsp:include page="Sheader.jsp"></jsp:include>
<%
String name=request.getParameter("uname");

%>
<div class="container-fluid">
   <div class="row">
      <div class="col-sm-10 mx-auto">
          <div style="text-align:center;color:red;padding:20px">
           <h2>My Profile</h2>
           </div>
           <%
           Connection con=DbUtils.connect();
          PreparedStatement ps=con.prepareStatement("select * from user where uname=?");
          ps.setString(1, name);
          ResultSet rs=ps.executeQuery();
          while(rs.next()){
        	  %>
        	  
        	  
        	<div style="color:green">
        	  
        	  <h4>User Name:  <%=rs.getString("uname") %></h4>
        	  <h4>-------------------------------------------------</h4>
        	  <h4>Email ID:    <%=rs.getString("uid") %></h4>
        	   <h4>-------------------------------------------------</h4>
        	  <h4>User Mobile No.:   <%=rs.getString("mbno") %></h4>
        	   <h4>-------------------------------------------------</h4>
        	  <h4>User Address:     <%=rs.getString("address") %></h4>
        	  </div>
        	  <% 
          }
           %>
           
      </div>
   </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>