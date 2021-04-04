<%@page import="grocery.Product"%>
<%@page import="java.util.List"%>
<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>
<jsp:include page="Sheader.jsp"/>

<%
     String proid=session.getAttribute("proid").toString();
String uname=session.getAttribute("uname").toString();
Connection con=DbUtils.connect();   
    %>
<div class="container-fluid text-center">
    <h2>My Cart</h2>
  <table class="table table-bordered ">
    <thead>
        <tr>
           <th>Sr No</th>
           <th>Product Name</th>
            <th>Product Price</th>
             <th>Product Quantity</th>
             <th>Remove</th>
              <th>Total</th>
            
        </tr>
    </thead>
     <%
     PreparedStatement ps2=con.prepareStatement("select * from cart_pro_view where uname=?");
     ps2.setString(1, uname);
     ResultSet rs2=ps2.executeQuery();
     int count=1;
     float total=0;
     float price=0;
    		 while(rs2.next()){ 
    		String cproid=rs2.getString("proid");
     %>    
    
    <tbody>
        <tr>
           <td><%=count %></td>
           <td><%=rs2.getString("proname") %></td>
           <td><%=rs2.getString("price") %></td>
           <td>
            <form method="post" action="price?price=<%=rs2.getString("price")%>&proid=<%=rs2.getString("proid") %>&uname=<%=uname %>">
           <div class="box">
              <input type="number" name="qt" value="1">
              <button>set</button>
               
           </div>
           </form></td>
           <%
           PreparedStatement ps3=con.prepareStatement("select * from cartprice where proid=? and uname=?");
           ps3.setString(1, cproid);
           ps3.setString(2, uname);
           ResultSet rs3=ps3.executeQuery();
           while(rs3.next()){%>
        	 <td><div class="row">
		     <div class="col-sm-6">
		     <a 
		     onclick="return confirm('Are you sure to delete this category ?')"
		     href="deletecart?uname=<%=uname %>&proid=<%=proid %>" class="btn btn-sm-2 btn-danger">X</a>
		      </div>
		      </div></td>
        	 
        	  <td> <%=rs3.getFloat("price")%></td>
           <%
           price=rs3.getFloat("price");
           int qt=rs3.getInt("qt");
           } %>
    
        </tr>
    </tbody>
  <%
       total=total+price;
       count++;
       }
     con.close();
  %>
  </table>
  <h2>Total:<%=total %></h2>
 
 
  <div class="col-sm-2 float-right ">
      <a href="Msg.jsp?uname=<%=uname %>&total=<%=total %>&proid=<%=proid %>" class="btn btn-success">Confirm Order</a>
  </div>
  <div class="col-sm-2 float-left ">
      <a href="Cproduct.jsp?uname=<%=uname %>" class="btn btn-success">Continue Shopping</a>
  </div>
</div>

<jsp:include page="footer.jsp"/>