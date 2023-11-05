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
participant.setPid(Integer.parseInt(request.getParameter("id")));
participant.setPname(request.getParameter("pname"));
participant.setPemail(request.getParameter("email"));
participant.setPaddress(request.getParameter("address"));
participant.setPassword(request.getParameter("pname"));
int a = pao.insert(participant);
if (a==1){
	 %><hr>Account created ! Login ID: <%=request.getParameter("id")%>
	 <%@include file="index.jsp" %>
	 <%	 
	 
}else{
	 %>check user<%
}

%>

</body>
</html>