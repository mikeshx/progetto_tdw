
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Beerify - Login</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/favicon.ico">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="assets/styles/vendor/bootstrap.min.css">
        <!-- Fonts -->
        <link rel="stylesheet" href="assets/fonts/et-lineicons/css/style.css">
        <link rel="stylesheet" href="assets/fonts/linea-font/css/linea-font.css">
        <link rel="stylesheet" href="assets/fonts/fontawesome/css/font-awesome.min.css">
        <!-- Slider -->
        <link rel="stylesheet" href="assets/styles/vendor/slick.css">
        <!-- Lightbox -->
        <link rel="stylesheet" href="assets/styles/vendor/magnific-popup.css">
        <!-- Animate.css -->
        <link rel="stylesheet" href="assets/styles/vendor/animate.css">


        <!-- Definity CSS -->
        <link rel="stylesheet" href="assets/styles/main.css">
        <link rel="stylesheet" href="assets/styles/responsive.css">

        <!-- JS -->
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body id="page-top">

        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- ========== Preloader ========== -->

        <div class="preloader">
          <img src="assets/images/loader.svg" alt="Loading...">
        </div>

        <!-- ========== Navigation ========== -->

        <nav class="navbar navbar-default navbar-static-top mega">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>

              <!-- Logo -->
              <a class="navbar-brand" href="index.php">
                  <h4>Beerify</h4>
              </a>
            </div><!-- / .navbar-header -->
            </div><!--/.navbar-collapse -->
          </div><!-- / .container -->
        </nav><!-- / .navbar -->

        <!-- ========== Login From ========== -->

        <div class="login-1">
          <div class="bg-overlay">
            <div class="container">
              <div class="row">
                <div class="col-md-offset-3 col-md-6">

                    <!-- Log in -->
                  <div class="panel-group" id="login-accordion" role="tablist" aria-multiselectable="true">

                      {if !empty($errorMessages)}
                          <div class="alert alert-danger" role="alert">
                              {foreach from=$errorMessages item=item_error}
                                  {$item_error} <br>
                              {/foreach}
                          </div>
                      {/if}


                      {if !empty($Messages)}
                          <div class="alert alert-danger" role="alert">
                              {foreach from=$Messages item=item_message}
                                  {$item_message} <br>
                              {/foreach}
                          </div>
                      {/if}

                    <div class="panel top-panel panel-default">
                      <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                          <a role="button" data-toggle="collapse" data-parent="#login-accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">

                            Login to your account
                          </a>
                        </h4>
                      </div>
                      <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">

                          <div class="form-login">
                            <form method="post" action="login.php">
                              <!-- Username -->
                              <div class="form-group">
                                <input type="text" id="username-login-1" name="user_email" class="form-control" placeholder="Enter your name">
                                <label for="username-login-1">Username</label>
                              </div>
                              <!-- Password -->
                              <div class="form-group">
                                <input type="password" id="pass-login-1" name="user_password" class="form-control" placeholder="Enter your password">
                                <label for="pass-login-1">Password</label>
                                <span class="pull-right"><a href="#" class="forget-pass-link">Forget password?</a></span>
                              </div>
                              <!-- Submit -->
                              <input type="submit" value="Login" name="login" class="btn">
                            </form>
                          </div><!-- / .form-wrapper -->

                        </div><!-- / .panel-body -->
                      </div><!-- / .panel-collapse -->
                    </div><!-- / .panel -->

                    <!-- Register Account -->
                    <div class="panel bottom-panel panel-default">

                      <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                          <a class="collapsed" role="button" data-toggle="collapse" data-parent="#login-accordion" href="#register-login-page-2" aria-expanded="false" aria-controls="register-login-page-2">
                            Register account
                          </a>
                        </h4>
                      </div>
                      <div id="register-login-page-2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">

                          <div class="form-register">
                            <form method="post" action="login.php">
                              <!-- First Name -->
                              <div class="form-group col-md-6 no-gap-left">
                                <input type="text" id="login_first_name" name="login_first_name" class="form-control" placeholder="First Name">
                                <label for="name-login-1">First Name</label>
                              </div>
                              <!-- Last name -->
                              <div class="form-group col-md-6 no-gap-right">
                                <input type="text" id="login_last_name" name="login_last_name" class="form-control" placeholder="Last Name">
                                <label for="last-name-signup-1">Last Name</label>
                              </div>
                              <!-- Email -->
                              <div class="form-group">
                                <input type="email" id="login_input_email" name="login_input_email" class="form-control" placeholder="Enter your email">
                                <label for="email-signup-1">Email</label>
                              </div>
                              <!-- Password -->
                              <div class="form-group">
                                <input type="password" id="login_input_password_new" name="login_input_password_new" class="form-control" placeholder="Enter a password">
                                <label for="pass-signup-1">Password</label>
                              </div>
                              <!-- Re-Enter Password -->
                              <div class="form-group">
                                <input type="password" id="login_input_password_repeat" name="login_input_password_repeat" class="form-control" placeholder="Re-enter your password">
                                <label for="re-pass-signup-1">Re-enter password</label>
                              </div>
                              <!-- Newsletter check -->
                              <div class="form-group">
                                <label class="checkbox-inline">
                                  <input type="checkbox" id="newsletter-check" value="option1" checked> Subscribe to our newsletter
                                </label>
                              </div>
                              <!-- Submit -->
                              <input type="submit" name="register" value="Register" class="btn">
                            </form>
                          </div><!-- / .form-wrapper -->

                        </div><!-- / .panel-body -->
                      </div><!-- / #register-login-page-2 .panel-colapse -->
                    </div><!-- / .panel -->
                  </div><!-- / #login-accordion .panel-group -->


                </div><!-- / .col-md-6 -->
              </div><!-- / .row -->
            </div><!-- / .container -->

          </div><!-- / .bg-overlay -->
        </div><!-- / .bg-login -->
{include file="smarty_common/footer.tpl"}
