<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>
</head>
<body>
<% 
 
	String ms = (String) request.getAttribute("msg");
	out.println(ms);
%>

<a href="login.html">Login</a>
</body>
</html>