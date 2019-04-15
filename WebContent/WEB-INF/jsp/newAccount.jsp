<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>New Account</h2>
	<form action="/bank-app-jdbctemplate-mvc/bankapp/bank/addnew" method="post">

		Account Holder Name:<br> <input type="text" name="accountHolderName"
			placeholder="enter your name"> <br> Account Balance:<br>
		<input type="number" name="accountBalance"
			placeholder="enter initial balance"> <br> Account Type:<br>
		<select name="accountType">
			<option value="" selected>--select--</option>
			<option value="Saving">Saving</option>
			<option value="Current">Current</option>
		</select> <br> <br> <input type="submit" value="Create Account">
	</form>
</body>
</html>