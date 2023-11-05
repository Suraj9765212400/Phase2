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
<% if (request.getParameter("register").contains("Show Batch details")){
	%> <%@include file="admin.jsp" %><%} %>
	  <p>Batch details</p>
<table border="1">
     
		<tr>
			<th>Batch ID</th>
			<th>Instructor Name</th>
			<th>Batch time </th>
			<%  String register = request.getParameter("register");
			   if (register.contains("Regiter for Batches")){
				 
				   %> <th>Register</th><%
			   }
			   
			   %>
		</tr>
		<%
		BatchDAO pao = new BatchDAO();

		List<batch> plist = pao.displaybatch();
		for (batch pa : plist) {
		%>

		<tr>
			<td><%=pa.getBid()%></td>
			<td><%=pa.getInstructor()%></td>
			<td><%=pa.getBdate()%></td>
			
			<%    if (register.contains("Regiter for Batches")){
				int pid = Integer.parseInt(request.getParameter("pid"));
				   %> <td><a href="register.jsp?id=<%=pid%>&bid=<%=pa.getBid()%>"> Register</a> </td><%
			   }
			   
			   %>
					</tr>
		<%} %>
	</table>
	

</body>

</html>