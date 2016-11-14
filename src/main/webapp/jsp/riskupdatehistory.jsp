<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="riskmanager.trackHandler.*"%>
<%@ page import="java.util.*"%>
<%!int historynum; %>
<% String pid=request.getParameter("pid");
	String rid=request.getParameter("rid");
    int pi=Integer.parseInt(pid);
    int ri=Integer.parseInt(rid);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#history-table{
		margin-top=0.25cm;
		margin-left=1cm;
	}
</style>
</head>
<body>
	<table id=history-table border="1">
		<tr>
			<th> date </th>
			<th> watcher </th>
		</tr>
		<%  showHistory sh=new showHistory();

	        ArrayList<History> ah=sh.getHistoryList(pi,ri);


	        for(historynum=0;historynum<ah.size();historynum++){ %>
			<tr>
				<td><p><% out.println(ah.get(historynum).getProjectid()); %></p></td>
				<td><p><% out.println(ah.get(historynum).getRiskid()); %></p></td>
				<td><p><% out.println(ah.get(historynum).getTime()); %></p></td>
			</tr>
		<%} %>
	</table>
</body>
</html>