<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-light">

  <!-- Collapse button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
    aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>


  <!-- Collapsible content -->
  <div class="collapse navbar-collapse " id="basicExampleNav">

    <!-- Links -->
    <ul class="navbar-nav mr-auto ">
      <li class="nav-item">
        <a class="nav-link text-dark" href="/">Home
          <span class="sr-only">(current)</span>
        </a>
      </li>

      <!-- Dropdown -->
      <li class="nav-item dropdown">
        <a class="nav-link text-dark dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">Profile</a>
        <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="/info">Info</a>
          % if signed_in:
            <a class="dropdown-item" href="#">Sign out</a>
          % end
        </div>
      </li>

      % if not signed_in:
        <li class="nav-item">
          <a class="nav-link text-dark" href="/login">Login/Register</a>
        </li>
      % end

    </ul>
    <!-- Links -->

    <form class="form-inline">
      <div class="md-form my-0">
        <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      </div>
    </form>
  </div>
  <!-- Collapsible content -->

</nav>
<!--/.Navbar-->
