<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking Website</title>
<style>
body {
	margin: 0;
}

header {
	background: black;
	color: white;
	padding: 8px 0px 6px 40px;
	height: 40px;
}

header h1 {
	font-family: 'Times New Roman', Times, serif;
	display: inline;
	font-weight: 400;
	font-size: 32px;
	float: left;
	margin-top: 0px;
	margin-left: 10px;
}

nav ul {
	display: inline;
	padding: 0px;
	float: left;
}

nav ul li {
	display: inline-block;
	list-style-type: none;
	color: white;
	float: left;
	margin-right: 12px;
}

nav ul li a {
	color: white;
	text-decoration: none;
}

#nav {
	font-family: 'Times New Roman', Times, serif;
}

.homered {
	background-color: red;
	padding: 30px 10px 13px 10px;
}

.divider {
	background-color: red;
	height: 5px;
}

.homeblack:hover {
	background-color: blue;
	padding: 30px 10px 13px 10px;
}

.bottom {
	position: absolute;
	top: 8px;
	right: 16px;
}

body, html {
	height: 100%;
	margin: 0;
}

.bg {
	background-image: url("bank1.jpg");
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.text-block {
	position: absolute;
	bottom: 400px;
	right: 200px;
	color: white;
	font-size: 30px;
	color: lawngreen;
}
</style>
</head>
<body>
	<header>
		<nav>
			<h1>Net Banking</h1>
			<ul id="nav">
				<li><a class="homered" href="#">Home</a></li>
				<li><a class="homeblack"
					href="/bank-app-jdbctemplate-mvc/bankapp/bank/form">Open New
						Account</a></li>
				<li><a class="homeblack"
					href="/bank-app-jdbctemplate-mvc/bankapp/bank/getWithdrawForm">Withdraw</a></li>
				<li><a class="homeblack"
					href="/bank-app-jdbctemplate-mvc/bankapp/bank/getDepositForm">Deposit</a></li>
				<li><a class="homeblack"
					href="/bank-app-jdbctemplate-mvc/bankapp/bank/getFundTransferForm">Fund
						Transfer</a></li>
				<li><a class="homeblack"
					href="/bank-app-jdbctemplate-mvc/bankapp/bank/getBalanceForm">Check
						Balance</a></li>
				<li><a class="homeblack"
					href="/bank-app-jdbctemplate-mvc/bankapp/bank/getSearchAccountForm">Search
						Account </a></li>
				<li><a class="homeblack"
					href="/bank-app-jdbctemplate-mvc/bankapp/bank/displayAllBankAccount">Display
						All BankAccount </a></li>
				<li><a class="homeblack"
					href="/bank-app-jdbctemplate-mvc/bankapp/bank/getDeleteForm">Delete
						Account </a></li>
				<li><a class="homeblack"
					href="/bank-app-jdbctemplate-mvc/bankapp/bank/getUpdateDetailForm">Update
						Bank Account</a></li>
			</ul>
		</nav>
	</header>
	<div class="divider"></div>
	<div class="bg"></div>
	<div class="text-block">
		<h1>
			Welcome To Online<br> Banking
		</h1>
	</div>
</body>
</html>