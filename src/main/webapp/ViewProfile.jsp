<%@ page import="test.UserBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Profile</title>
<style>
  /* Header styles */
  .head {
    background-color: #333;
    color: white;
    padding: 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
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

  /* Page content styles */
  .page-content {
    padding: 20px;
    font-family: Arial, sans-serif;
  }

  .profile-info {
    border: 1px solid #ccc;
    padding: 10px;
    background-color: #f2f2f2;
  }
</style>
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
<div class="page-content">
  <%
    String fName = (String)request.getAttribute("fName");
    UserBean ub = (UserBean)application.getAttribute("ubean");
  %>
  <h4>Profile Info</h4>
  <div class="profile-info">
    <p>Full Name: <%= ub.getfName() + " " + ub.getlName() %></p>
    <p>Address: <%= ub.getAddr() %></p>
    <p>Email: <%= ub.getmId() %></p>
    <p>Phone No: <%= ub.getPhNo() %></p>
  </div>
</div>
</body>
</html>
