<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/eventlist.css">

</head>

    <jsp:include page="/WEB-INF/partials/loginNav.jsp" />


<%--This part will display if a user is already in our database and tries to register again--%>
<c:if test="${alreadyInDatabase != null}">
    <p> <span style="color: white">${alreadyInDatabase} already exists. Please login.</span></p>
</c:if>
<%--This part will display if a user is already in our database and tries to register again--%>


<form class="form" action="/login" method="POST">
    <div class="form-title"><span>Log In to experience a new</span></div>
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
        <input class="input-pwd" name="password" type="password" placeholder="Enter Password" required>
    </div>

    <button type="submit" class="submit" value="Log In">
        <span class="sign-text">Sign in</span>
    </button>

    <p class="signup-link">
        No account?
        <a href="/register" class="up">Sign up!</a>
    </p>

</form>

</html>