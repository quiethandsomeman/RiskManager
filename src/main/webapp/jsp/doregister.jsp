<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="riskmanager.login.Register"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录中</title>
</head>
<body>
<%
    request.setCharacterEncoding("GB18030");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    Register reg=new Register();
    boolean re=reg.register(name,password);
    if(re==false){out.println("<script>alert('用户名存在')</script>");
        response.sendRedirect("register.jsp");}
    else{
        request.getSession().setAttribute("username",name);
        response.sendRedirect("login.jsp");
    }

%>
</body>
</html>