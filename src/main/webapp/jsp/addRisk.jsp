<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String i=request.getParameter("pid");
	int pid=Integer.parseInt(i);
	request.setAttribute("pid",pid);
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>加入风险</title>
</head>
<body>
	<div id="risk-table">
		<form action="/riskmanager-0.0.1-SNAPSHOT/jsp/doaddrisk.jsp" method="post">
		<table class="fixedtable">
		<tr>
			<td width="20%">
				<p>Risk Description: </p>
			</td>
			<td>
				<textarea rows="2" cols="40" name="riskdescription"></textarea>
			</td>
		</tr>
		<tr>
			<td width=20%>
				<p>Risk Probability: </p>
			</td>
			<td width="30%">
				<input type="text" name="riskprobility">
			</td>
			<td width=20%>
				<p>Impact Level: </p>
			</td>
			<td width=30%>
				<input type="text" name="impactlevel">
			</td>
		</tr>
		<tr>
			<td width="20%">
				<p>threshold: </p>
			</td>
			<td>
				<input type="text" name="threshold">
			</td>
		</tr>
		<tr>
			<td width="20%">
				<p>pid: </p>
			</td>
			<td>
				<input type="text" name="pid" value="<%=pid%>">
			</td>
		</tr>
		<tr>
			<td>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
				<input type="submit" name="saverisk" value=" Save ">
			</td>
		</tr>
	</table>
	</div>
</body>
</html>