<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String username="user name"; %>
<%! int trapnum = 5;  
	String time = "2016-1-1 24:00:00:00";
	String tracer = "user name";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Risk Update History</title>
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
		#traplist{
			margin-top:0.5cm;
			margin-left:0.5cm;
		}
	</style>
</head>
<body>
	<div class="welcome">
		<p class="welcometext">Welcome, <%=username %></p>
	</div>
	<div id="traplist">
		<table>
			<tr>
				<th>  Time  </th>
				<th> tracer </th>
			</tr>
			<%for(int i=trapnum;i>0;i--){ %>
			<tr>
				<td><%=time %></td>
				<td><%=tracer %></td>
			</tr>
			<%} %>
		</table>
	</div>
</body>
</html>