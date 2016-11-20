<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! String username="user name"; %>
<%! String RAname="RA name"; 
	String RAdescription = "RA description";
	%>
<%! int listnum = 10; %>
<%! String listitemname = "nababababaaabame"; 
	String recognized="4";
	String problems="3";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add RA Item</title>
<script type="text/javascript" language="javascript">
	function firm(form){
		var temp = "";
		var a = document.getElementsByName("checkbox");
		for ( var i = 0; i < a.length; i++) {
			if (a[i].checked) {
				temp = a[i].value;
				bb = bb + "," +temp;
			}
		}
		document.getElementById("tempString").value = bb.substring(1, bb.length);
	}
</script>
<style type="text/css">
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
	div.sort{
		height:30px;
		margin-left:0.5cm;
		
	}
	p.button_home{			
		margin-right:1cm;
		float:right;
	}
	div.listtitle{
		margin-top:0.5cm;
		margin-left:0.5cm;
		border-top:1px solid #000;
	}
	div.list{
		width:1000px;
		margin-left:100px;
		margin-top:0.5cm;
	}
	input.submit{
		margin-right:7.5cm;
		float:right;
	}
</style>
<script type="text/javascript" language="javascript" src="My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<div class="welcome">
		<font size=5 class="welcometext" >
			RA MANAGER SYSTEM
		</font>
		<p class="button_home">
			<input type="button" name="Back" value="Back" style="overflow:visible;padding:0;border:0;background-color:transparent;color:white" onclick="location.herf='/RAlsit.jsp'"/>
		</p>
	</div>
	<div class="sort">
		<table>
			<tr>
				<td><select name="sortway">
					<option value="mostrec"> most recognized </option>
					<option value="mostpro"> most problem </option>
				</select></td>
				<td><p>from </p></td>
				<td><input name="createdatetimeStart" style="width: 100px;" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})"/></td>
				<td><p>to </p></td>
				<td><input name="createdatetimeEnd" style="width: 100px;" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})"/></td>
				<td><input type="button" name="sort" value="sort"/></td>
			</tr>
		</table>
	</div>
	<div class="listtitle" style="text-align:center">
		<font size=4>
			Risk List
		</font>
	</div>
	<div class="list" style="text-align:center">
		<table frame="box" rules="all" width="1000px" >
			<tr >
				<th><p>RiskName</p></th>
				<th><p>recognized(times)</p></th>
				<th><p>problem(times)</p></th>
				<th><p>choose or not</p></th>
			</tr>
				<%for(int i=listnum;i>0;i--){ %>
					<tr>
						<td><p><%=listitemname %></p></td>
						<td ><p><%=recognized %></p></td>
						<td ><p><%=problems %></p></td>
						<td><input type="checkbox" name="checkbox" value=<%=listitemname+"|"+recognized+"|"+problems%>></td>
					</tr>
				<%} %>
			</table>
	</div>
	<div class=listtitle>
	<table>
		<tr>
			<td> 
			<form action="ManageRA" onsubmit="return firm(this);">
			<input type="hidden">RAName:
			<input type="hidden" id="tempString" name="tempString" >
			<input type="text" name="RAname" value="input your RAname" >
			<textarea rows="3" cols="60" name="RAdes" ></textarea>
			<input type="submit" name="submit" value="Add">
			</form>
			</td>
			
		</tr>
	</table>
	</div>
</body>
</html>