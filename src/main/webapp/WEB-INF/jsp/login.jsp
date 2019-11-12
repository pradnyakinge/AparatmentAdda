<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
<title>Welcome to Apartment Adda</title>
</head>
<body>
<center>
<div id="loginDiv" style="text-align:center; border: solid;height:150px; width:480px; background-color: #c6ffff;position: fixed; left: 50 %; margin-left: 37.5%; top: 50%;margin-top: -12. //5%">
<br>
	<form action="loginProcess" method="post">
	
		<label for="username"><b>Username : </b></label>
		<input type="text" placeholder="Enter username" name="username" /><br><br>
		
		<label for="password"><b>Password : </b></label>
		<input type="password" placeholder="Enter password" name="password" /><br><br>
		
		<button type="submit">Login</button>
		&nbsp;&nbsp;<button type="submit">Forget Password</button>
		
	</form>
</div>

</center>
</body>
</html>


<!-- 
Design Standard :

1. Use (for -- name) pair in label and input tag.

 -->