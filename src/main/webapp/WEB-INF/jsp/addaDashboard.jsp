
<!DOCTYPE html>
<html>
<head>
  <title>Apartment Adda</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
	.header{
		background-color: #19206f;
		color: #fff;
		padding: 6px 2px;
	}
	.footer{
		background-color: #19206f;
		    padding: 16px 8px;
	}
	
	.header-inner{
		    border: 1px solid #f2f2f2;
    		padding: px;
	}
	.main { 
        text-align:center; 
        font-family:"Times New Roman"; 
    } 
    .marq { 
        padding-top:30px; 
        padding-bottom:30px; 
    } 
    .geek1 { 
        font-size:20px; 
        font-weight:bold; 

    } 
    .geek2 { 
        text-align:center; 
    }
    .btn_toggle{
    	background: none;
    	padding: 15px;
    	color: #9d9d9d;
    }
    .btn_toggle:hover,.btn_toggle:focus {
    	color: #9d9d9d;
    }
    
    //style for home tab
    .slideshow-container {
  		max-width: 1000px;
  		position: relative;
  		margin: auto;
	}
	
	.prev, .next {
		  cursor: pointer;
		  position: absolute;
		  top: 50%;
		  width: auto;
		  padding: 16px;
		  margin-top: -22px;
		  color: white;
		  font-weight: bold;
		  font-size: 18px;
		  transition: 0.6s ease;
		  border-radius: 0 3px 3px 0;
		  user-select: none;
	}
	
	.next {
		  right: 0;
		  border-radius: 3px 0 0 3px;
		}
		
	.prev:hover, .next:hover {
		  background-color: rgba(0,0,0,0.8);
		}
		
	.text {
		  color: #f2f2f2;
		  font-size: 15px;
		  padding: 8px 12px;
		  position: absolute;
		  bottom: 8px;
		  width: 100%;
		  text-align: center;
		}
		
	.numbertext {
		  color: #f2f2f2;
		  font-size: 12px;
		  padding: 8px 12px;
		  position: absolute;
		  top: 0;
		}
		
	.dot {
  		  cursor: pointer;
  		  height: 15px;
		  width: 15px;
		  margin: 0 2px;
		  background-color: #bbb;
		  border-radius: 50%;
		  display: inline-block;
		  transition: background-color 0.6s ease;
		}

	.active, .dot:hover {
  		  background-color: #717171;
	}
	
</style>
<body>
<script>
	function openSocietyTab(parentTabName, subTabName) //tabToOpen','societyService','houseTab'
	{
		debugger;
		var i;
		 // var x = document.getElementById(divName); 
		  var parentTempId = parentTabName;
		  var tempId = subTabName;
		   $.ajax({
			 
			  type : "GET",
			    url : "/ApartmentAdda/"+parentTempId+"/"+tempId,
			    data : {x:tempId},
			    timeout : 100000,
			    success : function(x) {
			    	debugger;
			        console.log("SUCCESS: ", x);
			        var theInfoDiv = document.getElementById('menu1');  
			        document.getElementById("menu1").innerHTML = x;
			    },	
			    error : function(e) {
			        console.log("ERROR: ", e);
			    }
		  });
	}
	
	//script for home tab
	var slideIndex = 1;
	showSlides(slideIndex);
	
	function plusSlides(n) {
		  showSlides(slideIndex += n);
		}
	
	function currentSlide(n) {
		  showSlides(slideIndex = n);
		}
	
	function showSlides(n) {
		
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("dot");
		  if (n > slides.length)
		  	{
			  slideIndex = 1
			}    
		  if (n < 1) 
		  	{	
			  slideIndex = slides.length  
		  	}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";  
		  }
		  for (i = 0; i < dots.length; i++) {
		      dots[i].className = dots[i].className.replace(" active", "");
		  }
		  
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		}
	
