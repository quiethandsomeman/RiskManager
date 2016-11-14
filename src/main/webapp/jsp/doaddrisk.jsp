<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="riskmanager.riskHandler.*"%>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>加入中</title>
</head>
<body>
<%
    request.setCharacterEncoding("GB18030");
    String usrname=(String)request.getSession().getAttribute("username");
    String pid=(String)request.getAttribute("pid");
    int proid=Integer.parseInt(pid);
    String pro = request.getParameter("riskprobility");
    String des = request.getParameter("riskdescription");
    String lev=request.getParameter("impactlevel");
    String th=request.getParameter("threshold");
    int th1=Integer.parseInt(th);
    AddRisk ad=new AddRisk();
    boolean re=ad.addRisk(proid,usrname,"",pro,lev,th1,des);
    if(re==false){out.println("<script>alert('加入失败')</script>");
        response.sendRedirect("projectlist.jsp");}
    else{
        response.sendRedirect("projectlist.jsp");
    }

%>
</body>
</html>