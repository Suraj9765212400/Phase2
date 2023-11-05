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
</head>
<body>
<%
ParticipantDAO pao=new ParticipantDAO();
Participant participant = new Participant();
participant.setPid(Integer.parseInt(request.getParameter("pid")));
participant.setPname(request.getParameter("pname"));
participant.setPemail(request.getParameter("email"));
int a = pao.edit(participant);
response.sendRedirect("participant.jsp");
%>
</body>
</html>