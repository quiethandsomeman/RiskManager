<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="riskmanager.login.Login"%>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆中</title>
</head>
<body>
<%
    request.setCharacterEncoding("GB18030");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    Login lg=new Login();
    boolean re=false;
    try{
        re=lg.login(name,password);
    }catch(SQLException se){}

    if(!re){out.println("<script>alert('失败')</script>");
                       response.sendRedirect("login.jsp");}
    else{
        request.getSession().setAttribute("username",name);
        response.sendRedirect("/riskmanager/jsp/projectlist.jsp");
    }

%>
</body>
</html>