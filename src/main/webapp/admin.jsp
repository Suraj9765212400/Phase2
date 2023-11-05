
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style1.css">
</head>
<body>
<%="Login successful, Welcome  " +session.getAttribute("sessionid") %>
<hr style="width:40%;text-align:left;margin-left:0;">
<form action="participant.jsp">
<input type="submit" value="Show Participant details."  class="border" ></form><br>
<form action="batch.jsp">
<input type="submit" value="Show Batch details"  name="register"  class="border" >
</form><br>
<a href="Logout.jsp">Logout</a>
<hr style="width:40%;text-align:left;margin-left:0;">

</body>
</html>