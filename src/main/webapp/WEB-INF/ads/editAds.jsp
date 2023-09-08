<%--
  Created by IntelliJ IDEA.
  User: donaldtwitty
  Date: 9/8/23
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Ad</title>
</head>
<body>
<div class="container">
    <h1>Create a new Ad</h1>
    <form >
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
            <script>

            </script>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
        <div class="form-group">
            <label for="date">Date</label>
            <input type="date" id="date" name="date" class="form-control">
        </div>
        <div class="form-group">
            <label for="time">Time</label>
            <input type="time" id="time" name="time" required class="form-control">
        </div>
        <div class="form-group">
            <label for="location">Location</label>
            <textarea id="location" name="location" type="text" class="form-control"></textarea>
        </div>

        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
