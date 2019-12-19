
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

    <p id="header"></p>

    <div class="container align-self-center bg-secondary text-light rounded mt-1 p-5">
      <main role="main" class="">
        <h1 class="cover-heading">Welcome!</h1>
        % if login != "" and password != "":
          <h2> {{login}}   {{password}} </h2>
        % end
        <p class="lead">This is simple web-app created using Bottle and Bootstrap.</p>
        <p class="lead" >
          <a href="/login" class="btn bg-light text-dark btn-lg btn-secondary">Sign In</a>
        </p>
      
      </main>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->


    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
