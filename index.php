<?php
include('header.php');
?>
	<!--End Fixed Navigation-->

	<!--Carousel starts here-->
	<div class="bs-example">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Carousel indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>   
		<!-- Wrapper for carousel items -->
		<div class="carousel-inner">
			<div class="item active">
			   
				<img class="carousel-img" src="images/carousel/cs1.jpg" alt="fourth Slide">
			</div>
			<div class="item ">
				<img class="carousel-img" src="images/carousel/lcp_(1).jpg" alt="First Slide">
			</div>
			<div class="item">
				<img class="carousel-img" src="images/carousel/badlap.jpg" alt="Second Slide">
			</div>
			<div class="item">
				<img class="carousel-img" src="images/carousel/captain.jpeg" alt="Third Slide">
			</div>
			<div class="item">
				<img class="carousel-img" src="images/carousel/captain.jpeg" alt="Third Slide">
			</div>
		</div>
	</div>
	</div>

	<!--Carousel end here-->
	
<!--code for latest movies-->
	<div class="container-fluid">	
		<div class="col-xs-12">
			<h1>Latest Movies</h1>
			<div class="carousel slide multi-item-carousel-movies" id="moviesCarousel" >
			  <div class="carousel-inner">
				<div class="item active">
					  <div class="col-md-3"><a href="#"><img src="images/cards/lukachuppi.jpg" class="img-responsive">
					<p><strong></strong> </p></a></div>
				</div>
				<div class="item">
					<div class="col-md-3"><a href="#"><img src="images/cards/captainm.jpg" class="img-responsive"></a></div>
				</div>
				<div class="item">
					<div class="col-md-3"><a href="#"><img src="images/cards/kesari.jpg" class="img-responsive"></a></div>
				</div>
				<div class="item">
					<div class="col-md-3"><a href="#"><img src="images/cards/cep.jpg" class="img-responsive"></a></div>
				</div>
				</div>
			</div>
		</div>
	</div>
	<!--latest movies code end-->
<!--code for latest events-->
	<div class="container-fluid">	
			<div class="col-xs-12">
				<h1>Latest Events</h1>
				<div class="carousel slide multi-item-carousel-movies" id="moviesCarousel">
				  <div class="carousel-inner">
					<div class="item active">
						  <div class="col-md-3"><a href="index.html"><img src="images/events/onesmore.jpg" class="img-responsive">
						<p><strong></strong> </p></a></div>
					</div>
					<div class="item">
						<div class="col-md-3"><a href="index.html"><img src="images/events/music.jpg" class="img-responsive"></a></div>
					</div>
					<div class="item">
						<div class="col-md-3"><a href="index.html"><img src="images/events/pcfp.png" class="img-responsive"></a></div>
					</div>
					<div class="item">
						<div class="col-md-3"><a href="index.html"><img src="images/events/iplposter.png" class="img-responsive"></a></div>
					</div>
					
				  </div>
				</div>
					<!-- <div class="item">
						<div class="col-md-3"><a href="#"><img src="images/cards/cep.jpg" class="img-responsive"></a></div>
					</div> -->
			
				  </div>
				</div>
			</div>
		</div>
			<!--latest events code end-->
		
<!-- The modal -->
<!-- <script>
	$(document).ready(function() {
	$('.popup-with-zoom-anim').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-zoom-in'
	});
																	
	});
</script> -->



<style>
    .page{
        border:2px solid black white;
          border-top:1px solid black;
          background-image:url('images/film.jpg');
          background-size:cover;
          height:350px;
        
    }
    .text{
        color:#bb7b29;
        font-size:20px;
        margin-left:50px;
    }
    .h3{
        color:grey;
        
    }
    
    .news{
        margin-left:50px;
        padding-top:50px;
      
        
    }
    .imgbook{
        width:15px;
        height:10px;
    }
    
        

</style>

		<div class="container-fluid page">		
			<div class="row">	
	        <div class="col-md-6 news">
	            <h3>Don't Be Late,</h3>
	            <h2><b>Book Your Ticket Now!!</b></h2>
	            <h4>Easy,Simple & Fast</h4>
            </div>
	     
	              <a class="imgbook" href="#">
	               <img style="width:350px;"src="images/btn.png"alt="book"></a>
	            <!--<p class="text">GET Discount Upto <strong>10%</strong>&nbsp;If You Are a Member!!</p>-->
	    
	  
	       </div> 
	       </div>
	            
	            
	            
	            
	            
	            
	            
	            
	            
	            
	            
	            
	            
	            
	            
	        
            </div>
        </div>
	</div>
	</div>

<?php
include('footer.php');
?>



    </body>
</html>
