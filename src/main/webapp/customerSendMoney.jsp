<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>send money page</title>
<style type="text/css">
	
	body
	{
		background-image: url("https://img.freepik.com/free-photo/orange-bokeh-lights-background_53876-98264.jpg?w=1060&t=st=1692876541~exp=1692877141~hmac=972bd6c097a791e3330104858f5d9851924fb9eda7aaee4470a3938af509ac16");
		background-repeat: no-repeat;
		background-size: cover;
		text-align: center ; 
	}
	
	.btn
	{
		background-color: lightgreen ;
		border: 2px solid red ;
	}
	
	a
	{
		text-decoration: none;
		color: black;
	}
	
	.btn1
	{
		border: 1.5px solid black ;
		background-color: yellow;
	}
	
</style>
</head>
<body>
			
			<div>
			<form action="customersendmoney" method="post">
				<h1 style="color: red"><span style="color: #0048ba">Dear Customer,</span> <br>Welcome to our Bank</h1>
				<%
					long accountNumber = (Long) session.getAttribute("customeraccountnum") ;	
					out.println("From: " + accountNumber) ;
				%><br><br>
				Send To: <input type="number" name="Snumber" placeholder="Enter account number.." Required> <br><br> 
				Amount: <input type="number" name="amount" placeholder="Enter amount.." Required> <br><br>
				Pincode: <input type="password" name="pincode" placeholder="Enter pincode.." Required> <br><br>
				<input type="submit" value="Send Money" class="btn">
				<input type="reset" value="Reset" class="btn"> <br><br>
			</form>
			<button class="btn1"><a href="customerMenu.html">Back</a></button>
		</div>

</body>
</html>