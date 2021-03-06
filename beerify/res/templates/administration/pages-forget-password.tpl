<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>SimpleAdmin - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="res/templates/administration/assets/images/favicon.ico">

        <!-- App css -->
        <link href="res/templates/administration/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="res/atemplates/administration/assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="res/templates/administration/assets/css/metismenu.min.css" rel="stylesheet" type="text/css" />
        <link href="res/templates/administration/assets/css/style.css" rel="stylesheet" type="text/css" />

        <script src="res/templates/administration/assets/js/modernizr.min.js"></script>

    </head>


    <body>

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="wrapper-page">

                            {if !empty($errorMessages)}
                                <div class="alert alert-danger" role="alert">
                                    {foreach from=$errorMessages item=item_error}
                                        {$item_error} <br>
                                    {/foreach}
                                </div>
                            {/if}


                            {if !empty($Messages)}
                                <div class="alert alert-success" role="alert">
                                    {foreach from=$Messages item=item_message}
                                        {$item_message} <br>
                                    {/foreach}
                                </div>
                            {/if}


                            <div class="m-t-40 card-box">
                                <div class="text-center">
                                    <h2 class="text-uppercase m-t-0 m-b-30">
                                        <a href="index.html" class="text-success">
                                            <span><img src="res/templates/administration/assets/images/logo.png" alt="" height="30"></span>
                                        </a>
                                    </h2>
                                    <!--<h4 class="text-uppercase font-bold m-b-0">Sign In</h4>-->
                                </div>
                                <div class="account-content">
                                    <div class="text-center m-b-20">
                                        <p class="text-muted m-b-0 line-h-24">Enter your email address and we'll send you an email with instructions to reset your password.  </p>
                                    </div>

                                    <form class="form-horizontal" method="post" action="reset_password.php">

                                        <div class="form-group m-b-20">
                                            <div class="col-xs-12">
                                                <label for="emailaddress">Email address</label>
                                                <input class="form-control" type="email" id="emailaddress" name="email" required="" placeholder="example@univaq.it">
                                            </div>
                                        </div>

                                        <div class="form-group account-btn text-center m-t-10">
                                            <div class="col-xs-12">
                                                <button class="btn btn-lg btn-primary btn-block" type="submit">Reset Password</button>
                                            </div>
                                        </div>

                                    </form>

                                    <div class="clearfix"></div>

                                </div>
                            </div>
                            <!-- end card-box-->


                            <div class="row m-t-50">
                                <div class="col-sm-12 text-center">
                                    <p class="text-muted">Back to <a href="login.php" class="text-dark m-l-5">Sign In</a></p>
                                </div>
                            </div>

                        </div>
                        <!-- end wrapper -->

                    </div>
                </div>
            </div>
        </section>




    <!-- jQuery  -->
        <script src="res/templates/administration/assets/js/jquery.min.js"></script>
        <script src="res/templates/administration/assets/js/popper.min.js"></script>
        <script src="res/templates/administration/assets/js/bootstrap.min.js"></script>
        <script src="res/templates/administration/assets/js/metisMenu.min.js"></script>
        <script src="res/templates/administration/assets/js/waves.js"></script>
        <script src="res/templates/administration/assets/js/jquery.slimscroll.js"></script>

        <!-- App js -->
        <script src="res/templates/administration/assets/js/jquery.core.js"></script>
        <script src="res/templates/administration/assets/js/jquery.app.js"></script>

    </body>
</html>