<!DOCTYPE html>
<html lang="en">
<head>
<title>Welcome to Sukhwani Niketan </title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #000080;
  padding: 5px;
  text-align: left;
  font-size: 15px;
  color: white;
}

/* Container for flexboxes */
section {
  display: -webkit-flex;
  display: flex;
  width: 100%
}

/* Style the navigation menu */
nav {
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  background: #ccc;
  padding: 5px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
  text-align: left;
  font-size: 25px;
}

/* Style the content */
article {
  -webkit-flex: 3;
  -ms-flex: 3;
  flex: 3;
  background-color: #f1f1f1;
  padding: 10px;
}

/* Style the footer */
footer {
  background-color: #000080;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the menu and the content (inside the section) sit on top of each other instead of next to each other */
@media (max-width: 600px) {
  section {
    -webkit-flex-direction: column;
    flex-direction: column;
  }
}


/*Tab section  */
.navbar {
  width: 100%;
  background-color: #555;
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 15px;
  width: 13%; /* Four links of equal widths */
  text-align: center;
}

.navbar a:hover {
  background-color: #000;
}

/* .navbar a.active {
  background-color: #4CAF50;
} */
.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn{
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}
.dropbtnInr
{
  font-size: 14px;  
  background-color: #ffffff;
  border: none;
  outline: none;
  padding: 10px 12px;
 
}

.navbar a:hover, .dropdown:hover .dropbtn{
  background-color: #666666;
}

.dropbtnInr:hover{
	background-color: #bfbfbf;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

}
</style>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    
</head>
<body onload="onPageLoad()">
<script>
function openSocietyTab(tabName) {
  var i;
  var x = document.getElementsByClassName("city");
  
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  var x = document.getElementById(tabName);
  if (window.getComputedStyle(x).visibility === "hidden") {
	    x.style.visibility = "visible";
	  }
  
  var tempId = tabName;
   $.ajax({
	 
	  type : "GET",
	    url : "/ApartmentAdda/housesTab",
	    data : {tabName:tempId},
	    timeout : 100000,
	    success : function(tabName) {
	    	debugger;
	        console.log("SUCCESS: ", tabName);
	        document.getElementById('housesTab').style.display = "block";
	        document.getElementById('housesTab').innerHTML='<object type="text/html" data= "housesTab" ></object>'; 
	        alert(response);   
	    },	
	    error : function(e) {
	        console.log("ERROR: ", e);
	        //display(e);
	    },
	    done : function(e) {
	        console.log("DONE");
	    }
  });
  

}

function onPageLoad()
{
	var x = document.getElementsByClassName("city");
	for (i = 0; i < x.length; i++) {
	    x[i].style.display = "none";  
	  }
}
</script>

<header>
<div style="border: solid; width: 25%; border-radius: 10px; border-width:thin; ">
  <h3>Sukhwani Niketan Wing-F</h3>
  <p>Waghere colony-4
     Pimpri, Pune. (411017)</p>
  <p>Contact no :8793344570</p>
</div>
</header>

<div style="border: solid;">

<section>
  <nav>
    
      <B style="font-size: 21px;"><u>News Letters</u></B>
      <div>
      <marquee behavior="scroll" direction="down">
      	<ul>
      		<li>News no 1</li>
      		<li>News no 2</li>
      		<li>News no 3</li>
      		<li>News no 4</li>
      		<li>News no 5</li>
      		<li>News no 6</li>
      		<li>News no 7</li>
      	</ul>
      </marquee>
      </div>
  </nav>
  
  <article>
 		<div class="navbar">	
 			
 			<a class="active" href="#">Home </a>
 			<div class="dropdown">
 				<button class="dropbtn">Society Services
 					<i class="fa fa-caret-down"></i>
 				</button>
 				<div class="dropdown-content">
 					<button class="w3-bar-item w3-button dropbtnInr" onclick="openSocietyTab('housesTab')">Houses</button><br>
 					<button class="w3-bar-item w3-button dropbtnInr" onclick="openSocietyTab('memberTab')">Members</button><br>
 					<button class="w3-bar-item w3-button dropbtnInr" onclick="openSocietyTab('parkingTab')">Parking</button><br>
 					<button class="w3-bar-item w3-button dropbtnInr" onclick="openSocietyTab('amenitieTab')">Amenities</button><br>
 					<button class="w3-bar-item w3-button dropbtnInr" onclick="openSocietyTab('staffTab')">Staff</button><br>
 					<button class="w3-bar-item w3-button dropbtnInr" onclick="openSocietyTab('vendorTab')">Vendors</button><br>
 					<button class="w3-bar-item w3-button dropbtnInr" onclick="openSocietyTab('goodsTab')">Goods</button><br>
 				</div>
 				</div>
 					<a href="#">Management </a>
 					<a href="#">Finance </a>
 					<a href="#">Events </a>
 					<a href="#">Reports </a>
 					<a href="#">About Us </a>
 				</div>
 		
 		
 		<!-- All inner tab div -->
 		
 		<div id="housesTab" class="w3-container city" style="visibility: hidden;">
  			<h2>Society details</h2>
  			<p>Society details has to display</p>
		</div>
		<div id="memberTab" class="w3-container city" style="visibility: hidden;">
  			<h2>Member details</h2>
  			<p>Member details has to display</p>
		</div>
		<div id="parkingTab" class="w3-container city" style="visibility: hidden;">
  			<h2>Parking details</h2>
  			<p>Parking details has to display</p>
		</div>
		<div id="amenitieTab" class="w3-container city" style="visibility: hidden;">
  			<h2>Ammenities details</h2>
  			<p>Ammenities details has to display</p>
		</div>
		<div id="staffTab" class="w3-container city" style="visibility: hidden;">
  			<h2>Staff details</h2>
  			<p>Staff details has to display</p>
		</div>
		<div id="vendorTab" class="w3-container city" style="visibility: hidden;">
  			<h2>Vendor details</h2>
  			<p>Vendor details has to display</p>
		</div>
		<div id="goodsTab" class="w3-container city" style="visibility: hidden;">
  			<h2>Goods details</h2>
  			<p>Goods details has to display</p>
		</div>
	
	
  </article>
</section>

</div>
<footer>
  <p>Footer</p>
</footer>

</body>
</html>
