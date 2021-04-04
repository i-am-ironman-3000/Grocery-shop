<%@page import="grocery.Product"%>
<%@page import="java.util.List"%>
<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>
<jsp:include page="Sheader.jsp"/>

<div >
    <%
     String uname=request.getParameter("uname");
 
    Connection con=DbUtils.connect();
    PreparedStatement ps=con.prepareStatement("select * from cust_pro_view where uname=?");
    ps.setString(1, uname);
    ResultSet rs=ps.executeQuery();

    int count=1;
    while(rs.next()){
	  
	   %>
	   <div class="container-fluid ">
	   <div class="row">
	   
	      <div class="col-sm-4 mx-auto text-center ">
	      <h4 style="text-align:left"><%=count%> )</h4>
	    <h4>Product</h4>
	   <img src="<%=rs.getString("propic") %>" style="width:100%;border:2px solid black">
	   </div>
	   <div class="row">
	   <div class="col-sm-12 p-5" style="color:blue">
	   <h2>Product name:  <%=rs.getString("proname") %>  </h2>
	   <h2>Product Price:  <%=rs.getString("price") %>  </h2>
	   <h2>--------------------------------------------</h2>
	    <h2>Bill: &#8377 <%=rs.getString("bill") %>  </h2>
	   </div>
	   </div>
	  
	  
	   </div>
	   </div>
	   <%
     if(rs.getString("proname")==null){
  	   
  	   out.print("No Product");
     }
	   count++;
    }
    con.close();
    
    %>

<jsp:include page="footer.jsp"/>