<%@ page import="test.UserBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Success</title>
<style>
  /* Header styles */
  .head {
    background-color: #333;
    color: white;
    padding: 10px;
  }

  .head ul {
    list-style-type: none;
    padding: 0;
  }

  .head li {
    display: inline;
    margin: 100px;
  }

  .head a {
    text-decoration: none;
    color: white;
  }

	.message-box {
    position: absolute;
    bottom: 20px;
    right: 20px;
    /*background-color: black; /* Updated background color (example: a shade of blue) */
    color: #3498db; /* Text color */
    /*border: 1px solid #ccc;*/
    padding: 5px;
    /*box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);*/
}

</style>
<script>
  // JavaScript to hide the message box after 5 seconds
  window.onload = function() {
    var messageBox = document.querySelector('.message-box');
    setTimeout(function() {
      messageBox.style.display = 'none';
    }, 5000); // 5000 milliseconds = 5 seconds
  };
</script>
</head>
<body>
<div class="head">
  <header>
    <ul>
      <li><a href="view">View Profile</a></li>
      <li><a href="edit">Edit Profile</a></li>
      <li><a href="logout">Logout</a></li>
    </ul>
  </header>
</div>
<div class="message-box">
  <%
    UserBean ub = (UserBean)application.getAttribute("ubean");
    out.println("<h4>Welcome " + ub.getfName() + " ! "+"<h4>");
  %>
</div>
</body>
</html>
