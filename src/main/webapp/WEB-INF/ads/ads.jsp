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
            <h1>Here Are all the ads!</h1>
            <div>
                <jsp:include page="/WEB-INF/partials/carosuel.jsp"/>
            </div>

            <%--        <c:choose>--%>
            <%--            <c:when test="${not empty searchResults || searchResults.size() == 0}">--%>
            <%--                <a class="btn btn-primary" href="/ads">All ads</a>--%>
            <%--            </c:when>--%>
            <%--        </c:choose>--%>





<%--            <div class="card-container">--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${not empty searchResults}">--%>
<%--                        <c:forEach var="ad" items="${searchResults}">--%>
<%--                            <div class="card" style="width: 18rem;">--%>
<%--                                <div class="card-body">--%>
<%--                                    <div>--%>
<%--                                        <c:if test="${ad.cancelled == true}">--%>
<%--                                            <h2>Event cancelled</h2>--%>
<%--                                        </c:if>--%>
<%--                                        <h2>${ad.title}</h2>--%>
<%--                                        <p>${ad.description}</p>--%>
<%--                                        <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </c:forEach>--%>
<%--                    </c:when>--%>
<%--                    <c:otherwise>--%>
<%--                        <c:forEach var="ad" items="${ads}">--%>
<%--                            <div>--%>
<%--                                <c:if test="${ad.cancelled == true}">--%>
<%--                                    <h2>Event cancelled</h2>--%>
<%--                                </c:if>--%>
<%--                                <h2>${ad.title}</h2>--%>
<%--                                <p>${ad.location}</p>--%>
<%--                                <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>--%>
<%--                            </div>--%>
<%--                        </c:forEach>--%>
<%--                    </c:otherwise>--%>
<%--                </c:choose>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--</div>--%>
<%--</body>--%>



<div class="container-hero d-flex flex-wrap gap-5">
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
                    <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>
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
