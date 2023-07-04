<%@ page import="kopo.poly.util.CmmUtil" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String userName = CmmUtil.nvl((String) request.getAttribute("userName"));
    String msg = CmmUtil.nvl((String)request.getAttribute("msg"));
    if (userName.equals("")) {
        userName="알수없음";
    }
%>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert Title</title>
</head>
<body>
<h1>Hello <%=userName%>, This is Index Page.</h1>
<h3><%=msg%></h3>
</body>
</html>    