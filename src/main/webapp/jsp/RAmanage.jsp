<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"
    import="model.RiskType"
    %>
     <%! String username="user name"; %>
     <%	username=(String)request.getAttribute("username"); %>
     <%	System.out.println("*********"+username); %>
     
      <%-- <%  int [] rec=new int[10];
          int [] pro=new int[10];
          String[] name=new String [10];%>
      <%! ArrayList<RiskType> art=new ArrayList<RiskType>();%>
      <%  art=(ArrayList<RiskType>)request.getAttribute("list");
          int number=art.size();
          for(int i=0;i<number;i++){
        	  rec[i]=art.get(i).getIdentified();
        	  pro[i]=art.get(i).getWorsen();
        	  name[i]=art.get(i).getTypename();
          }%> --%>
<%! String RAname="RA name"; 
	String RAdescription = "RA description";%>
	<% 
	RAname=(String)request.getAttribute("RAname");
	%>
<%! int listnum = 10; %>
<%! String listitemname = "name"; 
	String start="2010-06-06";
	String end="2012-10-23";
	String recognized="5";
	String problems="10";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RA Manage</title>
<script type="text/javascript" language="javascript">
	function firm(form){
		if(confirm("Confirm delete?")){
			return true;
		}else{
      		return false;
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
		<font size=5 class="welcometext" >
			RA MANAGER SYSTEM
		</font>
		<form action="SubCheckRA">
		<p class="button_home">
			
				<input name="username" type="hidden" value=<%= username %>>
				<input type="submit" name="Home" value="Home" style="overflow:visible;padding:0;border:0;background-color:transparent;color:white" />
			
		</p>
		</form>
	</div>
	<div class="listtitle" style="text-align:center">
		<font size=4 >
			<%=RAname %>
		</font>
		<form action="ShowRA">
		<p class="button_home">
			<input name="username" type="hidden" value=<%= username %>>
			<input type="submit" name="Add" value="Add Risk" style="overflow:visible;padding:0;border:0;background-color:transparent;color:blue;" />
		</p>
		</form>
	</div>
	<div class="list" style="text-align:center">
			<table frame="box" rules="all" width="1000px" >
			<tr >
				<th><p>RiskName</p></th>
				<th><p>StartTime</p></th>
				<th><p>EndTimr</p></th>
				<th><p>recognized(times)</p></th>
				<th><p>problem(times)</p></th>
				<th><p>operation</p></th>
			</tr>
				<%for(int i=listnum;i>0;i--){ %>
					<tr>
						<td ><p><%=listitemname %></p></td>
						<td ><p><%=start %></p></td>
						<td ><p><%=end %></p></td>
						<td ><p><%=recognized %></p></td>
						<td ><p><%=problems %></p></td>
						<td>
						<form action="ManageRA" onsubmit="return firm(this);">
							<input name="username" type="hidden" value=<%= username %>>
							<input name="RAname" type="hidden" value=<%=RAname %>>
							<input type="submit" name="delete" value="delete">
						</form>
					</tr>
				<%} %>
			</table>
		
	</div>
	<div>
		<input class="button_left" type="button" name="drawrec" value="most recognized" onclick="lookup1()">
		<input class="button_right" type="button" name="drawrec" value="most problem" onclick="lookup2()">
	</div>
</body>
</html>
