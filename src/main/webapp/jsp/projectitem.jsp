<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>projectitem</title>
<style type="text/css">
</style>
</head>
<body>
<table>
	<tr>
		<td>
			<font size="5"><%out.print(" project id ");%></font>
			<br>
			<br>
			<p><% out.print("developer"); %></p>
		</td>
		<td>
			<p><% out.println("description"); %></p>
			<button type="button" name="check" onClick="location.href='risklist.jsp'"> examine </button>
		</td>
	</tr>
</table>
</body>
</html>