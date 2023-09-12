<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/eventlist.css">

</head>
<div class="keila">

    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

<%--    <div class="container">--%>
<%--        <h1>Please Log In</h1>--%>
<%--        <form action="/login" method="POST">--%>
<%--            <div class="form-group">--%>
<%--                <label for="username">Username</label>--%>
<%--                <input id="username" name="username" class="form-control" type="text">--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="password">Password</label>--%>
<%--                <input id="password" name="password" class="form-control" type="password">--%>
<%--            </div>--%>
<%--            <input type="submit" class="btn btn-primary btn-block" value="Log In">--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</body>--%>
<%--</html>--%>


<form class="form" action="/login" method="POST">
    <div class="form-title"><span>Log In to experience a new</span></div>
    <div class="title-2"><span>E-Venture</span></div>
    <div class="input-container">
        <input class="input-user" name="username" type="text" placeholder="Enter Username">
        <span> </span>
    </div>

    <section class="bg-stars">
        <span class="star"></span>
        <span class="star"></span>
        <span class="star"></span>
        <span class="star"></span>
    </section>

    <div class="input-container">
        <input class="input-pwd" name="password" type="password" placeholder="Enter Password">
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