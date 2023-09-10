<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <link rel="stylesheet" href="css/landingPage.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
        <jsp:include page="/WEB-INF/partials/fillerMain.jsp" />

<%--        <jsp:include page="/WEB-INF/partials/carosuel.jsp" />--%>
        <div>
            <footer>
                <jsp:include page="/WEB-INF/partials/footer.jsp" />
            </footer>
    </div>
<jsp:include page="/WEB-INF/partials/script.jsp"></jsp:include>
</body>
</html>
