<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- dichiarazione e instanziazione di un loginBean !-->
<jsp:useBean id="loginBean" scope="request" class="jspexample.LoginBean"/>

<!-- mappare gli attributi di un oggetto sui campi della form -->
<jsp:setProperty name="loginBean" property="*"/>


<html>
<head>
    <title>TVRide 1 - Login</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color: #F2EDE4">
<br>
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
                <input type="text" id="studentId" name="studentId" autocomplete="off">
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password">
            </div>
        </div>
        <div class="row">
            <div class="col-lg-1 form-group">
                <input type="submit" name="login" value="Login">
            </div>
            <%
                if (request.getParameter("login") != null) { //
                    if (loginBean.validate()) {
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
