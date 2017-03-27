
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="cities.js"></script>
<title>User Register</title>
</head>

<body>
<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
	<h2>User Registration</h2>
	<center>
	<div class="ex">
		<form action="RegistrationServlet" method="post">
			<table style="with: 50%">
		
				<tr>
					<h3><td>Name</td></h3>
					<td><input type="text" required name="name" pattern="[a-zA-Z ]*" /></td>
				</tr>
				<tr>
					<h3><td>Password</td></h3>
					<td><input type="password" required name="password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{3,}$" /></td>
				</tr>
				<tr>
					<h3><td>Address</td></h3>
					<td><input type="text" required name="address" pattern="^[A-Za-z\d ]*" /></td>
				</tr>

				<tr>
<h3><td style="text-align: left;">Country</td></h3>
<td style="text-align: left;">
<select name="country" id="country" onchange="setStates();">
  <option value="India ">India</option>
</select>
</td>
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
<h3><td style="text-align: left;">City</td></h3>
<td style="text-align: left;">
<select name="city"  id="city">
  <option value="">Please select a city</option>
</select>
</td>
</tr>
				
				<tr>
				<h3>	<td>Pin Code</td></h3>
					<td><input type="text" required name="pincode" maxlength="6" pattern="[\d]{6}"/></td>
				</tr>
				<tr>
					<h3><td>E-mail</td></h3>
					<td><input type="email" required name="email" pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" /></td>
				</tr>
				<tr>
					<h3><td>Gender</td></h3>
					<td><input type="radio" name="gender" value="male" checked>Male</td>
					<td><input type="radio" name="gender" value="female" checked>Female</td>
					<td><input type="radio" name="gender" value="other" checked>Other</td>
				</tr>
				<tr>
					<h3><td>Contact No.</td></h3>
					<td><input type="text" required name="contact" maxlength="10" pattern="[\d]{10}"/></td>
				</tr>
				<tr>
					<h3><td>Date of Birth</td></h3>
					<td><input type="text" required name="dob" placeholder="yyyy-mm-dd" /></td>
				</tr>
				
			</table>
			
			<input type="submit" class="button button2" value="Register" />
			<input type="reset" class="button button2"/>
		</form>
	</div>
	</center>
</body>
</html>