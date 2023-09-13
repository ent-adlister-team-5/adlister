<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <link rel="stylesheet" href="css/eventlist.css">
    <link rel="stylesheet" href="css/cards.css">
</head>
<body>

    <div>
        <jsp:include page="/WEB-INF/partials/dashboardNavbar.jsp"/>

        <div class="image-container">
            <div>
                <jsp:include page="/WEB-INF/partials/carosuel.jsp"/>
            </div>


<div class="container-hero d-flex flex-wrap gap-5">
    <c:choose>
    <c:when test="${not empty searchResults}">
        <div class="card">
    <c:forEach var="ad" items="${searchResults}">
        <div class="card">
            <img src="${ad.image}" class="card-img-top" alt="place-holder">
            <div class="card-body">
                <div>
                    <c:if test="${ad.cancelled == true}">
                        <h2>Event cancelled</h2>
                    </c:if>
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>
                </div>
            </div>
        </div>
    </c:forEach>
    </c:when>
        <c:otherwise>
            <c:forEach var="ad" items="${ads}">
                <div class="card">
                    <img src="${ad.image}" class="card-img-top" alt="place-holder">

                    <div class="card-body">
                    <c:if test="${ad.cancelled == true}">
                        <h2>Event cancelled</h2>
                    </c:if>
                    <h2>${ad.title}</h2>
                    <p>${ad.location}</p>
                    <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>
                </div>
                </div>
            </c:forEach>
        </c:otherwise>
    </c:choose>
</div>
</div>
</div>

</div>
    </div>
    <jsp:include page="/WEB-INF/partials/script.jsp"></jsp:include>
</body>
</html>
