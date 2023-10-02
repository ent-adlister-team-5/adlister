<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav class="navbar navbar-expand-lg navbar-dark py-0 position-relative" style="z-index: 1;">
    <a class="navbar-brand" href="/">E-Ventures</a>
    <form role="search" action="/ads" method="GET" class="mb-0">

        <div class="input-group">
            <input class="input-group-append" type="search" placeholder="Search" aria-label="Search" name="search">
            <%--                <div class="input-group-append">--%>
            <%--                    <button class="btn btn-outline-success" type="submit">Search</button>--%>
            <%--                </div>--%>
        </div>
    </form>

    <%-- This will only appear if we have a search --%>
    <c:if test="${not empty searched}">
        <a class="button" href="/ads">All ads</a>
    </c:if>
    <%-- This will only appear if we have a search --%>


    <!-- Start of Profile image navbar -->
    <img src="/img/userp.png" class="user-pic" alt="user profile icon" onclick="toggleMenu()">

    <div class="sub-menu-wrap" id="subMenu">
        <div class="sub-menu">
            <div class="user-info">
                <img src="/img/userp.png">
                <h2>${user.username}</h2>
            </div>
            <hr>
            <%--  ----------------------------   DropDown ----------------   <--%>
<%-----------------------------------  Modal Button to Edit Profile  -----------------------<--%>
           <div class="hero">
               <button
                       type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal"
                       data-bs-whatever="@getbootstrap">
                   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="edit"><!--! Font Awesome Pro 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M471.6 21.7c-21.9-21.9-57.3-21.9-79.2 0L362.3 51.7l97.9 97.9 30.1-30.1c21.9-21.9 21.9-57.3 0-79.2L471.6 21.7zm-299.2 220c-6.1 6.1-10.8 13.6-13.5 21.9l-29.6 88.8c-2.9 8.6-.6 18.1 5.8 24.6s15.9 8.7 24.6 5.8l88.8-29.6c8.2-2.7 15.7-7.4 21.9-13.5L437.7 172.3 339.7 74.3 172.4 241.7zM96 64C43 64 0 107 0 160V416c0 53 43 96 96 96H352c53 0 96-43 96-96V320c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7-14.3 32-32 32H96c-17.7 0-32-14.3-32-32V160c0-17.7 14.3-32 32-32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H96z"/></svg>Edit My Profile
               </button>
           </div>
 <%-----------------------------------  Modal Button to Delete Profile  -----------------------<--%>
            <br>
            <div class="hero">
            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#deleteModal">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="delete"><!--! Font Awesome Pro 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M256 48a208 208 0 1 1 0 416 208 208 0 1 1 0-416zm0 464A256 256 0 1 0 256 0a256 256 0 1 0 0 512zM175 175c-9.4 9.4-9.4 24.6 0 33.9l47 47-47 47c-9.4 9.4-9.4 24.6 0 33.9s24.6 9.4 33.9 0l47-47 47 47c9.4 9.4 24.6 9.4 33.9 0s9.4-24.6 0-33.9l-47-47 47-47c9.4-9.4 9.4-24.6 0-33.9s-24.6-9.4-33.9 0l-47 47-47-47c-9.4-9.4-24.6-9.4-33.9 0z"/></svg>
                Delete Profile
            </button>
            </div>
            <br>
            <div class="hero">
            <a href="/logout" class="sub-menu-link">
                <img src="/img/person-walking-arrow-right-solid.svg" class="logout">
                <p>Logout</p>
                <span>></span>
            </a>
            </div>
            <br>
            <div class="hero">
            <a href="/profile" class="sub-menu-link">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="likes"><!--! Font Awesome Pro 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M47.6 300.4L228.3 469.1c7.5 7 17.4 10.9 27.7 10.9s20.2-3.9 27.7-10.9L464.4 300.4c30.4-28.3 47.6-68 47.6-109.5v-5.8c0-69.9-50.5-129.5-119.4-141C347 36.5 300.6 51.4 268 84L256 96 244 84c-32.6-32.6-79-47.5-124.6-39.9C50.5 55.6 0 115.2 0 185.1v5.8c0 41.5 17.2 81.2 47.6 109.5z"/></svg>
                <p> View My Likes</p>
                <span>></span>
            </a>
            </div>
            <br>
           <div class="hero">
            <div class="dropdown">
                <button
                        class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="shield"><!--! Font Awesome Pro 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M269.4 2.9C265.2 1 260.7 0 256 0s-9.2 1-13.4 2.9L54.3 82.8c-22 9.3-38.4 31-38.3 57.2c.5 99.2 41.3 280.7 213.6 363.2c16.7 8 36.1 8 52.8 0C454.7 420.7 495.5 239.2 496 140c.1-26.2-16.3-47.9-38.3-57.2L269.4 2.9zM160.9 286.2c4.8 1.2 9.9 1.8 15.1 1.8c35.3 0 64-28.7 64-64V160h44.2c12.1 0 23.2 6.8 28.6 17.7L320 192h64c8.8 0 16 7.2 16 16v32c0 44.2-35.8 80-80 80H272v50.7c0 7.3-5.9 13.3-13.3 13.3c-1.8 0-3.6-.4-5.2-1.1l-98.7-42.3c-6.6-2.8-10.8-9.3-10.8-16.4c0-2.8 .6-5.5 1.9-8l15-30zM160 160h40 8v32 32c0 17.7-14.3 32-32 32s-32-14.3-32-32V176c0-8.8 7.2-16 16-16zm128 48a16 16 0 1 0 -32 0 16 16 0 1 0 32 0z"/></svg>
                    My Foster Badges
                </button>
                <ul class="dropdown-menu">
                    <img src="/img/ppybdg.png" width="40px" height="40px">
                    <img src="/img/ppybdg.png" width="40px" height="40px">
                    <img src="/img/ppybdg.png" width="40px" height="40px">
                    <img src="/img/ppybdg.png" width="40px" height="40px">
                </ul>
            </div>
           </div>

<%--            <div class="hero">--%>
<%--                <a href="/ads/create" class="sub-menu-link">--%>
<%--                    <img src="/img/circle-plus-solid.svg" class="view">--%>
<%--                    <p>Create An Ad</p>--%>
<%--                    <span>></span>--%>
<%--                </a>--%>
<%--            </div>--%>
        </div>
    </div>
</nav>
<%---------------------------------------- Edit Modal------------------------------ <--%>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Edit My Profile</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="editing mb-3">
                        <label for="user-name" class="col-form-label">Username:</label>
                        <input type="text" class="form-control" id="user-name">
                    </div>
                    <div class="editing mb-3">
                        <label for="password" class="col-form-label">Password:</label>
                        <input type="text" class="form-control" id="password">
                    </div>
                    <div class="editing mb-3">
                        <label for="location" class="col-form-label">Location:</label>
                        <input type="text" class="form-control" id="location">
                    </div>
                    <div class="editing mb-3">
                        <label for="email" class="col-form-label">Email:</label>
                        <input type="text" class="form-control" id="email">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </div>
</div>
<%---------------------------------------- Delete Modal------------------------------ <--%>
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="deleteModalLabel">Delete My Accont</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are You sure you want to delete your account? Once you delete your account, all of your data will be lost and you will be unable to recover or have access to your account.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="hero btn btn-primary hero">Yes, I'm Sure</button>
            </div>
        </div>
    </div>
</div>
<script>
    let subMenu = document.getElementById("subMenu");

    function toggleMenu() {
        subMenu.classList.toggle("open-menu");

    }
</script>

