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
<body>


<%= "Login successful, Welcome User " +session.getAttribute("sessionid")%>
<hr style="width:40%;text-align:left;margin-left:0;">
<%int pid = (int) session.getAttribute("sessionid");
 %>

<table border="1">
<tr><th>Participant ID</th><th>Participant Name</th><th>Participant Email</th><th>Participant Address</th><th>Participant BID.</th><th>Edit Action</th></tr>
<%
ParticipantDAO pao=new ParticipantDAO();
List<Participant> plist = pao.displaybyid(pid);
for(Participant pa:plist){ %>

<tr><td><%= pa.getPid() %></td><td><%= pa.getPname() %></td><td><%= pa.getPemail() %></td><td><%= pa.getPaddress() %></td>
<td><%    if (pa.getBid() <= 0 ){  %> No Batch assigned <% } else { %> <%= pa.getBid() %> <%} %></td>
<td><a href="edit.jsp?id=<%=pa.getPid()%>&name=<%= pa.getPname() %>&email=<%= pa.getPemail() %>"> Edit this item</a> </td>

</tr>
<%}%>
</table>

<form action="batch.jsp">
<input type="hidden" value="<%= pid %>" name = "pid">
<br>
<input type="submit" value="Regiter for Batches" name="register" class="border">
</form>
<hr style="width:40%;text-align:left;margin-left:0;">
<a href="Logout.jsp" >Logout</a>
<hr style="width:40%;text-align:left;margin-left:0;">
</body>
</html>