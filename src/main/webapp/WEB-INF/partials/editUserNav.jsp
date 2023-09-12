<%--
  Created by IntelliJ IDEA.
  User: kv
  Date: 9/11/23
  Time: 9:40 AM
  To change this template use File | Settings | File Templates.
--%>
<nav class="navbar navbar-expand-lg navbar-dark py-0">
  <a class="navbar-brand" href="/">E-ventures</a>

  <!-- Start of Profile image navbar -->
  <img src="/img/userp.png" class="user-pic" alt="user profile icon" onclick="toggleMenu()">

  <div class="sub-menu-wrap" id="subMenu">
    <div class="sub-menu">
      <div class="user-info">
        <img src="/img/userp.png">
        <h2>${sessionScope.user.username}</h2>
      </div>
      <hr>
      <a href="/profile" class="sub-menu-link">
        <img src="/img/eye-solid.svg" class="view">
        <p>View Profile</p>
        <span>></span>
      </a>

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