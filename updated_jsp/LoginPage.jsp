<!DOCTYPE html >

<html>
	<head>
    <link rel="stylesheet" href="styles.css">
		<title>Login Page</title>
		
	</head>

	<body>
	
	<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
		<form action="LoginServlet" method="post">

			<h2>Please enter your username</h2>		
			<h2><input type="text" name="username"/></h2><br>		
		
			    <h2>Please enter your password</h2>
			<h2><input type="password" name="password"/></h2><br>
			<% 
	String a=request.getParameter("value");  
    
%>
			<%request.setAttribute("value", a); %>
			
			<h2><input type="submit" class="button button2" value="Login">	</h2>		
		</form>
	</body>
</html>
