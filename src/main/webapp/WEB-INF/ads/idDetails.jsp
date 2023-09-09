
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Selected Ad... </h1>
    <div>

        <p>${ad.title}</p>
        <p>${ad.description}</p>
        <p>Date: ${ad.date}</p>
        <p>Time: ${ad.time}</p>
        <p>Location: ${ad.location}</p>
        <c:if test="${ad.cancelled == true}">
            <h2>Event cancelled</h2>
        </c:if>

    </div>

</body>
</html>
