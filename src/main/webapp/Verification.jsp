<%@page import="com.caltech.dao.ParticipantDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String admin = request.getParameter("admin");
	
	String user = request.getParameter("pid");
	
	int pid = Integer.parseInt(user);
	
	String password = request.getParameter("password");


	ParticipantDAO pao = new ParticipantDAO();
	
	if (admin.contains("Login as Admin")) {
		pid = 1;
	}
	int a = pao.login(pid, password);

	if (a == 1) {
		if (admin.contains("Login as Admin")) {

			session.setAttribute("sessionid", pid);

			response.sendRedirect("admin.jsp");
		}

		if (admin.contains("Login as User")) {
			session.setAttribute("sessionid", pid);
			response.sendRedirect("user.jsp");
		}
	} else {
	%><h3>
		<i>User does not exist </i>
	</h3>
	<%@include file="index.jsp"%>
	<%
	}
	
	%>



</body>
</html>