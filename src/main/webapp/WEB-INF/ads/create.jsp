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
    <label><textarea class="form-control" placeholder="Description:  &#10;Please mention if this event is family friendly." name="description" type="text"  required></textarea>

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

<%--    <div id="upload-image">Upload Image?</div>--%>

<%--    <div id="upload-image">--%>
<%--    <div class="button" data-tooltip="Size: 20Mb">--%>
<%--        <div class="button-wrapper">--%>
<%--            <div class="text">Upload Image?</div>--%>
<%--            <span class="icon">--%>
<%--      <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="2em" height="2em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15V3m0 12l-4-4m4 4l4-4M2 17l.621 2.485A2 2 0 0 0 4.561 21h14.878a2 2 0 0 0 1.94-1.515L22 17"></path></svg>--%>
<%--    </span>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--        </div>--%>

<%--    <input class="upload-input"  name="url" type="hidden">--%>
<%--    <div id="upload-preview">--%>
<%--    </div>--%>


    <div id="upload-image">Want to Upload an Image?<span style="color:blue"> Click Here</span></div>
    <input id="upload-input" name="url" type="hidden">
    <div id="upload-preview">
    </div>


    <button class="submit">Submit</button>

</form>


<script src="../../js/keys.js"></script>
<%--    File picker SDK --%>
<script src="//static.filestackapi.com/filestack-js/3.x.x/filestack.min.js"></script>
<%--    File picker SDK--%>

<script src="../../js/file-picker/file-picker.js" type="module"></script>

<body>