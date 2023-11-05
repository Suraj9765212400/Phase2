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
<hr>Update your details:
<br>
<br>
<form action="editcontroller.jsp">
<%int pid = Integer.parseInt(request.getParameter("id")); %>
<input type="hidden" value="<%= pid %>" name = "pid">
<label><b>Name:</b></label><br>
<input type="text" value=" " name = "pname" class="border"><br><br>
<label><b>Email:</b></label><br>
<input type="text" value=" " name = "email" class="border"><br><br>
<input type="submit" value="Submit" name="edit" class="border">
</form>
</div>
</body>
</html>