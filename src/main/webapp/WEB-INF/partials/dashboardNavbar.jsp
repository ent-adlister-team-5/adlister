<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    <nav class="navbar navbar-expand-lg navbar-dark py-0">
        <a class="navbar-brand" href="/">Adlister</a>
        <form role="search" action="/ads" method="GET" class="mb-0" >

            <div class="input-group">
                <input class="form-control" type="search" placeholder="Search" aria-label="Search" name="search">
                <div class="input-group-append">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </div>
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
      <a href="/logout" class="sub-menu-link">
          <img src= "/img/person-walking-arrow-right-solid.svg" class="logout">
        <p>Logout</p>
          <span>></span>

      </a>
      <a href="/profile" class="sub-menu-link">
        <img src="/img/eye-solid.svg" class="view">
        <p>View Profile</p>
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

