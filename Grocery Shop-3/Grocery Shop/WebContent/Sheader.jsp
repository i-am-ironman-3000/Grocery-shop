<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="images/grocery.jpg">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery-3.5.1.js"></script>
<script src="js/bootstrap.js"></script>
<style>
a:hover{
background-color:black;
color:white;
}
</style>
</head>
<body>
<% 
String name=(String)session.getAttribute("uname"); 
 
%>
  <div class="container-fluid">
     <div class="row">
        <div class="col-sm-2 p-0 " style="background-color:red">
           <img src="images/grocery.jpg" style="width:100%">
         
        </div>
        <div class="col-sm-10 p-0">
           <div class="jumbotron mb-0 p-5" style="background-color:#ff3333;text-align:center;color:white">
                   
                 
                 
                    <div class="form-group float-right">
                     <h5>Welcome <%out.print(name); %></h5>
              
           </div>
           <h2>Welcome to The Grocery Shop</h2> 
           </div>
           <div>
           <nav class="navbar navbar-expand-lg navbar-dark " style="background-color:red;color:white">
  <a class="navbar-brand" href="#">Grocery</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="CustomerDashboard.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Cproduct.jsp?uname=<%= session.getAttribute("uname")%>">Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ccategory.jsp">Category</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="CContact2.jsp">Contact Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Order.jsp?uname=<%= session.getAttribute("uname")%>">My Order</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="FrontPage.jsp">Logout</a>
      </li>
    </ul>
    <span class="navbar-text">
      <a class="nav-link" href="profile.jsp?uname=<%= session.getAttribute("uname")%>">MyProfile</a>
    </span>
    <span class="navbar-text">
      <a class="nav-link" href="Cart.jsp?uname=<%= session.getAttribute("uname")%>">MyCart</a>
    </span>
    
  </div>
</nav>
        </div>  
      
      </div>