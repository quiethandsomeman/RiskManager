<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="riskmanager.projectHandler.*"%>
<%@ page import="java.sql.SQLException" %>
<%@ page import="riskmanager.projectHandler.Addproject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登陆中</title>
</head>
<body>
<%
    request.setCharacterEncoding("GB18030");
    String usrname=(String)request.getSession().getAttribute("username");
    String name = request.getParameter("projectname");
    String des = request.getParameter("projectdescription");
    Addproject ad=new Addproject();
    boolean re=ad.addProject(usrname,name,des);
    if(re==false){out.println("<script>alert('加入失败')</script>");
        response.sendRedirect("addproject.jsp");}
    else{
        response.sendRedirect("projectlist.jsp");
    }

%>
</body>
</html>
