<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <link rel="stylesheet" href="../css/profile.css">
    <link rel="stylesheet" href="../css/createAds.css">


</head>
<body>
<jsp:include page="/WEB-INF/partials/editUserNav.jsp"></jsp:include>

<form class="form" action="/ads/create" method="post">
    <h1 class="title">Create a new Ad </h1>
    <p class="message">Create connections, memories,& E-Ventures.</p>
    <div class="flex">
        <label>
            <input class="form-control" placeholder=""  name="title" type="text" required>
            <span>Title</span>

        </label>
    </div>

    <label>
        <textarea class="form-control" placeholder="Description:  &#10;Please mention if this event is family friendly." name="description" type="text"  required></textarea>
    </label>


    <label>
        <input class="form-control" placeholder="" name="date" type="date"  required>
        <span>Date</span>
    </label>



    <label>
        <input class="form-control" placeholder="" name="time" type="time" required>
        <span>Time</span>
    </label>


    <label>
        <textarea class="form-control" placeholder="Location: &#10;Please include link if the event is online." name="location" type="text"  required></textarea>
    </label>

    <button class="submit">Submit</button>
</form>