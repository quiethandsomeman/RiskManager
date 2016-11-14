<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! int risknum=0; %>
<% String s=request.getParameter("id");
    String usr=(String)request.getSession().getAttribute("username");
%>
<%@ page import="riskmanager.riskHandler.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>风险列表</title>
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
	<div id="project-info">
		<table>
			<tr>
				<td><font size="4">Project <%out.println(s);%></font></td>
			</tr>
			<tr>
				<td><p>created by <%out.println(usr);%>, </p></td>
			</tr>
		</table>
	</div>
	<div id="risk-title">
		<table>
			<tr>
				<td><font size="3">Risk List</font></td>
				<td><button class="addriskbutton" type="button" onCLick="location.href='/riskmanager/jsp/addRisk.jsp?pid=<%=s%>'">Add Risk</button></td>
				
			</tr>
		</table>
	</div>
	<div id="risk-list">
		<%

			int id=Integer.parseInt(s);
			ShowRisk sr=new ShowRisk();
			ArrayList<Risk> ars=sr.getRiskList(id);

			for(risknum=0;risknum<ars.size();risknum++){



		

		%>
		<tr>
			<td width="30%"><%out.print(ars.get(risknum).getRiskid());%></td>
			<td><% out.println(ars.get(risknum).getPossibility());%></td>
		</tr>
		<tr>
			<td width="70%"><p><% out.print(ars.get(risknum).getValue()); %></p></td>
			<td><% out.println(ars.get(risknum).getInfo());%></td>
		</tr>
		<tr>
			<td width="70%"><p><% out.print(ars.get(risknum).getEffect()); %></p></td>
		</tr>

		<tr>
			<td><button type="button" name="check" onClick="location.href='/riskmanager/jsp/riskupdatehistory.jsp?rid=<%=ars.get(risknum).getRiskid()%>&&pid=id'"> check </button></td>
			<td><button type="button" name="check" onclick="location.href='/riskmanager/jsp/updaterisk.jsp?rid=<%=ars.get(risknum).getRiskid()%>&&pid=id'"> update</button> </td>
		</tr>
		<br>
		<%}%>
	</div>
</body>
</html>