</script>
<section>
			<!-- header section start -->
			<div class="container-fluid header">
				<div class="row">
					<div class="col-md-3" style="padding-right: 4px;">
						<div class="header-inner">
							<h3>Sukhwani Niketan Wing-F</h3>
  							<p>Waghere colony-4
     						   Pimpri, Pune. (411017)</p>
  							<p>Contact no :8793344570</p>
						</div>
					</div>
				</div>
			</div>
			<!-- header section end -->
			<!-- news letter + tab section start -->
			<div class="container-fluid ht">
				<div class="row">
				    <!-- news letter start -->
					<div class="col-md-3" style="background:#e0ebeb">
						<div>
							<h3><B>News Letter</B> </h3>
						</div>
			 			<div class = "main" style="height: 398px;"> 
    						<marquee class="marq" direction = "up" loop=""style="height: 380px;" > 
        						<div class="geek1">marquee</div> 
        						<div class="geek1">marquee</div> 
        						<div class="geek1">marquee</div> 
        						<div class="geek1">marquee</div> 
        						<div class="geek1">marquee</div> 
        						<div class="geek2">A computer science portal for geeks</div> 
    						</marquee> 
    					</div> 
					</div>
					<!-- news letter end -->
					<!-- tab section start -->
					<div class="col-md-9" style="padding: 2px;">
						<nav class="navbar navbar-inverse">
  							<div class="container-fluid">
    							<div class="collapse navbar-collapse" id="myNavbar">
      								<ul class="nav navbar-nav">
      								<li><a data-toggle="pill" href="#photoGallary">Home</a></li>
	        							<li>
		        							<div class="dropdown">
		    									<button class="btn dropdown-toggle btn_toggle" type="button" data-toggle="dropdown">Society Services
		    										<span class="caret"></span>
		    									</button>
		    									<ul class="dropdown-menu">
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('societyService','houseTab')">Houses</a></li>
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('societyService','membersTab')">Members</a></li>
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('societyService','parkingTab')">Parking</a></li>
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('societyService','amenitiesTab')">Amenities</a></li>
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('societyService','staffTab')">Staff</a></li>
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('societyService','vendorsTab')">Vendors</a></li>
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('societyService','goodsTab')">Goods</a></li>
		    									</ul>
		  									</div>
	  									</li>
	  									<li>
		        							<div class="dropdown">
		    									<button class="btn dropdown-toggle btn_toggle" type="button" data-toggle="dropdown">Management
		    										<span class="caret"></span>
		    									</button>
		    									<ul class="dropdown-menu">
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('management','memberTab')">Members</a></li>
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('management','staffTab')">Staff</a></li>
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('management','vendorsTab')">Vendors</a></li>
		    										<li><a data-toggle="pill" href="#menu1" onclick="openSocietyTab('management','goodsTab')">Goods</a></li>
		    									</ul>
		  									</div>
	  									</li>
	  									<li><a data-toggle="pill" href="#menu1">Finance</a></li>
	  									<li><a data-toggle="pill" href="#menu1">Events</a></li>
	  									<li><a data-toggle="pill" href="#menu1">Reports</a></li>
	  									<li><a data-toggle="pill" href="#aboutUs">About Us</a></li>
	  									
      								</ul>
    							</div>
  							</div>
						</nav>
 
 				<div class="tab-content"style="height: 380px;">
    				<div id="photoGallary" class="tab-pane fade in active" style="background-color: white;">
      					<h3><u>Welcome to Sukhwani Niketan.</u></h3>
      					<div style="border: solid; height: 345px;overflow-y: scroll; background-color: gray">
      					
      						<div class="slideshow-container" >
      							
      							<div class="mySlides fade">
  									<div class="numbertext">1 / 4</div>
  									<img src="/images/sukhwani_img1.jpg" alt="demo image" style="width:100%">
  									<div class="text">Building Plan</div>
								</div>
								
								<div class="mySlides fade">
  									<div class="numbertext">2 / 4</div>
  									<img src="/images/sukhwani_img2.jpg" style="width:100%">
  									<div class="text">Interior Plan</div>
								</div>
								
								<div class="mySlides fade">
  									<div class="numbertext">3 / 4</div>
  									<img src="/images/sukhwani_img3.jpg" style="width:100%">
  									<div class="text">Interior Plan</div>
								</div>
								
								<div class="mySlides fade">
  									<div class="numbertext">4 / 4</div>
  									<img src="/images/sukhwani_img4.jpg" style="width:100%">
  									<div class="text">Floor Plan</div>
								</div>
								
								<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
								<a class="next" onclick="plusSlides(1)">&#10095;</a>
      							
      							
      						</div>
      						<br>
      						
      						<div>
      							<div style="text-align:center">
  									<span class="dot" onclick="currentSlide(1)"></span> 
  									<span class="dot" onclick="currentSlide(2)"></span> 
  									<span class="dot" onclick="currentSlide(3)"></span> 
  									<span class="dot" onclick="currentSlide(4)"></span> 
								</div>
      						</div>
      						
      					</div>
    				</div>
    				
    				<div id="menu1" class="tab-pane fade" >
      				</div>
    				
    				
    				<div id="tabToOpen" class="tab-pane fade" >
      					<h3>Tab to open</h3>
      					<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    				</div>
    				
    				<div id="aboutUs" class="tab-pane fade">
      					<h3>Welcome to Sukhwani Niketan-F.</h3>
      					<div style="border: solid; background-color: silver;">
     						<p>Secretary Name : Mr. Rahul Gopal Kinge</p>
     						<p>Flat No : Flat No:403</p>
     						<p>Contact Details : 8793344570</p>
      					</div>
    				</div>
  				</div>
		</div>
		</div>
	</div>
	<div class="container-fluid footer">
			<div class="footer_inner">footer</div>
	</div>
	
</section>
</body>
</html>