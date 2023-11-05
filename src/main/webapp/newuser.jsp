<%@page import="com.caltech.pojo.Participant"%>
<%@page import="com.caltech.dao.ParticipantDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style1.css">
</head>
<body>
<div class="split left">
<label><b>Please enter you details</b></label><br><br>
<form action="addController.jsp">
<label><b>Userid:</b></label><br>
<input type="text" name = "id" class="border"><br><br>
<label><b>Name:</b></label><br>
<input type="text" name = "pname" class="border"><br><br>
<label><b>Email:</b></label><br>
<input type="text"  name = "email" class="border"><br><br>
<label><b>Address:</b></label><br>
<input type="text" name = "address" class="border"><br><br>

<input type="submit" value="Submit" name="Create an account!">
</form>
</div>
</body>
</html>