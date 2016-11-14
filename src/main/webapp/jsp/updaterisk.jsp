<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String i=request.getParameter("pid");
	String i2=request.getParameter("rid");
int pid=Integer.parseInt(i);
	int rid=Integer.parseInt(i2);
request.setAttribute("pid",pid);
	request.setAttribute("rid",rid);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改风险</title>
</head>
<body>
	<div id="risk-table">
		<form action="/riskmanager/jsp/doupdaterisk.jsp" method="post">
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
			<td>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
				<input type="submit" name="saverisk" value=" Save ">
			</td>
		</tr>
	</table>
	</div>
</body>
</html>