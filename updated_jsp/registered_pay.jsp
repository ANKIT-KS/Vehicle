<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered Pay</title>
</head>

<body>
<a href="home.jsp" id="user">Home</a>&nbsp;&nbsp;
	<h2>Registered Pay</h2>
	<div class="ex">
		<form action="RegisteredPayServlet" method="post">
		<center>
			<table style="with: 50%">
<% 
	  try{
//Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection connection =DriverManager.getConnection
            ("jdbc:mysql://localhost:3306/vis?user=root&password=password-1");

  Cookie ck[]=request.getCookies(); 
  int id =Integer.parseInt(ck[0].getValue());
       PreparedStatement s = null;
      String sql = "SELECT Policy_id,Policy_amount,Policy_date from vehicle_registration where Vehicle_ownerid = ?";
				s = connection.prepareStatement(sql);
				s.setInt(1,id);
	      
	            ResultSet rSet = s.executeQuery();
%>
<%   Cookie ck1=new Cookie("mode","Registered Pay");//creating cookie object  
        response.addCookie(ck1);//adding cookie in the response  
		    %>	


    <tr>
    <td> Select Policy</td>
     <td>  <select name="Policyid" id="Policyid" >
        <%  while(rSet.next()){ %>
            <option><%= rSet.getString(1)%></option>             
        <% } %>
        </select> 
     </td>
        </tr>
        
        
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
  
				<tr>
					<td>Payment Mode</td>
					<td><input type="radio" name="mop" value="debit" checked>Debit Card</td>
					<td><input type="radio" name="mop" value="credit" unchecked>Credit Card</td>
					<td><input type="radio" name="mop" value="net" unchecked>Net Banking</td>
				</tr>
				<tr>
					<td>Contact No.</td>
					<td><input type="number" name="contact" maxlength="10" /></td>
				</tr>
				
			</table>
			
			<input type="submit" class="button button2" value="Pay" />
			<input type="reset" class="button button2"/>
			</center>
		</form>
	</div>

</body>
</html>