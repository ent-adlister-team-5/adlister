<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" href="../css/deleteModal.css">
    <link rel="stylesheet" href="../css/profile.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/profileNav.jsp" />


<jsp:include page= "/WEB-INF/partials/profileContainer.jsp" />
<%--THIS SECTION NEEDS TO BRE IN PARTIALS--%>
    <div class="container">
        <h2>Personal settings</h2>
        <a class="btn btn-primary" href="./edit-profile?id=${user.id}">Profile settings</a>
    </div>
 <%--------------------------------------------%>

    <div class="container">
        <h1>This is another area of your profile</h1>

        <c:forEach var="ad" items="${ads}">
            <div class="card">
                <div class="card-body">
                    <div class="col-md-6">
                        <div class= "search-details">
                            <c:if test="${ad.cancelled == true}">
                                <h2>Event cancelled</h2>
                            </c:if>
                            <h2>${ad.title}</h2>
                            <p>${ad.location}</p>
                            <a class="btn btn-primary" href="./edit-ad?id=${ad.id}">Edit event</a>
                            <a class="btn btn-primary delete-link" href="#" data-ad-id="${ad.id}" data-ad-title="${ad.title}">Delete event</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <jsp:include page="/WEB-INF/partials/profileModal.jsp" />
<script src="../js/deleteEvent.js"></script>
</body>
</html>

