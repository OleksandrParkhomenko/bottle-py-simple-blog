
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Hello, world!</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


    <script type="text/javascript">

      $(document).ready(function() {
        $j = jQuery.noConflict()
        $j("#header").load("header");

      });
    </script>

  </head>

  <body style="background : url('https://dollarfootage.com/wp-content/uploads/2017/05/tetrahedron-particle-field-explosion-grey-gradient-bg-2-img.jpg')">

<div id="header"> </div>

<div class="container align-self-center bg-secondary text-light rounded mt-1 p-5">
  <main role="main" class="">
    % if signed_in:
      <h1 class="cover-heading">Progile info:</h1>
      % if login != "" and password != "":
        <h2> Login: {{login}} </h2>
        <h2> Pass: {{password}} </h2>
      % end
    % else:
        <h2> You need to log in</h2>
    % end
    <p class="lead">This is simple web-app created using Bottle and Bootstrap.</p>
    <p class="lead" >
      <a href="/login" class="btn bg-light text-dark btn-lg btn-secondary">Sign In</a>
    </p>

  </main>
</div>
</body>
