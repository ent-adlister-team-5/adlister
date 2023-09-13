<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html>
<head>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Event"/>
    </jsp:include>
    <link rel="stylesheet" href="../css/profile.css">
    <link rel="stylesheet" href="../css/viewdetails.css">


</head>
<body>
<jsp:include page="/WEB-INF/partials/editAdsNAv.jsp" />

    <div class="card shadow">
<div>
    <c:if test="${ad.cancelled == true}">
        <h2>Event cancelled</h2>
    </c:if>
    <p>${ad.title}</p>
    <p>${ad.description}</p>
    <p>Date: ${ad.date}</p>
    <p>Time: ${ad.time}</p>
    <c:choose>
        <c:when test="${fn:contains(ad.location, 'http') || fn:contains(ad.location, 'www')}">
           <h4>Online Event:</h4><a href="${ad.location}">${ad.location}</a>
        </c:when>
        <c:otherwise>
            <p>Location: ${ad.location}</p>
        </c:otherwise>
    </c:choose>
    </div>
</div>
</body>
</html>
