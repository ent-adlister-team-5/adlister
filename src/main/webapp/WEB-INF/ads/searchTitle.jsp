<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Search by title" />
  </jsp:include>
</head>
<body>


<div class="container">
  <h1>SEARCHED ADDS!</h1>
  <c:choose>
    <c:when test="${noAds}">
      <script>alert("No events found by that title");</script>
      <h1>Sorry, no events by that title found :(</h1>
    </c:when>

    <c:otherwise>
      <c:forEach var="ad" items="${ads}">
        <div class="card">
          <div class="card-body">
            <div class="col-md-6">
              <div class= "search-details">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>
              </div>
            </div>
          </div>
        </div>
      </c:forEach>

    </c:otherwise>
  </c:choose>

<%--  <c:forEach var="ad" items="${ads}">--%>
<%--    <div class="card">--%>
<%--      <div class="card-body">--%>
<%--        <div class="col-md-6">--%>
<%--          <div class= "search-details">--%>
<%--            <h2>${ad.title}</h2>--%>
<%--            <p>${ad.description}</p>--%>
<%--            <a class="btn btn-primary" href="./id-details?id=${ad.id}">View Details</a>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </c:forEach>--%>
</div>


</body>
</html>
