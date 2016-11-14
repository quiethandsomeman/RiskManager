<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="riskmanager.trackHandler.*"%>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改中</title>
</head>
<body>
<%
    request.setCharacterEncoding("GB18030");
    String usrname=(String)request.getSession().getAttribute("username");
    String pid=(String)request.getAttribute("pid");
    String rid=(String)request.getAttribute("rid");
    int proid=Integer.parseInt(pid);
    int riskid=Integer.parseInt(rid);
    String pro = request.getParameter("riskprobility");
    String des = request.getParameter("riskdescription");
    String lev=request.getParameter("impactlevel");
    String th=request.getParameter("threshold");
    int th1=Integer.parseInt(th);
    Addtrack ad=new Addtrack();
    boolean re=ad.addTrack(proid,riskid,pro,lev,th1,des,usrname);
    if(re==false){out.println("<script>alert('修改失败')</script>");
        response.sendRedirect("/riskmanager/jsp/projectlist.jsp");}
    else{
        response.sendRedirect("/riskmanager/jsp/projectlist.jsp");
    }

%>
</body>
</html>
