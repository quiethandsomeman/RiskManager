<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table.fixedtable{
		table-layout:fixed;
	}
</style>
</head>
<body>
	<table class="fixedtable">
		<tr>
			<td width="20%">
				<p>Risk ID: </p>
			</td>
			<td width="20%">
				<p><%out.println("risk id"); %></p>
			</td>
			<td width="20%">
				<button type="button" name="updaterisk" value="Update" onClick="location.href='updaterisk.jsp'">Update</button>
			</td>
			<td width="20%">
				<button type="button" name="checkupdaterisk" value="CheckUpdate" onClick="location.href='riskupdatehistory.jsp'">Update Log</button>
			</td>
		</tr>
		<tr>
			<td width="20%">
				<p>Risk Description: </p>
			</td>
			<td>
				<p><%out.println("description"); %></p>
			</td>
		</tr>
		<tr>
			<td width=20%>
				<p>Risk Probability: </p>
			</td>
			<td width="30%">
				<p><%out.println("probability"); %></p>
			</td>
			<td width=20%>
				<p>Impact Level: </p>
			</td>
			<td width=30%>
				<p><%out.println("high"); %></p>
			</td>
		</tr>
		<tr>
			<td width="20%">
				<p>threshold: </p>
			</td>
			<td>
				<p><%out.println("balabala >20%"); %></p>
			</td>
		</tr>
		<tr>
			<td width=20%>
				<p>Creator: </p>
			</td>
			<td width="30%">
				<p><%out.println("uerid"); %></p>
			</td>
			<td width=20%>
				<p>Watcher: </p>
			</td>
			<td width=30%>
				<p><%out.println("userid"); %></p>
			</td>
		</tr>
	</table>
</body>
</html>