<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accident Claim Data</title>
</head>
<style>
div.ex {
	text-align: right width:300px;
	
	
	margin: 0px
}
</style>
<body>
<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
	<h2>Accident Claim Form</h2>
	<div class="ex">
		<form action="AccidentclaimServlet" method="post">
			<table style="with: 50%"> 
			<%--based on policy id entered, the username and premium amount paid should be displayed--%>
				<tr>
					<td><h3>Accident Type</h3>

					<h3><select name="acc" id="acc">
					<option value="Fire">Fire</option>
					<option value="RoadAccident">RoadAccident</option>
					<option value="MaliciousActs">MaliciousActs</option>
					<option value="Self-Destruction">Self-Destruction</option>
					<option value="PartsFailure">PartsFailure</option>
					</select>
					</h3>
					</td>
					</tr>
			
			
			</table>
			
			<input type="submit"class="button button2" value="Claim" />
			<input type="reset" class="button button2"value="Reset"/>
		</form>
	</div>
</body>
</html>