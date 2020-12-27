<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<head>
	    <title>TVRide - Your Profile</title>
	</head>
	<body style="background-color: #F2EDE4">
		<table width="100%">
		    <tr align="center">
		        <td width="10px" align="left"><b style="color: #2C6737; font-size: 21px">TVRide</b></td>
		        <td width="100px"><a href="home.jsp">Home</a></td>
		        <td width="100px"><a href="searchRide.jsp">Request Seat</a></td>
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
		        <td width="100px"><b>Your Profile</b></td>
		        <td width="100px">Notifications</td>
		        <td width="100px">
		            <input type="submit" id="logout" value="Log out" style="color: red">
		        </td>
		    </tr>
		</table>
		<br>
		<p>dati del profilo, immagine, valutazione...</p>
		<ul>
		    <li>Sei un: <b><%=session.getAttribute("userRole")%></b></li>
		    <li><%=session.getAttribute("userName")%></li>
		    <li><%=session.getAttribute("userCognome")%></li>
		</ul>
	</body>
</html>