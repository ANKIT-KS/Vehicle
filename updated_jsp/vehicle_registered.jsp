<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle Registered</title>
</head>

<body>
<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
 <center>
            <h2>Vehicle Registered Successfully</h2>
            
        <table style="with: 30%">
        <tr>
           <h3><td>    
        Policy ID:</td></h3>
        <td> <input type="text" name="policy_id" value="<%= request.getAttribute("PolicyID") %>"></td><br> 
          </tr>  
           <tr>
           <h3><td> Amount:</td></h3>
             <td><input type="text" name="amount" value="<%= request.getAttribute("Amount") %>"></td><br>
            </tr>
            <tr>
           <h3><td>Date:</td></h3>
              <td><input type="text" name="date" value="<%= request.getAttribute("Date") %>"></td><br>
              </tr>
      </table>    
     </center>   
         
</body>
</html>