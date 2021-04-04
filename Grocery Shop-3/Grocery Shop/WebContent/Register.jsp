<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="Dheader.jsp"/>
<script>
  $(function(){
	 $("#cpwd").blur(function(){
		var pwd=$("#pwd").val();
		var cpwd=$("#cpwd").val();
		if(pwd!=cpwd){
			alert("Password not Match..");
		}
	});
	
     
  });
</script>
 <div class="container-fluid p-2" style="background-color:#ffe6e6;text-align:center">
     <h2>Register Page</h2>
    <div class="row">
       <div class="col-sm-6 mx-auto">
       <%
         if(session.getAttribute("msg")!=null){
        	
        	%>
        	<h4><%=session.getAttribute("msg") %></h4>
       	<%
          session.removeAttribute("msg");
         }%>
    
          <form method="post" action="Register">
	          <div class="form-group">
	             <label>User Name</label>
	             <input type="text" class="form-control" id="uname" name="uname" placeholder="User Name">
	          </div>
	          <div class="form-group">
	             <label>Email ID</label>
	             <input type="text" class="form-control" id="uid" name="uid" placeholder="Email ID">
              </div>
              <div class="form-group">
	             <label>Mobile no.</label>
	             <input type="text" class="form-control" id="mbno" name="mbno" placeholder="Mobile No.">
              </div>
              <div class="form-group">
	             <label>Address</label>
	             <textarea name="add" id="add" rows="3" class="form-control" placeholder="Enter full address"></textarea>
              </div>
              <div class="form-group">
                 <label>Password</label>
                 <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
              </div>
              <div class="form-group">
                 <label>Confirm Password</label>
                 <input type="password" class="form-control" id="cpwd" name="cpwd" placeholder="Confirm Password">
              </div>
             <input type="submit" class="btn btn-primary" id="sub" value="register">
          </form>
       </div>
    </div>
 </div>

<jsp:include page="footer.jsp"/>