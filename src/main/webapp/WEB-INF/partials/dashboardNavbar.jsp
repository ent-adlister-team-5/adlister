

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="/ads">Adlister</a>

    <form class="d-flex" role="search" action="/search" method="GET">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
<%-- Start of Profile image navbar --%>
<img src="/img/user-icon.png" class="user-pic" alt="user profile icon" onclick="toggleMenu()">
  </div>
  <div class="sub-menu-wrap" id="subMenu">
    <div class="sub-menu">
<div class="user-info">
<img src="/img/user-icon.png">
  <h2>User</h2>
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

