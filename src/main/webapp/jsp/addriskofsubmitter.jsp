<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    %>
<%! String username="user name"; %>
<%	username=(String)request.getAttribute("username"); %>
<%! String listitemtype = "type"; 
	String listitemdes = "balbalbalbalbalblablablabalball";
	String listitempossibility = "high";
	String listitemimpact = "high";
	String listitemthreshold = "balabala 70%";
	ArrayList<String> typelist = new ArrayList<String>();
	%>
<%! int typenum=3;
	//int count=0;
	String type="balabala";
%>
<%	typelist = (ArrayList<String>) request.getAttribute("typelist");
	typenum = typelist.size();%>
<%! String pname="";
	String pdescription="";
	String pid="";%>
<%	pname=(String) request.getAttribute("pname"); 
	pdescription=(String) request.getAttribute("pdescription");
	pid=(String) request.getAttribute("pid");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add risk</title>
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
		div.listitem{
			margin-top:0.5cm;
			margin-right:0.5cm;
		}
	</style>
</head>
<body>
	<div class="welcome">
		<p class="welcometext">Welcome, <%=username %></p>
	</div>
	<div class=listitem>
		<form action="AddRisk" method="post">
			<table>
					<tr>
						<td><p>Type: </p></td>
						<td><select name="rtype">
							<%for(int i = 0;i<typenum;i++){ 
								type = typelist.get(i);%>
								<option value=<%=type %>><%=type %></option>
							<%} %>
						</select></td>
					</tr>
					<tr>
						<td><p>Description: </p></td>
						<td><textarea rows="3" cols="40" name="rdescription" ></textarea></td>
					</tr>
					<tr>
						<td><p>Possibility: </p></td>
						<td><select name="rpossibility">
							<option value="2"> high </option>
							<option value="1"> medium </option>
							<option value="0"> low </option>
						</select></td>
						<td><p>Impact: </p></td>
						<td><select name="rimpact">
							<option value="2"> high </option>
							<option value="1"> medium </option>
							<option value="0"> low </option>
						</select></td>
					</tr>
					<tr>
						<td><p>Threshold: </p></td>
						<td><input type="text" name="rthreshold" value="risk threshold"></td>
					</tr>
					<tr>
						<td><p>Submitter: </p></td>
						<td><p><%=username %></p>
							<input name="rsubmitter" type="hidden" value=<%=username %>>
						</td>
					</tr>
					<tr>
						<td><input name="pdescription" type="hidden" value=<%=pdescription %>>
						<input name="pid" type="hidden" value=<%=pid %>></td>
						<td><input name="pname" type="hidden" value=<%=pname %>></td>
						<td width="20%"><input type="submit" name="saverisk" value="Save"></td>
					</tr>
				</table>
		</form>		
	</div>
</body>
</html>