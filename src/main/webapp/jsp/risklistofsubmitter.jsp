<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    import="model.RiskInfo"%>
<%! String username="user name"; %>
<%	//System.out.println("*********readusername"); %>
<%	username=(String)request.getAttribute("username"); %>
<%! String projectname="project name"; 
	String projectdescription = "project description";
	String projectid = "id";%>
	<%	//System.out.println("*********read pname pid pdes"); %>
<%	projectname=(String)request.getAttribute("pname"); 
	projectdescription = (String)request.getAttribute("pdescription");
	projectid=(String)request.getAttribute("pid");
	%>
<%! ArrayList<RiskInfo> risklist; %>
<%	//System.out.println("*********readrisklist"); %>
<%	int listnum=0; %>
<%	risklist = (ArrayList<RiskInfo>)request.getAttribute("risklist"); 
	listnum = risklist.size();%>
<%	//System.out.println("*********"+listnum); %>
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
			margin-top:0.25cm;
			margin-left:0.5cm;
			width:15cm;
			height:2cm;
			border:solid 1px #add9c0;
			padding-top:0.25cm;
			padding-bottom:0.25cm;
			padding-left:2cm;
			
		}
		table.list{
			margin-top:0.5cm;
			margin-left:0.5cm;
			width:15cm;
			height:5cm;
			border:solid 1px #add9c0;
			padding-top:0.25cm;
			padding-left:1cm;
			padding-bottom:0.25cm;
			
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
				<td><p> Risk List </p></td>
				<td>
					<form action="ToAddRisk" method="post">
						<input name="pname" type="hidden" value=<%=projectname %>>
						<input name="pid" type="hidden" value=<%=projectid %>>
						<input name="pdescription" type="hidden" value=<%=projectdescription %>> 
						<input name="username" type="hidden" value=<%=username %>>
						<input name="addrisk" type="submit" value="Add Risk">
					</form>
				</td>
			</tr>
		</table>
	</div>
	<div >
		<%for(int i=0;i<listnum;i++){ 
			RiskInfo temp = risklist.get(i);
			listitemtype = temp.getType();
			listitemid = String.valueOf(temp.getRiskId());
			listitemdes = temp.getDescription();
			listitempossibility = String.valueOf(temp.getPossibility());
			listitemimpact = String.valueOf(temp.getImpact());
			listitemthreshold = temp.getTrigger();
		%>
			<table class="list" >
				<tr>
					<td><p><%=listitemtype %></p></td>
					<td>
						<form action="SubCheckRiskTrap" method="post">
							<input type="hidden" name="riskid" value=<%=listitemid %>>
							<input type="submit" value="Check Trap">
						</form>
					</td>
				</tr>
				<tr>
					<td colspan="2"><p>Description: <%=listitemdes %></p></td>
				</tr>
				<tr>
					<td><p>Possibility: <%=listitempossibility %></p></td>
					<td><p>Impact: <%=listitemimpact %></p></td>
				</tr>
				<tr>
					<td colspan="2"><p>Threshold: <%=listitemthreshold %></p></td>
				</tr>
			</table>
		<%} %>
	</div>
</body>
</html>