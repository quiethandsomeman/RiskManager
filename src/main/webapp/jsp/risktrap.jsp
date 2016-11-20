<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    import="model.TraceInfo"%>
<%! String username="user name"; %>
<%	username=(String)request.getAttribute("username"); %>
<%! int trapnum = 5;  
	String time = "2016-1-1 24:00:00:00";
	String tracer = "user name";
	String remark = "balabala";
	ArrayList<TraceInfo> tracelist;
	%>
<%	tracelist = (ArrayList<TraceInfo>) request.getAttribute("tracelist"); 
	trapnum = tracelist.size();%>
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
				<th> remark </th>
			</tr>
			<%for(int i=0;i<trapnum;i++){ 
				TraceInfo temp = tracelist.get(i);
				time=temp.getDate();
				tracer = temp.getTracer();
				remark = temp.getRemark();
			%>
			<tr>
				<td><%=time %></td>
				<td><%=tracer %></td>
				<td><%=remark %></td>
			</tr>
			<%} %>
		</table>
	</div>
</body>
</html>