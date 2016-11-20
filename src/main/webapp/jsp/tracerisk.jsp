<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String username="user name";
	String riskid="id";
	String pid="id";
	String pname="pname";
	String pdescription="pdescription"; 
	%>
<%	username=(String)request.getAttribute("username");  
	riskid=(String)request.getAttribute("riskid");
	pid=(String)request.getAttribute("pid");
	pname=(String)request.getAttribute("pname");
	pdescription=(String)request.getAttribute("pdescription");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Trace Risk </title>
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
		div.content{
			margin-top:0.5cm;
			margin-left:1cm;
		}
	</style>	
</head>
<body>
	<div class="welcome">
		<p class="welcometext">Welcome, <%=username %></p>
	</div>
	<div class="content">
		<form action="RiskStateChange" method="post">
			<p>description</p>
			<textarea rows="3" cols="40" name="remark">please input your remark of this trap :)</textarea>
			<br>
			<br>
			<input type="radio" name="state" value="yes" checked>occured 
			<input type="radio" name="state" value="no">not yet
			<input type="hidden" name="riskid" value=<%=riskid %>>
			<input type="hidden" name="pid" value=<%=pid %>>
			<input type="hidden" name="pname" value=<%=pname %>>
			<input type="hidden" name="pdescription" value=<%=pdescription %>>
			<input type="submit" name="save" value="submit" >
		</form>
	</div>
</body>
</html>