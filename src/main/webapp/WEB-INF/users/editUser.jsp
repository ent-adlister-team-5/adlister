<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form method="POST" action="./edit-profile?id=${user.id}">

        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${user.username}" required>
        </div>
        <div class="form-group">
            <label for="email">Password</label>
            <input id="email" name="email" class="form-control" type="text" value="${user.password}" required>
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">

    </form>

</body>
</html>
