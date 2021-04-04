<jsp:include page="Dheader.jsp"/>
 <script>
 $(function(){
	 $("#name").keyup(function(){
		 var name=$(this).val();
		 $.get("ResultPage.jsp",{"name":name},function(output){
			 
			 $(".result").html(output);
		 });
		
	 });
 });
 </script>    
        <div class="container-fluid p-2" style="background-color:#ffe6e6">
        <div class="row">
            <div class="col-sm-6 mx-auto">
                <div class="form-group mt-3">
                    <input type="search" id="name" class="form-control" placeholder="Enter Product Name to Search">
                    <div class="col">
               <div class="result"></div>
               </div>
                </div>
           </div>
          
        </div>
     <div class="row">
      <div class="col-sm-12" >
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" >
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/gc1.jpg" alt="First slide" style="width:100%;height:430px" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/gc2.jpg" alt="Second slide" style="width:100%;height:430px">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/gc3.jpg" alt="Third slide" style="width:100%;height:430px">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</div>
</div>
 <div class="container-fluid m-3" >
   <h2> The Grocery Shop - Online Grocery Shopping</h2>
   <h4>Online grocery store in India</h4>
   <p>Order online. All your favourite products from the low price online supermarket for grocery home delivery in Delhi, Gurugram, Bengaluru, Mumbai and other cities in India. Lowest prices guaranteed on Patanjali, Aashirvaad, Pampers, Maggi, Saffola, Huggies, Fortune, Nestle, Amul, MamyPoko Pants, Surf Excel, Ariel, Vim, Haldiram's and others.
   </p>
   <h4>One stop shop for all your daily needs</h4>
   <p>The Grocery Shop is a low-price online supermarket that allows you to order products across categories like grocery, vegetables, beauty & wellness, household care, baby care, pet care and meats & seafood and gets them delivered to your doorstep.
   </p>
    <h4>For best of prices, deals and offers; order online in cities</h4>
    <P>The delivery service is operational in 27+ cities: Agra, Ahmedabad, Aligarh, Allahabad, Asansol, Bengaluru, Bhiwadi, Chandigarh, Chennai, Delhi, Durgapur, Faridabad, Guwahati, Hapur, HR-NCR, Hyderabad, Indore, Jaipur, Kanpur, Kolkata, Lucknow, Meerut, Modinagar, Moradabad, Mumbai, Panipat, Pune, Rohtak, Sonipat, UP-NCR, Vadodara, and Zirakpur.</P>
</div>
<jsp:include page="footer.jsp" />