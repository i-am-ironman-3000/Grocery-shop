<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>
<jsp:include page="Sheader.jsp"/>
<%
String uname=request.getParameter("uname");
String bill=request.getParameter("total");
String proid=request.getParameter("proid");

Connection con=DbUtils.connect();
PreparedStatement ps=con.prepareStatement("insert into orderdetails(uname,bill,proid) values(?,?,?)");
ps.setString(1, uname);
ps.setString(2, bill);
ps.setString(3, proid);
ps.executeUpdate();
%>
<div class="container">

<div class="row">
<div class="col mx-auto p-5">

 <h2 style="text-align:center;color:green">Thank You ! Your Order Placed Successfully...</h2>


</div>

</div>
<div class="row">
<a href="Cproduct.jsp?uname=<%=uname %>" class="btn btn-success">Continue Shopping</a>
</div>

</div>
 
 <jsp:include page="footer.jsp"/>