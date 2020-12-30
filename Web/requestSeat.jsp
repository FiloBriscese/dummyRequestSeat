<%@ page contentType="text/html;charset=UTF-8" language="java" import="logic.boundary.web.RequestSeatWebController, bean.ResultBean"%>
<jsp:useBean id="searchBean" scope="request" class="bean.SearchBean"/>
<jsp:setProperty name="searchBean" property="*"/>
<jsp:useBean id="resultBean" scope="request" class="bean.ResultBean"/>

<html>
	<head>
	    <title>TVRide - Request Seat</title>
	    <link href="css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body style="background-color: #F2EDE4">
		<table style="width:100%">
		    <tr align="center">
		        <td width="10px" align="left"><b style="color: #2C6737; font-size: 21px">TVRide</b></td>
		        <td width="100px"><a href="home.jsp">Home</a></td>
		        <td width="100px"><strong>Request Seat</strong></td>
		        <td width="100px"><a href="seatRequests.jsp">Your Requests</a></td>
		        <%
		        if (session.getAttribute("userRole").equals("Passenger")) {
		        %>
		        <td width="100px"><a href="becomeDriver.jsp">Become a Driver</a></td>
		        <%
		        } else if (session.getAttribute("userRole").equals("Driver")) {
		        %>
		        <td width="100px"><a href="offerRide.jsp">Offer a Ride</a></td>
		        <td width="100px"><a href="rideOffered.jsp">Your Rides</a></td>
		        <%
		        }
		        %>
		        <td width="100px"><a href="profile.jsp">Your Profile</a></td>
		        <td width="100px">Notifications</td>
		        <td width="100px">
		            <input type="submit" id="logout" value="Log out" style="color: red">
		        </td>
		    </tr>
		</table>
		<p> TODO cose da fare</p>
		<ul>
		    <li>  rispondere al form mandando delle corse, mostrarle</li>
		    <li>  pagina dettagli corsa</li>
		    <li>  mandare richiesta prenotazione</li>
		    <li>  usare tipo di dato che descriva posizione geografica</li>
		</ul>
		<form action="requestSeat.jsp" name="searchRideForm" method="POST">
			<table>
				<tr>
					<td><label for="from">From:</label></td>
					<td><input type="text" id="from" name="from" required></td>
				</tr>
				<tr>
					<td><label for="to">To:</label></td>
					<td><input type="text" id="to" name="to" required></td>
				</tr>
				<tr>
					<td><label for="date">Date:</label></td>
					<td><input type="date" id="date" name="date" required></td>
				</tr>
				<tr>
					<td><label for="time">Time:</label></td>
					<td><input type="time" id="time" name="time" required></td>
				</tr>
				<tr>
					<td><input type="submit" name="search" value="Search"></td>
					<%
					if (request.getParameter("search") != null) {
							resultBean = RequestSeatWebController.getInstance().cerca(searchBean);
							// TODO non viene passato resultBean a searchResult.jsp
					%>
		                    <jsp:forward page="searchResults.jsp"/>
		            <%
		                }
		            %>
				</tr>
			</table>
		</form>
	</body>
</html>
