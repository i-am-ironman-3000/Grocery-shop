<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="icon" href="images/grocery.jpg">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery-3.5.1.js"></script>
<style>
a{
display:block;
text-decoration:none;
color:white;
border-bottom:1px solid white;
padding:20px;
text-align:center;
}
a:hover{
background-color:black;
color:white;
text-decoration:none;
}
</style>
</head>
<body>
  <div class="container-fluid">
     <div class="row">
        <div class="col-sm-2 p-0 " style="Background-color:#3399ff;min-height:100vh">
           <img src="images/grocery.jpg" style="width:100%">
           <a href="AdminDashboard.jsp">Home</a>
            <a href="Category.jsp">Categories</a>
            <a href="AddProduct.jsp">Products</a>
             
              <a href="Customer.jsp">Customers</a>
               <a href="Login.jsp">Logout</a>
        </div>
        <div class="col-sm-10 p-0" >
           <div class="jumbotron m-0 " style="background-color:#3399ff;text-align:center;color:white">
                   
                  <h2>Welcome to The Grocery Shop</h2> 
                 
                  <h5 style="text-align:right">Welcome! <%=session.getAttribute("name") %></h5>
                 
           </div>
           
    