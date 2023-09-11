<%--
  Created by IntelliJ IDEA.
  User: kv
  Date: 9/11/23
  Time: 9:40 AM
  To change this template use File | Settings | File Templates.
--%>
<nav class="navbar navbar-expand-lg navbar-dark py-0">
    <a class="navbar-brand" href="/">E-ventures</a>
    <form role="search" action="/search" method="GET" class="mb-0" >

        <div class="input-group">
            <input class="form-control" type="search" placeholder="Search" aria-label="Search" name="search">
            <div class="input-group-append">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </div>
        </div>
    </form>
    <!-- Start of Profile image navbar -->
    <img src="/img/userp.png" class="user-pic" alt="user profile icon" onclick="toggleMenu()">

    <div class="sub-menu-wrap" id="subMenu">
        <div class="sub-menu">
            <div class="user-info">
                <img src="/img/userp.png">
                <h2>User</h2>
            </div>
            <hr>
            <a href="/logout" class="sub-menu-link">
                <img src= "/img/person-walking-arrow-right-solid.svg" class="logout">
                <p>Logout</p>
                <span>></span>

            </a>
            <a href="/ads" class="sub-menu-link">
                <img src="/img/house-solid.svg" class="view">
                <p>View All Ads</p>
                <span>></span>
            </a>
            <a href="/ads/create" class="sub-menu-link">
                <img src="/img/circle-plus-solid.svg" class="view">
                <p>Create An Ad</p>
                <span>></span>
            </a>
        </div>
    </div>
</nav>
<script>
    let subMenu = document.getElementById("subMenu");
    function toggleMenu(){
        subMenu.classList.toggle("open-menu");

    }
</script>

