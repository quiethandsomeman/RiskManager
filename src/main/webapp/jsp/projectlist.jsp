<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! int pnum; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Project List</title>
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
</style>
</head>
<body>
	<div class="logout">
		<p class="to-right">wlecome,<% out.print("the id "); %>!</p>
	</div>
	<div class="top-menu">
		<table>
			<tr>
				<td><button class="menu-button" type="button" name="addproject" onClick="location.href='addproject.jsp'">add project...</button></td>
				<td><button class="menu-button" type="button" name="searchproject" onClick="location.href='risklist.jsp'">search project</button></td>
				<td><button class="menu-button" type="button" name="deleteproject" onClick="location.href='delproject.jsp'">delete project</button></td>
			</tr>
		</table>
	</div>
	<div id="project-list">
		<%for(pnum=5;pnum>0;pnum--){ %>
			<jsp:include page="projectitem.jsp" flush="true" />
			<br />
		<%}%>
	</div>
</body>
</html>