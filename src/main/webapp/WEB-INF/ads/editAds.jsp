<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Event"/>
    </jsp:include>
    <link rel="stylesheet" href="../css/profile.css">
    <link rel="stylesheet" href="../css/editads.css">

</head>
<body>
<jsp:include page="/WEB-INF/partials/editAdsNAv.jsp" />

<div class="container">
    <form class="form" method="POST" action="./edit-ad?id=${ad.id}">
        <h1 class="title">Edit your Event </h1>
        <p class="message">Mistakes happen, let's fix them.</p>
        <div class="flex">
            <label>
                <input class="form-control" placeholder="" name="title" type="text" value="${ad.title}" required>
                <span>Title</span>

            </label>
        </div>
        <label><textarea class="form-control"
                         placeholder="Description:  &#10;Please mention if this event is family friendly."
                         name="description" type="text" required>${ad.description}</textarea>

        </label>

        <label>
            <input class="form-control" placeholder="" name="date" type="date" value="${ad.date}" required>
            <span>Date</span>
        </label>

        <label>
            <input class="form-control" placeholder="" name="time" type="time" value="${ad.time}" required>
            <span>Time</span>
        </label>

        <label>
            <textarea class="form-control" placeholder="Location: &#10;Please include link if the event is online."
                      name="location" type="text" required>${ad.location}</textarea>
        </label>
        <div class="center" >
            <label for="cancel">Cancel event?</label>
            <input  type="checkbox" id="cancel" name="cancel" value="true">



        </div>
        <button class="submit">Submit</button>
    </form>
</div>
</body>
</html>

