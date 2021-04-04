<%@page import="grocery.DbUtils"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category</title>
</head>
<body>
  
  <div class="conatiner p-3">
    <h3 style="text-align:center;color:blue">Add Category</h3>
       
     <div class="row">
        <div class="col-sm-6 mx-auto">
        <%
			  if(session.getAttribute("msg")!=null){
			  %>
			   <div class="alert alert-success fon-weigth-bold text-center"><%=session.getAttribute("msg") %></div>
			  <%
			    session.removeAttribute("msg");
			  }
			  %>
             <form class="form-group" enctype="multipart/form-data"  method="post" action="savecategory">
		       <div>
		      
		       <label>Category Name</label>
		      <input type="text" class="form-control" name="cat" placeholder="Category Name"><br>
		      <lable>Upload Photo</lable>
		      <input type="file" accept=".jpg" class="form-control" name="pic">
		      </div>
		      <input type="submit"  class="btn btn-primary float-right" value="Add">
		  </form>
		  
     </div>
     
  </div>
  <div style="color:blue">
        <h3>All Category</h3>
     </div>
  <div class="row">
     
     
     <%
		  Connection con=DbUtils.connect();
		  ResultSet rs=con.createStatement().executeQuery("SELECT * FROM category");
		  
		  while(rs.next()){
			 
		  %>
		   <div class="col-sm-3 p-3">
		  <div class="card text-center" style="border:2px solid black">
		     <img src="<%= rs.getString("catpic") %>" style=" width:100%;height:200px;padding:10px;border-radius:20px">
		     <h4><%=rs.getString("catname") %></h4>
		     
		     <div class="row">
		     <div class="col-sm-6">
		     <a 
		     onclick="return confirm('Are you sure to delete this category ?')"
		     href="delete?catid=<%=rs.getString("catid") %>" class="btn btn-danger">Delete</a>
		      </div>
		       <div class="col-sm-6">
		      <a 
		     href="CategoryDetails.jsp?catid=<%=rs.getString("catid") %>" class="btn btn-success">View</a>
		        
		        
		     </div>
		     </div>
		    
		  </div>
		  </div>
		
		<%
		  
			  
			  }
		  %>
		  
	</div>
  </div>
</body>
</html>