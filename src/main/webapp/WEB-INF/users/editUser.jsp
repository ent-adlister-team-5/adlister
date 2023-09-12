<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"></jsp:include>
    <link rel="stylesheet" href="../css/profile.css">
    <link rel="stylesheet" href="../css/editUsername.css">


    <title>Title</title>
</head>
<body>
    <div>
<jsp:include page="/WEB-INF/partials/editUserNav.jsp"></jsp:include>

<%--    <form method="POST" action="./edit-profile?id=${user.id}">--%>

<%--        <div class="form">--%>
<%--            <p class="title"> Edit Your profile </p>--%>

<%--            <label for="username">Username</label>--%>
<%--            <input id="username" name="username" class="form-control" type="text" value="${user.username}" required>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="email">Email</label>--%>
<%--            <input id="email" name="email" class="form-control" type="text" value="${user.email}" required>--%>
<%--        </div>--%>
<%--        <input type="submit" class="btn btn-primary btn-block" value="Submit">--%>

<%--    </form>--%>
<%--</div>--%>
<%--</body>--%>
<%--    </html>--%>

<form class="form" method="POST" action="./edit-profile?id=${user.id}">
    <p class="title">Edit Profile </p>
    <p class="message">Change is good, Let's start here.</p>
    <div class="flex">
        <label>
        </label>
    </div>


    <label>
        <input class="input" placeholder="" name="username" type="text" value="${user.username}" required>
        <span>Username</span>
    </label>


    <label>
    </label>


    <label>
        <input class="input" placeholder="" name="email" type="email" value="${user.email}" required>
        <span>email</span>
    </label>

    <button class="submit">Submit</button>
</form>