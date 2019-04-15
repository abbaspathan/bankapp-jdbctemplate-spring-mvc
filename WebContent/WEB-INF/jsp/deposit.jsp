<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
        <h2>Deposit Amount</h2>
    <form action="/bank-app-jdbctemplate-mvc/bankapp/bank/depositBalance" method="post" >
        Account Id:<br>
        <input type="number" name="account_id" placeholder="enter your account id" >
        <br>
        Deposit Amount:<br>
        <input type="number" name="amount" placeholder="enter deposit amount" >
        <br>
        <br>
        <input type="submit" value="Deposit">
     </form>
</body>
</html>