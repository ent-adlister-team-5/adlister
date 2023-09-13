<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <link rel="stylesheet" href="css/eventlist.css">
    <link rel="stylesheet" href="css/register.css">


</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
<%--    <div class="container">--%>
<%--        <h1>Please fill in your information.</h1>--%>
<%--        <form action="/register" method="post">--%>
<%--            <div class="form-group">--%>
<%--                <label for="username">Username</label>--%>
<%--                <input id="username" name="username" class="form-control" type="text">--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="email">Email</label>--%>
<%--                <input id="email" name="email" class="form-control" type="text">--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="password">Password</label>--%>
<%--                <input id="password" name="password" class="form-control" type="password">--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="confirm_password">Confirm Password</label>--%>
<%--                <input id="confirm_password" name="confirm_password" class="form-control" type="password">--%>
<%--            </div>--%>
<%--            <input type="submit" class="btn btn-primary btn-block">--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</body>--%>
<%--</html>--%>

    <%--This part will display if a user is already in our database and tries to register again--%>

    <c:if test="${not empty alreadyInDatabase}">
        <p> <span style="color: white">${alreadyInDatabase} already exists. Please login.</span></p>
    </c:if>

    <%--This part will display if a user is already in our database and tries to register again--%>


<form class="form" action="/register" method="POST">
    <div class="form-title"><span>Register to experience a new</span></div>
    <div class="title-2"><span>E-Venture</span></div>
    <div class="input-container">
        <input class="input-user" name="username" type="text" placeholder="Enter Username" required>
        <span> </span>
    </div>

    <section class="bg-stars">
        <span class="star"></span>
        <span class="star"></span>
        <span class="star"></span>
        <span class="star"></span>
    </section>

    <div class="input-container">
        <input class="input-email" name="email" type="email" placeholder="Enter email" required>
    </div>

    <div class="input-container">
        <input class="input-pwd" name="password" type="password" placeholder="Enter Password" required>
    </div>

    <div class="input-container">
        <input class="input-pwd" name="confirm_password" type="password" placeholder="Confirm Password" required>
    </div>

    <button type="submit" class="submit" value="Log In">
        <span class="sign-text">Sign Up</span>
    </button>

</form>
</body>
</html>