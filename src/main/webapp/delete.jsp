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
ParticipantDAO pao1=new ParticipantDAO();

Participant participant = new Participant();
participant.setPid(Integer.parseInt(request.getParameter("id")));
int a = pao1.delete(participant);
if (a==1){
	%>Account deleted<%
	 if (request.getParameter("name").contains("admin")){
	 
	 %><%@include file="participant.jsp" %><%
	
	 }
	 else{
		 
		 response.sendRedirect("Logout.jsp");
	 }
}
 %>		
</body>
</html>