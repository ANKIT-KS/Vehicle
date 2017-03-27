<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="type.js"></script>

<title>Vehicle Register</title>
</head>

<body>
<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
	<h2>Vehicle Registration</h2>
	<center>
	<div class="ex">
		<form action="VehicleRegistrationServlet" method="post">
		

		
			<table style="with: 50%">
				<tr>
					<h3><td>Owner ID</td></h3>
					<td><input type="text" name="id" /></td>
				</tr>
				<tr>
<h3><td style="text-align: left;">State</td></h3>
<td style="text-align: left;">
<select name="state" id="state" onchange="setCities();">
  <option value="">Please select a state</option>
</select>
</td>
</tr>
				
				
				
				
				<tr>
<h3><td style="text-align: left;">Type</td></h3>
<td style="text-align: left;">
<select name="type" id="type" onchange="setManu();">
  <option value="Two Wheeler">Two Wheeler</option>
  <option value="Four Wheeler">Four Wheeler</option>
</select>
</td>
</tr><tr>
<h3><td style="text-align: left;">Manufacturer</td></h3>>
<td style="text-align: left;">
<select name="manufacturer" id="manufacturer" onchange="setModel();">
  <option value="">Please select a manufacturer</option>
</select>
</td>
</tr><tr>
<h3><td style="text-align: left;">Model</td></h3>
<td style="text-align: left;">
<select name="model"  id="model">
  <option value="">Please select a model</option>
</select>
</td>
</tr>
				<tr>
					<h3><td>Class</td></h3>
					<td><input type="radio" name="class" value="private" checked>Private</td>
					<td><input type="radio" name="class" value="public" checked>Public</td>
				
				</tr>
				
				
				
				<tr>
					<h3><td>Engine Number</td></h3>
					<td><input type="text" required name="engine" /></td>
				</tr>
				<tr>
					<h3><td>Year of Make</td></h3>
					<td><input type="year" required name="yom" maxlength="4"/></td>
				</tr>
					<tr>
<h3><td style="text-align: left;">Registering Location</td></h3>
<td style="text-align: left;">
<select name="city"  id="city">
  <option value="">Please select a city</option>
</select>
</td>
</tr>
<tr>
					<h3><td>Price</td></h3>
					<td><input type="text" required name="price" /></td>
				</tr>
				<tr>
					<h3><td>Date of Purchase</td></h3>
					<td><input type="text" required name="dop" placeholder="yyyy-mm-dd" /></td>
				</tr>
			</table>
			
			<input type="submit"  class="button button2" value="register"   />
		</form>
	</div>
	</center>
</body>
</html>