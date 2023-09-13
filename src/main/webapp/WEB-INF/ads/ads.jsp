<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <link rel="stylesheet" href="css/eventlist.css">
    <link rel="stylesheet" href="css/cards.css">
    <link rel="stylesheet" href="css/carouselBackground.css">

</head>
<body>
<jsp:include page="/WEB-INF/partials/carosuelBackground.jsp"/>

    <div class="container-j">
        <jsp:include page="/WEB-INF/partials/dashboardNavbar.jsp"/>

        <div class="container image-container">
            <div>
                <jsp:include page="/WEB-INF/partials/carosuel.jsp"/>
            </div>
        </div>


<div class="container container-hero d-flex gap-5">
    <c:choose>
    <c:when test="${not empty searchResults}">
        <div class="card">
    <c:forEach var="ad" items="${searchResults}">
        <div class="card">
            <img src="https://burst.shopifycdn.com/photos/hiker-looks-up-at-vertical-mountain-peaks.jpg?width=925&exif=0&iptc=0" class="card-img-top" alt="place-holder">
            <div class="card-body">
                <div>
                    <c:if test="${ad.cancelled == true}">
                        <h2>Event cancelled</h2>
                    </c:if>
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <div>
                    <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
    </c:when>
        <c:otherwise>
            <c:forEach var="ad" items="${ads}">
                <div class="card">
                    <img src="/img/pln.jpeg" class="card-img-top" alt="place-holder">

                    <div class="card-body">
                    <c:if test="${ad.cancelled == true}">
                        <h2>Event cancelled</h2>
                    </c:if>
                    <h2>${ad.title}</h2>
                        <c:choose>
                            <c:when test="${fn:contains(ad.location, 'http') || fn:contains(ad.location, 'www')}">
                                <h4>Online Event:</h4><a href="${ad.location}">${ad.location}</a>
                            </c:when>
                            <c:otherwise>
                                <p>Location: ${ad.location}</p>
                            </c:otherwise>
                        </c:choose>
                        <div><br>
                    <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>
                        </div>
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
