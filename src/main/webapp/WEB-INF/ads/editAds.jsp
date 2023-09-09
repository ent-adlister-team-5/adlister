<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Event" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Edit Ad</h1>

    <form method="POST" action="./edit-ad?id=${ad.id}">

        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
        </div>
        <div class="form-group">
            <label for="date">Date</label>
            <input type="date" id="date" name="date" class="form-control" value="${ad.date}">
        </div>
        <div class="form-group">
            <label for="time">Time</label>
            <input type="time" id="time" name="time" required class="form-control" value="${ad.time}">
        </div>
        <div class="form-group">
            <label for="location">Location</label>
            <textarea id="location" name="location" type="text" class="form-control">${ad.location}</textarea>
        </div>

        <div class="form-group">
            <label for="cancel">Cancel event?</label>
            <input type="checkbox" id="cancel" name="cancel" value="true">
        </div>

        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
