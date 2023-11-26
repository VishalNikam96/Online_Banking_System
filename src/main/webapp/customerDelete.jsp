<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete account page</title>
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
			<form action="customerdeleteaccount" method="post">
				<h1 style="color: red"><span style="color: #0048ba">Dear Customer,</span> <br>Welcome to our Bank</h1>
				<%
					long accountNumber = (Long) session.getAttribute("customeraccountnum") ;	
					out.println("Your account number: " + accountNumber) ;
				%> <br><br> 
				Enter Pincode: <input type="password" name="pincode" placeholder="Enter pincode.." Required> <br><br>
				<input type="submit" value="Delete Account" class="btn">
				<input type="reset" value="Reset" class="btn"> <br><br>
			</form>
			<button class="btn1"><a href="customerMenu.html">Back</a></button>
		</div>
</body>
</html>