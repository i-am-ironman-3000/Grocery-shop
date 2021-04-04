<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:include page="Dheader.jsp"/>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
 <div class="container-fluid p-5" style="background-color:#ffe6e6;color:Red;text-align:center">
  <h2>Login Page</h2>
 <div class="row">
  <div class="col-sm-6 mx-auto p-3">
  <form class="form-group" method="post" action="login">
      <label>User Name</label>
      <input type="text" class="form-control" name="name" placeholder="User name">
       <label>User ID</label>
      <input type="text" class="form-control" name="id" placeholder="User ID">
       <label>Password</label>
      <input type="password" class="form-control" name="pwd" placeholder="Password">
      <input type="submit" class="btn btn-primary float-right" value="Login">
      <div class="clearfix"></div>
      <%
      if(session.getAttribute("msg")!=null)
      {
    	  %>
    	  <div class="alert alert-danger border-danger">
    	     <h4><%= session.getAttribute("msg") %></h4>
    	  </div>
    	  <%
    	  session.removeAttribute("msg");
      }
      %>
  </form>
  </div>
  </div>
 </div>

</body>
</html>
<jsp:include page="footer.jsp" />