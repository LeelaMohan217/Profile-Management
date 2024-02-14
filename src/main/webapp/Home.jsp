<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
.message-box
{
	position: absolute;
    bottom: 20px;
    right: 20px;
    /*background-color: black; /* Updated background color (example: a shade of blue) */
    color: #3498db; /* Text color */
    /*border: 1px solid #ccc;*/
    padding: 5px;
}
</style>
</head>
<body>
<div ><jsp:include page="login.html"/></div>
<div class="message-box">

<%
	String ms = (String)request.getAttribute("msg") ;
	out.println(ms);
%>
</div>
<script>
  // JavaScript to hide the message box after 5 seconds
  window.onload = function() {
    var messageBox = document.querySelector('.message-box');
    setTimeout(function() {
      messageBox.style.display = 'none';
    }, 5000); // 5000 milliseconds = 5 seconds
  };
</script>

</body>
</html>