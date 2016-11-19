<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String username="user name"; %>
<%	username=(String)request.getAttribute("username"); %>
<%! String projectname="project name"; 
	String projectdescription = "project description";
	%>
<%	projectname=(String)request.getAttribute("pname"); 
	projectdescription = (String)request.getAttribute("pdescription");%>
<%! int listnum = 2; %>
<%! String listitemtype = "type"; 
	String listitemdes = "balbalbalbalbalblablablabalball";
	String listitempossibility = "high";
	String listitemimpact = "high";
	String listitemthreshold = "balabala 70%";
	String listitemid = "xxx";
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
				<td>
					<form action="ToAddRisk">
						<input name="pname" type="hidden" value=<%=projectname %>>
						<input name="username" type="hidden" value=<%=username %>>
						<input name="addrisk" type="submit" value="Add Risk">
					</form>
				</td>
			</tr>
		</table>
	</div>
	<div class="list">
		<%for(int i=listnum;i>0;i--){ %>
			<div class=listitem>
				<table>
					<tr>
						<td><p><%=listitemtype %></p></td>
						<td>
							<form action="SubCheckRiskTrap">
								<input type="hidden" name="riskid" value=<%=listitemid %>>
								<input type="submit" value="Check Trap">
							</form>
						</td>
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