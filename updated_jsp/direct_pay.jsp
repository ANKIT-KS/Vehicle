<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Direct Pay</title>
</head>

<body>
<a href="home.jsp" id="user">Home</a>&nbsp;&nbsp;
	<h2>Direct Pay</h2>
	<center>
	<div class="ex">
		<form action="PaymentServlet" method="post">
			<%   Cookie ck1=new Cookie("mode","Direct Pay");//creating cookie object  
        response.addCookie(ck1);//adding cookie in the response  
		    %>	
		   
        <table style="with: 50%">
				<tr>
					<h3><td>Policy Id</td></h3>
					<td><input type="text" name="policy_id" /></td>
				</tr>
				<tr>
					<h3><td>Amount</td></h3>
					<td><input type="number" name="amount" /></td>
				</tr>
				
				<tr>
					<h3><td>Payment Mode</td></h3>
					<td><input type="radio" name="mop" value="debit" checked>Debit Card</td>
					<td><input type="radio" name="mop" value="credit" unchecked>Credit Card</td>
					<td><input type="radio" name="mop" value="net" unchecked>Net Banking</td>
				</tr>
				<tr>
					<h3><td>Contact No.</td></h3>
					<td><input type="number" name="contact" maxlength="10" /></td>
				</tr>
				
			</table>
			
			<input type="submit"class="button button2" value="Pay" />
			<input type="Reset"class="button button2" />
		</form>
	</div>
</center>
</body>
</html>