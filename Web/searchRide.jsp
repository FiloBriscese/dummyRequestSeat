<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- dichiarazione e instanziazione di un loginBean !-->
<jsp:useBean id="searchBean" scope="request" class="logic.boundary.web.SearchBean"/>

<!-- mappare gli attributi di un oggetto sui campi della form -->
<jsp:setProperty name="searchBean" property="*"/>


<html>
	<head>
	    <title>TVRide - Request Seat</title>
	    <link href="css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body style="background-color: #F2EDE4">
		<table width="100%">
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
		<p>cose da fare</p>
		<ul>
		    <li>form per la ricerca</li>
		    <li>searchBean</li>
		    <li>ricevere su java il form</li>
		    <li>rispondere al form mandando delle corse, mostrarle</li>
		    <li>pagina dettagli corsa</li>
		    <li>mandare richiesta prenotazione</li>
		</ul>
		<form action="" name="searchRide" method="POST">
			
		</form>
	</body>
</html>
