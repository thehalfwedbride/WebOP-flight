<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.wipro.frs.bean.*"%>
  <%@page import="com.wipro.frs.dao.*"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="CancellationServlet" method="post">
<% 
	String ticket=request.getParameter("ticketId");
	int ticketId=Integer.parseInt(ticket);
	DaoTicket dt = new DaoTicket();
	TicketBean t = dt.returnTicketDetail(ticketId);
	int numberOfPassengers=t.getPassNames().split(", ").length;
	session.setAttribute("bookings", numberOfPassengers);
	session.setAttribute("flightId",t.getFlightId());
	session.setAttribute("ticketId", ticketId);
	String date= t.getTicketDate();
	session.setAttribute("date", date);
	out.println(t.getTicketId()+"&nbsp&nbsp&nbsp"+t.getTicketDate().substring(0,11)+"&nbsp&nbsp"+t.getPassNames()+"&nbsp&nbsp"+"&nbsp&nbsp"+t.getStatus());
	
%>
<input type="submit" value="Cancel Ticket">
</form>

</body>
</html>