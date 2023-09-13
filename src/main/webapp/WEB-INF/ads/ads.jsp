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
<%--    <link rel="stylesheet" href="css/carouselBackground.css">--%>

</head>
<body>

<%--<jsp:include page="/WEB-INF/partials/carosuelBackground.jsp"/>--%>

    <jsp:include page="/WEB-INF/partials/dashboardNavbar.jsp"/>
    <div class="container image-container">

        <%--CODE DID NOT WORK---------%>

<%--        <c:if test="${showAlert}">--%>
<%--            <jsp:include page="/WEB-INF/partials/dashBoardAlert.jsp"/>--%>
<%--        </c:if>--%>

    <%--CODE DID NOT WORK---------%>

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
            <img src="${ad.image}" class="card-img-top" alt="place-holder">
            <div class="card-body">
                <div>
                    <c:if test="${ad.cancelled == true}">
                        <div class="d-flex gap-3 justify-content-center">
                            <p class="event-cancelled">>Event cancelled</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-emoji-tear" viewBox="0 0 16 16">
                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14Zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16Z"/>
                                <path d="M6.831 11.43A3.1 3.1 0 0 1 8 11.196c.916 0 1.607.408 2.25.826.212.138.424-.069.282-.277-.564-.83-1.558-2.049-2.532-2.049-.53 0-1.066.361-1.536.824.083.179.162.36.232.535.045.115.092.241.135.373ZM6 11.333C6 12.253 5.328 13 4.5 13S3 12.254 3 11.333c0-.706.882-2.29 1.294-2.99a.238.238 0 0 1 .412 0c.412.7 1.294 2.284 1.294 2.99ZM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5Zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5Zm-1.5-3A.5.5 0 0 1 10 3c1.162 0 2.35.584 2.947 1.776a.5.5 0 1 1-.894.448C11.649 4.416 10.838 4 10 4a.5.5 0 0 1-.5-.5ZM7 3.5a.5.5 0 0 0-.5-.5c-1.162 0-2.35.584-2.947 1.776a.5.5 0 1 0 .894.448C4.851 4.416 5.662 4 6.5 4a.5.5 0 0 0 .5-.5Z"/>
                            </svg>
                        </div>
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
                    <img src="${ad.image}" class="card-img-top" alt="place-holder">

                    <div class="card-body">
                    <c:if test="${ad.cancelled == true}">
                        <div class="d-flex gap-3 justify-content-center">
                            <p class="event-cancelled">Event cancelled</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-emoji-tear" viewBox="0 0 16 16">
                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14Zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16Z"/>
                                <path d="M6.831 11.43A3.1 3.1 0 0 1 8 11.196c.916 0 1.607.408 2.25.826.212.138.424-.069.282-.277-.564-.83-1.558-2.049-2.532-2.049-.53 0-1.066.361-1.536.824.083.179.162.36.232.535.045.115.092.241.135.373ZM6 11.333C6 12.253 5.328 13 4.5 13S3 12.254 3 11.333c0-.706.882-2.29 1.294-2.99a.238.238 0 0 1 .412 0c.412.7 1.294 2.284 1.294 2.99ZM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5Zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5Zm-1.5-3A.5.5 0 0 1 10 3c1.162 0 2.35.584 2.947 1.776a.5.5 0 1 1-.894.448C11.649 4.416 10.838 4 10 4a.5.5 0 0 1-.5-.5ZM7 3.5a.5.5 0 0 0-.5-.5c-1.162 0-2.35.584-2.947 1.776a.5.5 0 1 0 .894.448C4.851 4.416 5.662 4 6.5 4a.5.5 0 0 0 .5-.5Z"/>
                            </svg>
                        </div>
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
    <jsp:include page="/WEB-INF/partials/script.jsp"></jsp:include>
</body>
</html>
