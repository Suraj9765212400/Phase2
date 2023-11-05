<%@page import="com.caltech.pojo.batch"%>
<%@page import="java.util.List"%>
<%@page import="com.caltech.dao.BatchDAO"%>
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
BatchDAO pao = new BatchDAO();

int pid = Integer.parseInt(request.getParameter("id"));
int bid = Integer.parseInt(request.getParameter("bid"));
int a = pao.register(pid, bid);
if (a == 1 ){
	%> Batch registered !!  <%
	session.setAttribute("sessionid", pid);
	response.sendRedirect("user.jsp");
}
%>


</body>
</html>