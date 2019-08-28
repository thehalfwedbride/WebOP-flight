<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> SUCCESS BISS</h1>
<%
	String ticketId= session.getAttribute("ticketId").toString();
	out.println("<h2> your ticket id for reference is: "+ticketId + "</h2>");
			
%>

</body>
</html>