<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%System.out.println("helloworld!"); %>
<!DOCTYPE html PUBLIC "-//W3C//Dhttps://github.com/quiethandsomeman/RiskManager.gitTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Project Risk Manager</title>
<style>
#login-text {
	color:black;
	margin-left:2cm;
	margin-top:2cm;
}
#login-item{
	margin-top:2.5cm;
	margin-left:3cm;
	float:right;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td>
				<div id="login-text">
				<h1 >Risk&nbsp;Manager</h1>
				<p>Your project butler.</p>
				</div>
			</td>
			<td>
				<div id="login-item">
				<form action="/riskmanager/jsp/CheckAccount" method="post">
				<input type="text" name="name" value="user id or e-mail address:)">
				<br>
				<input type="password" name="password">
				<br>
				<input type="submit" name="login" value="login">
				</form></div>
			</td>
		</tr>
	</table>
	
</body>

</html>