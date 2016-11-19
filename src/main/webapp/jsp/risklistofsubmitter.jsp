<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String username="user name"; %>
<%! String projectname="project name"; 
	String projectdescription = "project description";
	%>
<%! int listnum = 2; %>
<%! String listitemtype = "type"; 
	String listitemdes = "balbalbalbalbalblablablabalball";
	String listitempossibility = "high";
	String listitemimpact = "high";
	String listitemthreshold = "balabala 70%";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>risklist</title>
	<style>
		div.welcome{
			height:50px;
			background-color:gray;
			color:white;
		}
		p.welcometext{
			margin-top:0.5cm;
			margin-right:1cm;
			float:right;
		}
		div.listtitle{
			margin-top:0.5cm;
			margin-left:0.5cm;
		}
		div.list{
			margin-top:0.5cm;
			margin-left:0.5cm;
		}
	</style>
</head>
<body>
	<div class="welcome">
		<p class="welcometext">Welcome, <%=username %></p>
	</div>
	<div class="listtitle">
		<table>
			<tr>
				<td width="60%"><p> Risk List </p></td>
				<td><button name="addrisk" onClick="location.href='/riskmanager-0.0.1-SNAPSHOT/jsp/addriskofsubmitter.jsp'"> Add Risk</button></td>
			</tr>
		</table>
	</div>
	<div class="list">
		<%for(int i=listnum;i>0;i--){ %>
			<div class=projectlistitem>
				<table>
					<tr>
						<td><p><%=listitemtype %></p></td>
						<td><button name="check" onClick="location.href='/riskmanager-0.0.1-SNAPSHOT/jsp/risklistofsubmitter.jsp?name="<%out.println("projectname"); %>> Check </button></td>
					</tr>
					<tr>
						<td><p>Description: <%=listitemdes %></p></td>
					</tr>
					<tr>
						<td><p>Possibility: <%=listitempossibility %></p></td>
						<td><p>Impact: <%=listitemimpact %></p></td>
					</tr>
					<tr>
						<td><p>Threshold: <%=listitemthreshold %></p></td>
					</tr>
				</table>
			</div>
		<%} %>
	</div>
</body>
</html>