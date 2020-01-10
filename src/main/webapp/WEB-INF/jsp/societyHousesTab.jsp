<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <style>
	div.parentDiv {
  		background-color: lightblue;
  		overflow: visible;
	}
	
</style> -->
</head>
<body>

<div style="border: solid; height: 380px;overflow-y: scroll; background-color: gray">
      					
<!-- div for get all flat detail from db
	<div>
		<table>
			<tr>
				<th>Flat No </th>
				<th>Area </th>
				<th>Avaiblity</th>
			</tr>
		</table>
	</div>
	<br>
	<hr><hr>
div for search flat detail as per flat no.
	<div>
		<p>Search flat details :</p>
		<label>Enter Flat No :</label>
		<input type="text" name="flatNo">
	</div>
	 -->



<form method="POST" action="MailDispatcherServlet">
		<table>
			<tr>
				<td align="right"><b>To :</b></td>
				<td>
					<input type="text" name="email" size="75">
				</td>
			</tr>
			
			<tr>
				<td align="right"><b>Subject :</b></td>
				<td>
					<input type="text" name="subject" size="75">
				</td>
			</tr>
			
			<tr>
				<td align="right"><b>Message :</b></td>
				<td>
					<textarea name="message" cols="75" rows="6"></textarea>
				</td>
			</tr>
			
			<tr>
				<td></td>
				<td>
					<input type="submit" value="Send">
				</td>
			</tr>
			
		</table>
	</form>
</div>
</body>
</html>