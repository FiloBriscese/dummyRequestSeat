<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>TVRide</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color: #F2EDE4">
<table aria-describedby="navbar">
    <th id="navbar">
        <td class="navbarLogo"><strong style="color: #2C6737; font-size: 21px">TVRide</strong></td>
        <td class="navbarElement"><strong>Home</strong></td>
        <td class="navbarElement"><a href="searchRide.jsp">Request Seat</a></td>
        <td class="navbarElement"><a href="seatReservations.jsp">Your Reservations</a></td>
        <%
            if (session.getAttribute("userRole").equals("Passenger")) {
        %>
        <td class="navbarElement"><a href="becomeDriver.jsp">Become a Driver</a></td>
        <%
            } else if (session.getAttribute("userRole").equals("Driver")) {
        %>
                <td class="navbarElement"><a href="offerRide.jsp">Offer a Ride</a></td>
                <td class="navbarElement"><a href="rideOffered.jsp">Your Rides</a></td>
        <%
            }
        %>
        <td class="navbarElement"><a href="profile.jsp">Your Profile</a></td>
        <td class="navbarElement">Notifications</td>
        <td class="navbarElement"><a href="logout.jsp" style="color: red;">Log out</a></td>
    </th>
</table>
<h3>Ciao <%=session.getAttribute("userName") %> <%=session.getAttribute("userCognome")%></h3>
<br>
<p>qui mettere tipo: la tua prossima corsa è il XX alle XX da X a X (come Passeggero/Driver)</p>
<ul>colori da usare:
    <li style="color: #f2ede4; background-color: #0f0f0f; size: 50px">f2ede4</li>
    <li style="color: #449343">449343</li>
    <li style="color: #2c6737">2c6737</li>
    <li style="color: #275840">275840</li>
</ul>
</body>