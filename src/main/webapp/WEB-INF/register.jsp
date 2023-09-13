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

    <c:if test="${not empty alreadyInDatabase}">
    <div class="container">
        <div class="box">
            <span class="title">${alreadyInDatabase} already exists. Please login.</span>
            <div>
            </div>
        </div>
    </div>
    </c:if>

    <%--This part will display if a user is already in our database and tries to register again--%>

<%--    <c:if test="${not empty alreadyInDatabase}">--%>
<%--        <p> <span style="color: white">${alreadyInDatabase} already exists. Please login.</span></p>--%>
<%--    </c:if>--%>

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