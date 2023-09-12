<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <link rel="stylesheet" href="css/eventlist.css">
</head>
<body>
<div class="container">
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


            <div class="card-container">
                <c:choose>
                    <c:when test="${not empty searchResults}">
                        <c:forEach var="ad" items="${searchResults}">
                            <%--                        <div class="card">--%>
                            <div class="card-body">
                                    <%--                                <div class="col-md-6">--%>
                                <div>
                                    <c:if test="${ad.cancelled == true}">
                                        <h2>Event cancelled</h2>
                                    </c:if>
                                    <h2>${ad.title}</h2>
                                    <p>${ad.description}</p>
                                    <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>
                                </div>
                                    <%--                                </div>--%>
                                    <%--                            </div>--%>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="ad" items="${ads}">
                            <%--                        <div class="card">--%>
                            <%--                            <div class="card-body">--%>
                            <%--                                <div class="col-md-6">--%>

                            <div>
                                <c:if test="${ad.cancelled == true}">
                                    <h2>Event cancelled</h2>
                                </c:if>
                                <h2>${ad.title}</h2>
                                <p>${ad.location}</p>
                                <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>
                            </div>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                            <%--                        </div>--%>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>


            </div>
        </div>
    </div>
</div>
<style>
    .image-container {
        width: 100%;
        height: 100%;
    }

    .card-container {
        /*margin-bottom: 2rem;*/
        width: 100%;
        padding: 10px;
        text-align: center;
        min-width: 300px;
        display: flex;
        justify-content: space-between;
    }
</style>
</body>
<jsp:include page="/WEB-INF/partials/script.jsp"></jsp:include>
</html>
