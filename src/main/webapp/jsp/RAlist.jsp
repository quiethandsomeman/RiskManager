<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    import="model.RiskPlan"%>
    <%! String username="analizer"; %>
    <%	username=(String)request.getAttribute("username"); %>
    <%! ArrayList<RiskPlan> list=new ArrayList<RiskPlan>(); %>
    <% list=(ArrayList<RiskPlan>)request.getAttribute("riskplan"); %>
<%! int listnum =0; %>
<%listnum=list.size(); %>
<%! String RAname = "name"; 
	String RAdes = "balbalbalbalbalblablablabalball";
	%>
	<%	System.out.println("*********"+username); %>
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
		input.button_left{
			margin-left:5cm;
			float:left;
		}
		input.button_right{
			margin-right:5cm;
			float:right;
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
				<td><form action="ShowRA"><input name="username" type="hidden" value=<%= username %>><input type="submit" name="addRA" value="addRA"/></form></td>
			</tr>
		</table>
	</div>
	<div class="list">
		<%for(int i=0;i<listnum;i++){ 
			RAname=list.get(i).getName();
			RAdes=list.get(i).getDescription();
		%>
			<div class=ralistitem>
				<table>
					
					<tr>
						<td><p><%=RAname %></p></td>
						<td>
						<form action="ManageRA">
							<input name="username" type="hidden" value=<%= username %>>
							<input name="RAname" type="hidden" value=<%=RAname %>>
							<input type="submit" name="Check" value="Check"/>
						</form>
						</td>
					</tr>
					
					<tr>
						<td><p>Description: <%=RAdes %></p></td>
					</tr>
				</table>
			</div>
		<%} %>
	</div>
	<div>
		<input class="button_left" type="button" name="drawrec" value="most recognized" onclick=window.open("./iderisk.jsp")>
		<input class="button_right" type="button" name="drawrec" value="most problem" onclick=window.open("./problemnum.jsp")>
	</div>
</body>
</html>