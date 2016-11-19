<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String username="user name"; %>
<%! int projectnum = 2; %>
<%! String listitemname = "name"; 
	String listitemdes = "balbalbalbalbalblablablabalball";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Submit Index</title>
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
		<p> All Project </p>
	</div>
	<div class="list">
		<%for(int i=projectnum;i>0;i--){ %>
			<div class=projectlistitem>
				<table>
					<tr>
						<td><p><%=listitemname %></p></td>
						<td><button name="checkproject" onClick="location.href='/riskmanager-0.0.1-SNAPSHOT/jsp/risklistofsubmitter.jsp?name="<%out.println("projectname"); %>> Check </button></td>
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