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
<%@include file="admin.jsp" %>
<body>
	<table border="1">
		<tr>
			<th>Participant ID</th>
			<th>Participant Name</th>
			<th>Participant Email</th>
			<th>Participant Address</th>
			<th>Participant BID.</th>
			<th>Edit Action</th>
			<th>Delete Action</th>
		</tr>
		<%
		ParticipantDAO pao = new ParticipantDAO();

		List<Participant> plist = pao.displayParticipant();
		for (Participant pa : plist) {
		%>

		<tr>
			<td><%=pa.getPid()%></td>
			<td><%=pa.getPname()%></td>
			<td><%=pa.getPemail()%></td>
			<td><%=pa.getPaddress()%></td>
			<td>
				<%
				if (pa.getBid() <= 0) {
				%> No Batch assigned <%
				} else {
				%> <%=pa.getBid()%>
				<%} %>
			</td>
			
			<td><a href="edit.jsp?id=<%=pa.getPid()%>"> Edit this item</a> </td>
<td><a href="delete.jsp?id=<%=pa.getPid()%>&name=admin"> Delete this item</a> </td>
		</tr>
		<%} %>
	</table>
	
</body>
</html>