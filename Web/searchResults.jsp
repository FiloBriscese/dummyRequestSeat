<%@ page contentType="text/html;charset=UTF-8" language="java" import="logic.boundary.web.RequestSeatWebController,logic.bean.RideBean"%>
<jsp:useBean id="searchBean" scope="request" class="logic.bean.SearchBean"/>
<jsp:useBean id="resultBean" scope="request" class="logic.bean.ResultBean"/>

<% if(session.getAttribute("userId") == null){ 	// se l'utente non è loggato, mandalo alla pagina di login %>
	<jsp:forward page="index.jsp" />
<% } %>

<html>
<head>
    <title>TVRide - Request Seat</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<ul class="nav">
		<li class="nav"><a class="nav_logo">TVRide</a></li>
		<li class="nav"><a href="home.jsp">Home</a></li>
		<li class="nav"><a class="nav_active">Request Seat</a></li>
		<li class="nav"><a >Your Requests</a></li>
		<%
		if (session.getAttribute("userRole").equals("Passenger")) {
		%>
			<li class="nav"><a >Become a Driver</a></li>
		<%
		} else if (session.getAttribute("userRole").equals("Driver")) {
		%>
		<li class="nav"><a >Offer a Ride</a></li>
		<li class="nav"><a >Your Rides</a></li>
		<%
		}
		%>
		<li class="nav"><a href="profile.jsp">Your Profile</a></li>
		<li style="float:right; background-color:red"><a href="logout.jsp">Log out</a></li>
		<li class="nav" style="float:right"><a >Notifications</a></li>
	</ul>

	<p>la tua ricerca. hai inviato questo searchBean:</p>
	<ul>
		<li>da: <%=searchBean.getFrom()%></li>
		<li>a: <%=searchBean.getTo()%></li>
		<li>il: <%=searchBean.getDate()%></li>
		<li>alle: <%=searchBean.getTime()%></li>
	</ul>
	
	<button type="button" onclick="alert('Hello world!')" style="float: center">click me</button>
	
	<h3>i risultati ottenuti:</h3>
	<br>
		<%
		for(RideBean ride : resultBean.getRides()){
		%>
			<div class="card">
				<div class="container">
					<strong><%= ride.getOwner() %></strong> [RIDE#<%= ride.getRideId() %>]<br>
					From: <%= ride.getSource() %><br>
					To: <%= ride.getDestination() %><br> 
					<%= ride.getDate() %> | <%= ride.getTime() %> <a href="prova.html"><button type="button" onclick="" style="float: right">Details</button></a>
					
					
					<!-- TODO prenotare corsa -->
					
					
				</div>
			</div>
			<br>
		<%
		}
		%>
</body>
</html>
