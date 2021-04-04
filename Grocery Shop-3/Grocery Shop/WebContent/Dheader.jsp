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
background-color:blue;
color:white;
}
</style>
</head>
<body>
  <div class="container-fluid">
     <div class="row">
        <div class="col-sm-2 p-0 " style="background-color:red">
           <img src="images/grocery.jpg" style="width:100%">
         
        </div>
        <div class="col-sm-10 p-0">
           <div class="jumbotron mb-0 p-5" style="background-color:#ff3333;text-align:center;color:white">
                   
                 
                    <div class="form-group float-right">
        
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
        <a class="nav-link" href="FrontPage.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Dproduct.jsp">Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Dcategory.jsp">Category</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Contact.jsp">Contact Us</a>
      </li>
    </ul>
    <span class="navbar-text">
      <a class="nav-link" href="Login.jsp">Login</a>
    </span>
    <span class="navbar-text">
      <a class="nav-link" href="Register.jsp">Register</a>
    </span>
  </div>
</nav>
        </div>  
      
      </div>