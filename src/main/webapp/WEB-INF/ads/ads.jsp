<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<div>
<jsp:include page="/WEB-INF/partials/dashboardNavbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="card">
    <div class="card-body">
        <div class="col-md-6">
            <form class= "search-details" role="search" method="post" action="/details">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
                <button type="submit" class="btn btn-primary">View Details</button>
            </form>
</div>
</div>
        </div>
    </c:forEach>
</div>
</div>
</body>
<jsp:include page="/WEB-INF/partials/script.jsp"></jsp:include>

</html>
