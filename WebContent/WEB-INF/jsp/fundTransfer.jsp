<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <h2>Fund Transfer</h2>
	<form action="/bank-app-jdbctemplate-mvc/bankapp/bank//fundTransfer" method="post">
		Sender Account Id:<br> <input type="number"
			name="sender_account_id" placeholder="enter sender account id">
		<br> Reciver Account Id:<br> <input type="number"
			name="reciver_account_id" placeholder="enter reciver account id">
		<br> Fund Amount:<br> <input type="number" name="amount"
			placeholder="enter fund transfer amount"> <br> <br>
		<input type="submit" value="Transfer">
	</form>
</body>
</html>