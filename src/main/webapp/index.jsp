<%@page import="com.caltech.pojo.Participant"%>
<%@page import="com.caltech.dao.ParticipantDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="style1.css">
</head>

<body>

<div class="split left">
<p><b>Please provide UserID and Password</b></p>

<form action="Verification.jsp">
<b>UserID </b> <br> <input type="text" name="pid" class="border" ><br><br>
<b>Password </b><br> <input type="password" name="password" class="border" ><br>
<hr style="width:20%;text-align:left;margin-left:0">

<input type="submit" value="Login as Admin" name = "admin" ><br><br>
<input type="submit" value="Login as User" name = "admin">

<hr style="width:20%;text-align:left;margin-left:0">
</form>

<a href="newuser.jsp"> Login as New User</a>

<hr style="width:20%;text-align:left;margin-left:0">
</div>
</body>
</html>