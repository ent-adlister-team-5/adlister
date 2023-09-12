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

    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" required>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" required></textarea>
            </div>
            <div class="form-group">
                <label for="date">Date</label>
                <input type="date" id="date" name="date" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="time">Time</label>
                <input type="time" id="time" name="time" required class="form-control">
            </div>
            <div class="form-group">
                <label for="location">Location</label>
                <textarea id="location" name="location" type="text" class="form-control" required></textarea>
            </div>

            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>

<form class="form" action="/ads/create" method="post">
    <h1 class="title">Create a new Ad </h1>
    <p class="message">Create connections, memories, and New E-Ventures.</p>
    <div class="flex">
        <label>Title>
            <input class="form-control" placeholder=""  name="title" type="text" required>
            <span>Title</span>

        </label>
    </div>

    <label>
        <textarea class="form-control" placeholder="" name="description" type="text"  required></textarea>
        <span>Description</span>
    </label>Description>


    <label>Date>
        <input class="form-control" placeholder="" name="date" type="date"  required>
        <span>Date</span>
    </label>



    <label>Time>
        <input class="form-control" placeholder="" name="time" type="time" required>
        <span>Time</span>
    </label>


    <label>
        <textarea class="Location" placeholder="" name="location" type="text"  required></textarea>
        <span>email</span>
    </label>

    <button class="submit">Submit</button>
</form>