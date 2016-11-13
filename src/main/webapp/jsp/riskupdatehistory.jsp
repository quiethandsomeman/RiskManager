<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!int historynum = 5; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#history-table{
		margin-top=0.25cm;
		margin-left=1cm;
	}
</style>
</head>
<body>
	<table id=history-table border="1">
		<tr>
			<th> date </th>
			<th> watcher </th>
		</tr>
		<%for(;historynum>0;historynum--){ %>
			<tr>
				<td><p><% out.println("yyyy-mm-dd"); %></p></td>
				<td><p><% out.println("userid"); %></p></td>
			</tr>
		<%} %>
	</table>
</body>
</html>