<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="loginBean" scope="request" class="logic.bean.LoginBean"/>
<jsp:setProperty name="loginBean" property="*"/>

<% if(session.getAttribute("userId") != null){ 	// non permettere a un utente loggato di ritornare su questa pagina %>
	<jsp:forward page="home.jsp" />
<% } %>

<html>
<head>
	<title>TVRide - Login</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<br>

	<form action="index.jsp" method="POST">
		<table>
			<tr>
				<td><label for="studentId">Username</label></td>
				<td><input type="text" id="studentId" name="studentId" required autocomplete="off"></td>
			</tr>
			<tr>
				<td><label for="password">Password</label></td>
				<td><input type="password" id="password" name="password" required></td>
			</tr>
			<tr>
				<input type="submit" name="login" value="Log in">
			</tr>
		</table>
	</form>

	<div class="container">
	    <form action="index.jsp" name="myform" method="POST">
	        <div class="row">
	            <div class="col-lg-4">
	                <h1 style="color: #2C6737" ><strong>TVRide</strong></h1>
	            </div>
	        </div>
	        <div class="row">
	            <div class="col-lg-4 form-group">
	                <label for="studentId">Username</label>
	                <input type="text" id="studentId" name="studentId" required autocomplete="off">
	            </div>
	        </div>
	        <div class="row">
	            <div class="col-lg-4 form-group">
	                <label for="password">Password</label>
	                <input type="password" id="password" name="password" required>
	                <!-- TODO puoi anche togliere i controlli per String "" da login bean e login controller -->
	            </div>
	        </div>
	        <div class="row">
	            <div class="col-lg-1 form-group">
	                <input type="submit" name="login" value="Login">
	            </div>
	            <%
	                if (request.getParameter("login") != null) {
	                    if (loginBean.validate()) {													// TODO sposta metodo da bean a web controller
	                        session.setAttribute("userId", loginBean.getStudentId());
	                        session.setAttribute("userName", loginBean.getNome());
	                        session.setAttribute("userCognome", loginBean.getCognome());
	                        session.setAttribute("userRole", loginBean.getRole());
	            %>
	                        <jsp:forward page="home.jsp"/>
	            <%
	                    } else {
	            %>
	                        <p style="color: red" ><strong>Wrong username or password</strong></p>
	            <%
	                    }
	                }
	            %>
	        </div>
	    </form>
	</div>
</body>
</html>
