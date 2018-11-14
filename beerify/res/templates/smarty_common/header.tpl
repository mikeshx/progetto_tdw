<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Beerify - The first beer shop in italy</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
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

    <nav class="navbar navbar-default navbar-fixed-top mega navbar-trans">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>

                <!-- Logo -->
                <a class="navbar-brand" href="index.html">
                    <h4>Beerify</h4>
                </a>
            </div>
            <!-- / .navbar-header -->
            <!-- Navbar Links Right -->
            <ul class="nav navbar-nav navbar-right">

                <!-- Shop page -->
                <li class="dropdown">
                    <a href="login.php" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false"> Login</a>
                </li>
                <!-- / Shop -->

                <!-- Cart -->
                <li class="dropdown cart-nav">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-shopping-cart"></i> Cart</a>
                    <ul class="dropdown-menu cart-dropdown">
                        <li class="dropdown-header">Cart</li>
                        <li role="separator" class="divider cart-sep-top"></li>
                        <li>
                            <div class="cart-item">
                                <a href="pages/shop/shop-single.html"><img src="assets/images/shop/p-thumb-1.jpg" alt="Product Name" class="p-thumb"></a>
                                <a href="#" class="cart-remove-btn"><span class="linea-arrows-square-remove"></span></a>
                                <a href="pages/shop/shop-single.html" class="cp-name">Light Blue Suit</a>
                                <p class="cp-price">1 x $359.99</p>
                            </div>

                            <div class="cart-item">
                                <a href="pages/shop/shop-single.html"><img src="assets/images/shop/p-thumb-2.jpg" alt="Product Name" class="p-thumb"></a>
                                <a href="#" class="cart-remove-btn"><span class="linea-arrows-square-remove"></span></a>
                                <a href="pages/shop/shop-single.html" class="cp-name">Dark Blue Suit</a>
                                <p class="cp-price">1 x $459.99</p>
                            </div>
                        </li>
                        <li role="separator" class="divider cart-sep-bot"></li>
                        <li>
                            <h6 class="item-totals">Items Total: <span>$718.98</span></h6>
                        </li>
                        <li class="cart-btns">
                            <a href="shop-checkout.tpl" class="btn-ghost btn-block">View Cart</a>
                        </li>

                    </ul>
                </li>
                <!-- / Cart -->

                <!-- Shop page -->
                <li class="dropdown cart-nav">
                    <a href="shop.php" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false"> Shop</a>
                </li>
                <!-- / Shop -->

                <!-- Search -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-search"></i> Search</a>
                    <ul class="dropdown-menu search-dropdown">
                        <li>
                            <form action="post"><input type="search" class="form-control" placeholder="Search..."></form>
                        </li>
                    </ul>
                </li>
                <!-- / Search -->

            </ul>
            <!-- / .nav .navbar-nav .navbar-right -->

        </div>
        <!--/.navbar-collapse -->
        </div>
        <!-- / .container -->
    </nav>
    <!-- / .navbar -->
