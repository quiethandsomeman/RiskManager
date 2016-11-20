<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    import="model.RiskInfo"
    %>
<%! String username="user name"; %>
<%	username=(String)request.getAttribute("username");  %>
<%! String projectname="project name"; 
	String projectdescription = "project description";
	%>
<%	projectname=(String)request.getAttribute("pname"); 
	projectdescription = (String)request.getAttribute("pdescription");%>
<%! ArrayList<RiskInfo> risklist; %>
<%	risklist = (ArrayList<RiskInfo>)request.getAttribute("risklist"); %>
<%! int listnum = 0; %>
<%	listnum = risklist.size(); %>
<%! String listitemtype = "type"; 
	String listitemdes = "balbalbalbalbalblablablabalball";
	String listitempossibility = "high";
	String listitemimpact = "high";
	String listitemthreshold = "balabala 70%";
	String listitemid = "xxx";
	%>
<%! boolean isoccured=true;%>
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
		div.project-description{
			margin-top:0.5cm;
			margin-left:0.5cm;
		}
	</style>
</head>
<body>
	<div class="welcome">
		<p class="welcometext">Welcome, <%=username %></p>
	</div>
	<div class="project-description">
		<table>
			<tr>
				<td><p><%=projectname %></p></td>
			</tr>
			<tr>
				<td><p>Description: <%=projectdescription %></p></td>
			</tr>
		</table>
	</div>
	<div class="listtitle">
		<table>
			<tr>
				<td width="60%"><p> Risk List </p></td>
			</tr>
		</table>
	</div>
	<div class="list">
		<% for(int i=0;i<listnum;i++){ 
			RiskInfo temp = risklist.get(i);
			listitemtype = temp.getType();
			listitemid = String.valueOf(temp.getRiskId());
			listitemdes = temp.getDescription();
			listitempossibility = String.valueOf(temp.getPossibility());
			listitemimpact = String.valueOf(temp.getImpact());
			listitemthreshold = temp.getTrigger();
			%>
			<table>
				<tr>
					<td><p><%=listitemtype %></p></td>
					<td>
						<form action="SubCheckRiskTrap" method="post">
							<input type="hidden" name="riskid" value=<%=listitemid %>>								<input type="submit" value="Check Trap">
						</form>
						<form action="ToRiskStateChange">
							<input type="hidden" name="riskid" value=<%=listitemid %>>
							<input type="submit" name="occur" value=" Trace ">
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
		<% } %>
	</div>
</body>
</html>