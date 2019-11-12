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
  background-color: #666;
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
  padding: 8px;
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
  background-color: #777;
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
</style>
</head>
<body>

<script>
function openSocietyTab(societyName) {
  var i;
  var x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  document.getElementById(societyName).style.display = "block";  
}
</script>

<header>
  <h3>Sukhwani Niketan Wing-F</h3>
  <p>Sukhwani Niketan, Wing-F, </p><p>Waghere colony-4
     Pimpri, Pune. (411017)</p>
</header>

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
    <!-- the tab section -->
    <div class="w3-bar w3-black">
  		<button class="w3-bar-item w3-button" onclick="openSocietyTab('societyDetails')">Society Details</button>
  		<button class="w3-bar-item w3-button" onclick="openSocietyTab('societyManagement')">Society Management</button>
 	 	<button class="w3-bar-item w3-button" onclick="openSocietyTab('moneyManagement')">Money Management</button>
 	 	<button class="w3-bar-item w3-button" onclick="openSocietyTab('eventNotice')">Event and Notice</button>
 	 	<button class="w3-bar-item w3-button" onclick="openSocietyTab('aboutUs')">About Us</button>
 	 	<button class="w3-bar-item w3-button" onclick="openSocietyTab('reports')">Reports</button>
	</div>
	
	<div id="societyDetails" class="w3-container city">
  		<h2>Society details</h2>
  		<p>Society details has to display</p>
	</div>

	<div id="societyManagement" class="w3-container city" style="display:none">
  		<h2>Society Management</h2>
  		<p>Society Management has to display</p> 
	</div>

	<div id="moneyManagement" class="w3-container city" style="display:none">
  		<h2>Money Management</h2>
  		<p>Money Management has to display</p>
	</div>

	<div id="eventNotice" class="w3-container city" style="display:none">
  		<h2>Event and Notice</h2>
  		<p>Event and Notice has to display</p>
	</div>

	<div id="aboutUs" class="w3-container city" style="display:none">
  		<h3>About Us</h3>
  		<p><b>Address :</b>Sukhwani Niketan , Wing: F, Pimpri, Pune.(411017)</p>
  		<p><b>Phone no :</b>8793344570</p>
  		<hr><hr>
	</div>

	<div id="reports" class="w3-container city" style="display:none">
  		<h2>Tokyo</h2>
  		<p>Tokyo is the capital of Japan.</p>
	</div>
    
    
  </article>
</section>

<footer>
  <p>Footer</p>
</footer>

</body>
</html>
