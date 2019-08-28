<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="BookingServlet">
<%
	ArrayList<String> naam= new ArrayList<String>();
	String flightId= request.getParameter("flightId");
	session.setAttribute("flightId", flightId);
	String number=session.getAttribute("bookings").toString();
	int num=Integer.parseInt(number);
	out.println("Enter passenger details:  ");
	for(int i=0;i<num;i++)
	{
		String j=Integer.toString(i);
		naam.add(j);
		out.println("Enter name: &nbsp;&nbsp Enter age:");
		out.println("<br>");
		out.println("<input type='text' name='"+j+"'>"+" <input type='text' name='age'>");
		out.println("<br>");
	}
	
	session.setAttribute("naam", naam);
	
	

%>
<input type="submit" value="proceed">
</form>

</body>
</html>