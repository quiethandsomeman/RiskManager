<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>新加工程</title>
</head>
<body>
<div id="risk-table">
    <table class="fixedtable">
        <tr>
            <td width="20%">
                <p>Project Description: </p>
            </td>
            <td>
                <textarea rows="2" cols="40" name="projectdescription"></textarea>
            </td>
        </tr>

        <tr>
            <td width="20%">
                <p>Project Name: </p>
            </td>
            <td>
                <input type="text" name="projectname">
            </td>
        </tr>
        <tr>
            <td>
                <form action="doaddproject.jsp" method="post">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                <input type="submit" name="saveproject" value=" Save ">
            </td>
        </tr>
    </table>
</div>
</body>
</html>