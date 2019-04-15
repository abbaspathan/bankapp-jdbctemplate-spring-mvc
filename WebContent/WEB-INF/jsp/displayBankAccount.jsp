<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank Details</title>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<h2>Account Details</h2>

	<table>
		<thead>
			<tr>
				<th>account_id</th>
				<th>customer_name</th>
				<th>account_type</th>
				<th>account_balance</th>
			</tr>
		</thead>
		<tbody>

			<tr>
				<td>${message.accountId}</td>
				<td>${message.accountHolderName}</td>
				<td>${message.accountType}</td>
				<td>${message.accountBalance}</td>
			</tr>

		</tbody>
	</table>
</body>
</html>