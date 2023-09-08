<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <div class="container">
        <h1>Here are your created events!</h1>

        <c:forEach var="ad" items="${ads}">
            <div class="card">
                <div class="card-body">
                    <div class="col-md-6">
                        <div class= "search-details">
                            <h2>${ad.title}</h2>
                            <p>${ad.location}</p>
                            <a class="btn btn-primary" href="./id-details?id=${ad.id}">Edit event</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

</body>
</html>
