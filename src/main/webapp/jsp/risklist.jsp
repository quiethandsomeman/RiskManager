<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! int risknum=0; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	div.logout{
		height:50px;
		background-color:gray;
		color:white;
	}
	p.to-right{
		margin-top:0.5cm;
		margin-right:1cm;
		float:right;
	}
	button.menu-button{
		width:500px；
	}
	div.top-menu{
		margin-left:0.25cm;
		margin-top:0.1cm;
		margin-bottom:0.1cm;
	}
	button.addriskbutton{
		margin-left:8cm;
	}
	#project-info{
		margin-left:0.25cm;
		margin-top:0.25cm;
	}
	#risk-title{
		margin-left:0.25cm;
		margin-top:0.25cm;
	}
	#risk-list{
		margin-left:0.25cm;
		margin-top:0.25cm;
	}
</style>
</head>
<body>
	<div class="logout">
		<p class="to-right">wlecome,<% out.print("the id "); %>!</p>
	</div>
	<div class="top-menu">
		<table>
			<tr>
				<td><button class="menu-button" type="button" name="addrisk" onClick="location.href='addrisk.jsp'">add risk </button></td>
			</tr>
		</table>
	</div>
	<div id="project-info">
		<table>
			<tr>
				<td><font size="4">Project <%out.println("project id/project name");%></font></td>
			</tr>
			<tr>
				<td><p>created by <%out.println("userid");%>, </p></td>
				<td><p>risk number: <%out.println("num"); %></p></td>
			</tr>
		</table>
	</div>
	<div id="risk-title">
		<table>
			<tr>
				<td><font size="3">Risk List</font></td>
				<td><button class="addriskbutton" type="button" onCLick="location.href=addRisk.jsp">Add Risk</button></td>
			</tr>
		</table>
	</div>
	<div id="risk-list">
		<%for(risknum=5;risknum>0;risknum++){ %>
		<jsp:include page="risklistitem.jsp" flush="true" />
			<br />
		<%}%>
	</div>
</body>
</html>