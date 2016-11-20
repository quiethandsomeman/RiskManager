<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%! String username="user name"; %>
<%! String RAname="RA name"; 
	String RAdescription = "RA description";
	%>
<%! int listnum = 10; %>
<%! String listitemname = "name"; 
	String listitemdes = "balbalbalbalbalblablablabalball";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RA Manage</title>
<script type="text/javascript" language="javascript">
	function firm(){
		if(confirm("Confirm delete?")){
			alert("success");
		}else{
      		alert("cancle");
		}
	}
</script>
	<style>
		div.welcome{
			margin-left:0.5cm;
			height:50px;
			background-color:gray;
			color:white;
			
		}
		font.welcometext{
			margin-top:0.3cm;
			margin-left:0.5cm;
			float:left;
		}
		p.button_home{
			margin-right:1cm;
			float:right;
		}
		p.button_add{
			margin-right:5cm;
			float:right;
		}
		div.listtitle{
			margin-top:0.5cm;
			margin-left:0.5cm;
		}
		div.list{
			width:1000px;
			margin-left:200px;
			margin-top:0.5cm;
			border-style:solid; 
			border-width:1px; 
			border-color:#000
		}
	</style>
</head>
<body>
	<div class="welcome">
		<font size=5 class="welcometext" >
			RA MANAGER SYSTEM
		</font>
		<p class="button_home">
			<input type="button" name="Home" value="Home" style="overflow:visible;padding:0;border:0;background-color:transparent;color:white" onclick="location.herf='/RAlsit.jsp'"/>
		</p>
	</div>
	<div class="listtitle" style="text-align:center">
		<font size=4 >
			Risk List
		</font>
		<p class="button_add">
			<input type="button" name="Add" value="Add" style="overflow:visible;padding:0;border:0;background-color:transparent;color:blue;" onclick="location.herf='/RAlsit.jsp'"/>
		</p>
		<p class="button_home">
			<input type="button" name="Show" value="Show" style="overflow:visible;padding:0;border:0;background-color:transparent;color:blue;" onclick="location.herf='/RAlsit.jsp'"/>
		</p>
		
	</div>
	<div class="list" >
		<%for(int i=listnum;i>0;i--){ %>
			<div class=ralistitem>
				<table >
					<tr>
						<td width="93%"><p><%=listitemname %></p></td>
						<td><button name="delete" onClick="firm()"> Delete </button></td>
					</tr>
					<tr>
						<td><p>Description: <%=listitemdes %></p></td>
					</tr>
				</table>
			</div>
		<%} %>
	</div>
</body>
</html>
