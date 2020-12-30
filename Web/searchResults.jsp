<%@ page contentType="text/html;charset=UTF-8" language="java" import="logic.boundary.web.RequestSeatWebController, bean.RideBean"%>
<jsp:useBean id="searchBean" scope="request" class="bean.SearchBean"/>
<jsp:useBean id="resultBean" scope="request" class="bean.ResultBean"/>

<!-- TODO check log in al caricamento di OGNI pagina e implementare log out-->


<html>
	<head>
	    <title>TVRide - Request Seat 2</title>
	    
	    <style>
	    .card {
		  /* Add shadows to create the "card" effect */
		  width: 30%;
		  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
		  transition: 0.3s;
		  border-radius: 5px;
		  background-color: #449343;
		  margin-left: 16px;
		}
		
		/* On mouse-over, add a deeper shadow */
		.card:hover {
		  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
		}
		
		/* Add some padding inside the card container */
		.container {
		  padding: 16px 16px 16px 32px;
		}
	    </style>
	    
	</head>
	<body style="background-color: #F2EDE4">
		<p>la tua ricerca. hai inviato questo searchBean:</p>
		<ul>
			<li>da: <%=searchBean.getFrom()%></li>
			<li>a: <%=searchBean.getTo()%></li>
			<li>il: <%=searchBean.getDate()%></li>
			<li>alle: <%=searchBean.getTime()%></li>
		</ul>
		
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
						<%= ride.getDate() %> | <%= ride.getTime() %> <button type="button" onclick="alert('Hello world!')" style="float: right">Details</button>
					</div>
				</div>
				<br>
			<%
			}
			%>
	</body>
</html>
