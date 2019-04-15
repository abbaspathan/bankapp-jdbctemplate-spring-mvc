<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Check Balance</h2>
    <form action="/bank-app-jdbctemplate-mvc/bankapp/bank/getBalance" method="post" >
        Account Id:<br>
        <input type="number" name="account_id" placeholder="enter your account id">
        <br>
        <br>
        <input type="submit" value="Check Balance">
     </form>
</body>
</html>