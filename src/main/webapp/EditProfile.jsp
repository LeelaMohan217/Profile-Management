<%@ page import="test.UserBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
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
    text-align: center;
    padding: 20px;
    font-family: Arial, sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 70vh;
  }

  .form-container {
    border: 1px solid #ccc;
    padding: 20px;
    width: 350px;
    background-color: #f2f2f2;
  }

  .form-container input[type="text"] {
    width: 90%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  .form-container input[type="submit"] {
    background-color: #333;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  /* Label styles */
  label {
    display: block;
    text-align: left;
    margin-left:10px;
    margin-bottom: 10px;
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
  <h3>Edit Profile</h3>
  <div class="form-container">
    <form action="update" method="post">
      <label for="addr">Address:</label>
      <input type="text" name="addr" id="addr" value="<%=ub.getAddr()%>">
      <label for="mid">Email:</label>
      <input type="text" name="mid" id="mid" value="<%=ub.getmId()%>">
      <label for="phno">Phone No:</label>
      <input type="text" name="phno" id="phno" value="<%=ub.getPhNo()%>">
      <input type="submit" value="Update Profile">
    </form>
  </div>
</div>
</body>
</html>
