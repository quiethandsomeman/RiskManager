<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! String username="user name"; %>
<%! String RAname="RA name"; 
	String RAdescription = "RA description";
	%>
<%! int listnum = 2; %>
<%! String listitemname = "name"; 
	String listitemdes = "balbalbalbalbalblablablabalball";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RA List</title>
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
			color:white;
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
				<td width="60%"><p> RA List </p></td>
				<td><button name="addRA" onClick="location.href='/riskmanager-0.0.1-SNAPSHOT/jsp/addriskofsubmitter.jsp'"> Add RA</button></td>
			</tr>
		</table>
	</div>
	<div class="list">
		<%for(int i=listnum;i>0;i--){ %>
			<div class=ralistitem>
				<table>
					<tr>
						<td><p><%=listitemname %></p></td>
						<td><button name="check" onClick="location.href='/riskmanager-0.0.1-SNAPSHOT/jsp/risklistofsubmitter.jsp?name="<%out.println("projectname"); %>> Check </button></td>
					</tr>
					<tr>
						<td><p>Description: <%=listitemdes %></p></td>
					</tr>
				</table>
			</div>
		<%} %>
	</div>
</body>
</html>