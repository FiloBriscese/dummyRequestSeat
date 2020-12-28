<%@ page contentType="text/html;charset=UTF-8" language="java" import="logic.boundary.web.RequestSeatWebController"%>
<jsp:useBean id="searchBean" scope="request" class="logic.boundary.web.SearchBean"/>

<!-- TODO check log in -->
<%
	if (session.getAttribute("userName").equals(null)) {
%>
		<jsp:forward page="index.jsp"/>
<%	} %>

<p>la tua ricerca:</p>
<br>
<p> <%=searchBean.getFrom()%></p>
<p> <%=searchBean.getTo()%></p>
<p> <%=searchBean.getDate()%></p>
<p> <%=searchBean.getTime()%></p>

<!-- TODO ciclo che itera su un array di bean tipo ResultBean[int nOfResult] -->
	<!-- TODO per ogni risultato mostra un pezzo di html con i dettagli della corsa -->

<!-- TODO creare metodo nel WebController, creare Controller del caso d'uso e le entity.-->