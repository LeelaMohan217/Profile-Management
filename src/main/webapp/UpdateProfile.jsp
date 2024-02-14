
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile Success</title>
</head>
<body>
<div>
<%
	String fName = (String)request.getAttribute("fName");
	String decodedFName = java.net.URLDecoder.decode(fName, "UTF-8");
	String ms = (String)request.getAttribute("msg");
	out.println("Page belongs to " + decodedFName +"<br>");
	out.println(ms);
%>
<a href=view>ViewProfile</a>
<a href=edit>EditProfile</a>
<a href=logout>Logout</a>
</div>


</body>
</html>