<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered Pay Login</title>
</head>

<body>
<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
	
 <center>
           <h2> Payment Information</h2>
             
            <form action="PaymentServlet" method="post">
      <table style="with: 30%">
           <tr>
           <h3><td>Policy ID:</td></h3>
           <td><input type="text" name="policy_id" value="<%= request.getAttribute("policy_id") %>"></td><br>
        </tr>
           <tr>
            <h3><td> Amount:</td></h3>
            <td><input type="text" name="amount" value="<%= request.getAttribute("amount") %>"></td><br>
           </tr>  
          <tr>
             <h3><td>Date:</td></h3>
             <td><input type="text" name="date" value="<%= request.getAttribute("Date") %>"></td><br>
       </tr>
             <tr> <h3><td>Contact:</td></h3>
             <td><input type="text" name="contact" value="<%= request.getAttribute("contact") %>"></td><br>
        </tr>
             <tr> <h3><td>Payment Mode:</td></h3>
             <td><input type="text" name="mop" value="<%= request.getAttribute("mop") %>"></td><br>
           </tr> 
           </table>
        	<input type="submit" class="button button2" value="pay" />
			<input type="reset" class="button button2"/>
         </form>
         </center>
</body>
</html>