<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="riskmanager.projectHandler.*"%>
<%@ page import="java.util.*"%>
<%! int pnum;
	 %>

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
	div.top-menu{
		margin-left:0.25cm;
		margin-top:0.1cm;
		margin-bottom:0.1cm;
	}
</style>
</head>
<body>
	<div class="top-menu">
		<table>
			<tr>
				<td><input type="text" name="searchproject" value="project id"></td>
				<td><input type="submit" name="search" value="search"></td>
			</tr>
		</table>
	</div>
	<div id="project-list">
		<%  ShowProject sp=new ShowProject();
			String s=(String)request.getSession().getAttribute("username");
			ArrayList<Project> ap=sp.getProList(s);
			for(pnum=0;pnum<=ap.size()-1;pnum++){

		%>
			<tr>
				<td width="30%"><%out.print(ap.get(pnum).getProjectid());%></td>
				<td><% out.println(ap.get(pnum).getProname());%></td>
			</tr>
			<tr>
				<td width="70%"><p><% out.print(ap.get(pnum).getUsername()); %></p></td>
				<td><% out.println(ap.get(pnum).getProinfo());%></td>
			</tr>
		    <tr>
				<td><button type="button" name="check" onClick="location.href='/riskmanager/jsp/risklist.jsp?id=<%=ap.get(pnum).getProjectid()%>'"> examine </button></td>
			</tr>
		<br>
		<%}%>
	</div>
     <div>
		 <tr>
			 <td><button type="button" name="add" onClick="location.href='/riskmanager/jsp/addproject.jsp'"> addproject </button></td>
		 </tr>
	 </div>
</body>
</html>