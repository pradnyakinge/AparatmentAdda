
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
</style>
<body>
<script>
	function openSocietyTab(divName, parentTabName, subTabName)
	{
		debugger;
		var i;
		  var x = document.getElementById(divName); 
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
			        var theInfoDiv = document.getElementById('tabToOpen');  
			       // theInfoDiv.classList.add(x);  
			       // theInfoDiv.classList.remove('hidden');  
			        document.getElementById("tabToOpen").innerHTML = x;
			    },	
			    error : function(e) {
			        console.log("ERROR: ", e);
			    }
		  });
	}
</script>
<section>
			<!-- header section start -->
			<div class="container-fluid header">
				<div class="row">
					<div class="col-md-4">
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
					<div class="col-md-4" style="background:#e0ebeb">
						<div>
							<h3><B>News Letter</B> </h3>
						</div>
			 			<div class = "main" style="height: 380px;"> 
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
					<div class="col-md-8" style="padding: 2px;">
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
		    										<li><a href="#" onclick="openSocietyTab('tabToOpen','societyService','houseTab')">Houses</a></li>
		    										<li><a href="#">Members</a></li>
		    										<li><a href="#">Parking</a></li>
		    										<li><a href="#">Amenities</a></li>
		    										<li><a href="#">Staff</a></li>
		    										<li><a href="#">Vendors</a></li>
		    										<li><a href="#">Goods</a></li>
		    									</ul>
		  									</div>
	  									</li>
	  									<li>
		        							<div class="dropdown">
		    									<button class="btn dropdown-toggle btn_toggle" type="button" data-toggle="dropdown">Management
		    										<span class="caret"></span>
		    									</button>
		    									<ul class="dropdown-menu">
		    										<li><a href="#">Members</a></li>
		    										<li><a href="#">Staff</a></li>
		    										<li><a href="#">Vendors</a></li>
		    										<li><a href="#">Goods</a></li>
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
    				<div id="photoGallary" class="tab-pane fade in active">
      					<h3>HOME</h3>
      					<p>Photo gallary</p>
    				</div>
    				
    				<div id="menu1" class="tab-pane fade" >
      					<h3>Menu 1</h3>
      					<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
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