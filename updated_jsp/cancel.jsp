<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
	<link rel="stylesheet" href="styles.css">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
		<title>Cancel Page</title>
	</head>


	<body>
	<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
		<form action="CancelServlet" method="post">
		<center>
<h2>Policy Cancellation</h2>
			<tr>
					<h3><td>Please enter your policy number	</td></h3>
			<td><input type="text" name="username"/></td><br>		
		
			</tr>
			
			<input type="submit" class="button button2" value="cancel">			
		</center>
		</form>
	</body>
</html>