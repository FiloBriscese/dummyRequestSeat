<%@ page contentType="text/html;charset=UTF-8" language="java" import="logic.boundary.web.RequestSeatWebController, bean.RideBean"%>
<jsp:useBean id="searchBean" scope="request" class="bean.SearchBean"/>
<jsp:useBean id="resultBean" scope="request" class="bean.ResultBean"/>

<!-- TODO check log in al caricamento di OGNI pagina e implementare log out-->
<%
	if (session.getAttribute("userName").equals(null)) {
%>
		<jsp:forward page="index.jsp"/>
<%	} %>

<p>la tua ricerca. hai inviato questo searchBean:</p>
<br>
<p> da: <%=searchBean.getFrom()%></p>
<p> a: <%=searchBean.getTo()%></p>
<p> il: <%=searchBean.getDate()%></p>
<p> alle: <%=searchBean.getTime()%></p>
<p> CANCELLAMI result bean: <%=resultBean.getProva()%></p>

<br>
<h3>i risultati ottenuti:</h3>
<ul>

<!-- TODO ResultBean non arriva con i dati da requestSeat.jsp -->
	<%
	// TODO per ogni risultato mostra un pezzo di html con i dettagli della corsa -->
	for(RideBean ride : resultBean.getRides()){
		ride.stampa();
	%>
		<li><%= ride.getRideId() %> <%= ride.getOwner() %> <%= ride.getSource() %></li>
	<%
	}
	%>

</ul>

<!-- TODO creare metodo nel WebController, creare Controller del caso d'uso e le entity.-->