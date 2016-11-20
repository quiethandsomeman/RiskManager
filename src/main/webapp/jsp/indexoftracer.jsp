<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    import="model.ProjectInfo"
    %>
<%! String username="user name"; %>
<%	username=(String) request.getAttribute("username"); %>
<%! int listnum = 2; %>
<%! ArrayList<ProjectInfo> prolist; %>
<%	prolist = (ArrayList<ProjectInfo>)request.getAttribute("prolist"); 
	listnum = prolist.size();
	%>
<%! String listitemname = "name"; 
	String listitemdes = "balbalbalbalbalblablablabalball";
	%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trace Index</title>
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
		table.normal{
			width:15cm;
			height:3cm;
			border:solid 1px #add9c0;
			padding-top:0.25cm;
			padding-left:1cm;
			padding-bottom:0.25cm;
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
		<%for(int i=0;i<listnum;i++){ 
			ProjectInfo temp = prolist.get(i);
			listitemname = temp.getName();
			listitemdes = temp.getDescription();
			%>
			<div class=projectlistitem>
				<table class="normal">
					<tr>
						<td width="30%"><p><%=listitemname %></p></td>
						<td>
							<form action="SubCheckProject" method="post">
								<input name="pname" type="hidden" value=<%=listitemname %>>
								<input name="pid" type="hidden" value=<%=temp.getId() %>>
								<input name="pdescription" type="hidden" value=<%=listitemdes %>>
								<input name="checkproject" type="submit" value="Check" onClick="location.href:'SubCheckProject'">
							</form>
						</td>
					</tr>
					<tr>
						<td colspan="2"><p>Description: <%=listitemdes %></p></td>
					</tr>
				</table>
			</div>
			<br>
			<br>
		<%} %>
	</div>
</body>
</html>