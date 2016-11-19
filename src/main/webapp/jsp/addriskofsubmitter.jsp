<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String username="user name"; %>
<%! String listitemtype = "type"; 
	String listitemdes = "balbalbalbalbalblablablabalball";
	String listitempossibility = "high";
	String listitemimpact = "high";
	String listitemthreshold = "balabala 70%";
	%>
<%! int typenum=3;
	//int count=0;
	String type="balabala";
%>
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
		<form action="doaddrisk.jsp" method="post">
			<table>
					<tr>
						<td><p>Type: </p></td>
						<td><select>
							<%for(int i = typenum;i>0;i--){ %>
								<option value=<%=type %>><%=type %></option>
							<%} %>
						</select></td>
					</tr>
					<tr>
						<td><p>Description: </p></td>
						<td><textarea rows="3" cols="40" name="description" ></textarea></td>
					</tr>
					<tr>
						<td><p>Possibility: </p></td>
						<td><select>
							<option value="high"> high </option>
							<option value="medium"> medium </option>
							<option value="low"> low </option>
						</select></td>
						<td><p>Impact: </p></td>
						<td><select>
							<option value="high"> high </option>
							<option value="medium"> medium </option>
							<option value="low"> low </option>
						</select></td>
					</tr>
					<tr>
						<td><p>Threshold: </p></td>
						<td><input type="text" name="threshold" value="risk threshold"></td>
					</tr>
					<tr>
						<td><p>Submitter: </p></td>
						<td><p><%=username %></p></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td><input type="submit" name="saverisk" value="Save"></td>
					</tr>
				</table>
		</form>		
	</div>
</body>
</html>