<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Event Details</title>
    <link rel="stylesheet" href="css/eventDetails.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro">

</head>
<body>
<div class="card shadow">
    <h1>Event Details</h1>
    <div>
        <c:if test="${ad.cancelled == true}">
            <h2>Event cancelled</h2>
        </c:if>
        <p>${ad.title}</p>
        <p>${ad.description}</p>
        <p>Date: ${ad.date}</p>
        <p>Time: ${ad.time}</p>
        <p>Location: ${ad.location}</p>
    </div>
</div>
</body>
</html>
