<?php
/* Smarty version 3.1.30, created on 2018-04-23 12:37:46
  from "/var/www/html/giacomo/res/templates/index.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5addd39a2ac949_38638241',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fb3c36040a361f04af63f6688932adecf0040f7a' => 
    array (
      0 => '/var/www/html/giacomo/res/templates/index.tpl',
      1 => 1522945027,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5addd39a2ac949_38638241 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!doctype html>
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
    <?php echo '<script'; ?>
 src="assets/js/vendor/modernizr-2.8.3.min.js"><?php echo '</script'; ?>
>
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
                    <a href="pages/shop/shop-left-sidebar.html" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false"> Login / Register</a>
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
                            <a href="pages/shop/shop-checkout.html" class="btn-ghost btn-block">View Cart</a>
                            <a href="pages/shop/shop-checkout.html" class="btn btn-block">Checkout</a>
                        </li>

                    </ul>
                </li>
                <!-- / Cart -->

                <!-- Shop page -->
                <li class="dropdown cart-nav">
                    <a href="pages/shop/shop-left-sidebar.html" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false"> Shop</a>
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

    <!-- ========== Hero Cover ========== -->

    <div id="home" class="fw-slider-hero">
        <div class="fw-slider">

            <!-- Slide 1 -->
            <div class="fw-slider-item fw-slide-1">
                <div class="bg-overlay">

                    <!-- Hero Content -->
                    <div class="hero-content-wrapper">
                        <div class="hero-content">

                            <h1 class="hero-lead wow fadeInUp" data-wow-duration="2s">Reach the top</h1>
                            <h4 class="h-alt hero-subheading wow fadeIn" data-wow-delay=".5s" data-wow-duration="1.5s">Multipage &amp; Onepage HTML5 Templates</h4>
                            <a href="#services" class="btn btn-light wow fadeIn" data-wow-delay=".7s" data-wow-duration="2s">Learn More</a>

                        </div>
                    </div>

                </div>
                <!-- / .bg-overlay -->
            </div>
            <!-- / .fw-slide-1 -->


            <!-- Slide 2 -->
            <div class="fw-slider-item fw-slide-2">
                <div class="bg-overlay">

                    <!-- Hero Content -->
                    <div class="hero-content-wrapper">
                        <div class="hero-content">

                            <h1 class="hero-lead">Created<br>for creatives</h1>
                            <h4 class="h-alt hero-subheading">MULTIPAGE &amp; ONEPAGE HTML5 TEMPLATES</h4>

                            <a href="#services" class="btn-light">Learn More</a>

                        </div>
                    </div>

                </div>
                <!-- / .bg-overlay -->
            </div>
            <!-- / .fw-slide-2 -->


            <!-- Slide 3 -->
            <div class="fw-slider-item fw-slide-3">
                <div class="bg-overlay">

                    <!-- Hero Content -->
                    <div class="hero-content-wrapper">
                        <div class="hero-content">

                            <h4 class="h-alt hero-subheading wow fadeInUp">Webdesing &amp; Development</h4>
                            <h1 class="hero-lead">Creative Agency</h1>
                            <a href="#services" class="btn btn-light wow fadeInDown">Learn More</a>

                        </div>
                    </div>

                </div>
                <!-- / .bg-overlay -->
            </div>
            <!-- / .fw-slide-3 -->

        </div>
        <!-- / .fw-slider -->

        <!-- Scroller -->
        <!-- <a href="#services" class="scroller">
            <span class="scroller-text">scroll down</span>
            <span class="linea-basic-magic-mouse"></span>
          </a> -->

    </div>
    <!-- / .fs-slider-hero -->

    <!-- ========== Portfolio ========== -->

    <section class="container-fluid portfolio-layout portfolio-columns-fw">
        <div class="row">
            <header class="sec-heading">
                <h2>Some of our projects</h2>
                <span class="subheading">Lorem ipsum dolor sit amet consectetur adipisicing</span>
            </header>
        </div>
        <!-- / .row -->

        <!-- Filters -->
        <div class="row">
            <ul id="pfolio-filters" class="portfolio-filters">
                <li class="active"><a href="#" data-filter="*">All</a></li>
                <li><a href="#" data-filter=".webdesing">Webdesign</a></li>
                <li><a href="#" data-filter=".print">Print</a></li>
                <li><a href="#" data-filter=".photo">Photography</a></li>
            </ul>
        </div>

        <div class="row">
            <div id="pfolio">

                <!-- Item 1 -->
                <div class="col-md-4 portfolio-item hover-side print">
                    <figure>
                        <img src="http://placehold.it/990x650" alt="Project Example">
                        <figcaption>
                            <h5 class="hover-heading">Project Name</h5>
                            <p class="hover-text">Lorem ipsum dolor amet sed, consectetur at adipisicing.</p>
                            <a href="pages/portfolio/portfolio-single-1.html" class="hover-more-btn"><span class="linea-arrows-slim-right"></span></a>
                            <ul class="hover-btns">
                                <li><a href="assets/images/project-1.1.jpg" class="open-gallery"><span class="linea-arrows-expand"></span></a></li>
                                <li><a href="#"><span class="linea-basic-heart"></span></a></li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
                <!-- / .portfolio-item -->

                <!-- Item 2 -->
                <div class="col-md-4 portfolio-item hover-side webdesing photo">
                    <figure>
                        <img src="http://placehold.it/990x650/aaa/ccc" alt="Project Example">
                        <figcaption>
                            <h5 class="hover-heading">Project Name</h5>
                            <p class="hover-text">Lorem ipsum dolor amet sed, consectetur at adipisicing.</p>
                            <a href="pages/portfolio/portfolio-single-1.html" class="hover-more-btn"><span class="linea-arrows-slim-right"></span></a>
                            <ul class="hover-btns">
                                <li><a href="assets/images/project-1.2.jpg" class="open-gallery"><span class="linea-arrows-expand"></span></a></li>
                                <li><a href="#"><span class="linea-basic-heart"></span></a></li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
                <!-- / .portfolio-item -->

                <!-- Item 3 -->
                <div class="col-md-4 portfolio-item hover-side photo print">
                    <figure>
                        <img src="http://placehold.it/990x650" alt="Project Example">
                        <figcaption>
                            <h5 class="hover-heading">Project Name</h5>
                            <p class="hover-text">Lorem ipsum dolor amet sed, consectetur at adipisicing.</p>
                            <a href="pages/portfolio/portfolio-single-1.html" class="hover-more-btn"><span class="linea-arrows-slim-right"></span></a>
                            <ul class="hover-btns">
                                <li><a href="assets/images/project-1.3.jpg" class="open-gallery"><span class="linea-arrows-expand"></span></a></li>
                                <li><a href="#"><span class="linea-basic-heart"></span></a></li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
                <!-- / .portfolio-item -->

                <!-- Item 4 -->
                <div class="col-md-4 portfolio-item hover-side photo print">
                    <figure>
                        <img src="http://placehold.it/990x650/aaa/ccc" alt="Project Example">
                        <figcaption>
                            <h5 class="hover-heading">Project Name</h5>
                            <p class="hover-text">Lorem ipsum dolor amet sed, consectetur at adipisicing.</p>
                            <a href="pages/portfolio/portfolio-single-1.html" class="hover-more-btn"><span class="linea-arrows-slim-right"></span></a>
                            <ul class="hover-btns">
                                <li><a href="assets/images/project-1.7.jpg" class="open-gallery"><span class="linea-arrows-expand"></span></a></li>
                                <li><a href="#"><span class="linea-basic-heart"></span></a></li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
                <!-- / .portfolio-item -->

                <!-- Item 5 -->
                <div class="col-md-4 portfolio-item hover-side photo print">
                    <figure>
                        <img src="http://placehold.it/990x650" alt="Project Example">
                        <figcaption>
                            <h5 class="hover-heading">Project Name</h5>
                            <p class="hover-text">Lorem ipsum dolor amet sed, consectetur at adipisicing.</p>
                            <a href="pages/portfolio/portfolio-single-1.html" class="hover-more-btn"><span class="linea-arrows-slim-right"></span></a>
                            <ul class="hover-btns">
                                <li><a href="assets/images/project-1.10.jpg" class="open-gallery"><span class="linea-arrows-expand"></span></a></li>
                                <li><a href="#"><span class="linea-basic-heart"></span></a></li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
                <!-- / .portfolio-item -->

                <!-- Item 6 -->
                <div class="col-md-4 portfolio-item hover-side photo print">
                    <figure>
                        <img src="http://placehold.it/990x650/aaa/ccc" alt="Project Example">
                        <figcaption>
                            <h5 class="hover-heading">Project Name</h5>
                            <p class="hover-text">Lorem ipsum dolor amet sed, consectetur at adipisicing.</p>
                            <a href="pages/portfolio/portfolio-single-1.html" class="hover-more-btn"><span class="linea-arrows-slim-right"></span></a>
                            <ul class="hover-btns">
                                <li><a href="assets/images/project-1.6.jpg" class="open-gallery"><span class="linea-arrows-expand"></span></a></li>
                                <li><a href="#"><span class="linea-basic-heart"></span></a></li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
                <!-- / .portfolio-item -->

            </div>
            <!-- / #pfolio -->
        </div>
        <!-- / .row -->
    </section>
    <!-- / .portfolio-columns-fw -->



    <!-- ========== Testimonials ========== -->

    <div class="gray-bg">
        <section class="container testimonials-3col">

            <div class="row section">

                <header class="sec-heading">
                    <h2>What people say about us</h2>
                    <span class="subheading">Read some of the testimonials from our amazing clients</span>
                </header>

                <!-- Item 1 -->
                <div class="col-md-4 mb-sm-50">
                    <div class="t-item wow fadeIn" data-wow-duration="1s">
                        <img src="assets/images/avatar-placeholder.png" alt="Testimonial">
                        <blockquote>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae</p>
                            <footer>
                                <cite>by Julian Schmitz<span>Google</span></cite>
                            </footer>
                        </blockquote>
                        <span class="et-quote t-icon"></span>
                    </div>
                    <!-- / .t-item -->
                </div>
                <!-- / .col-md-4 -->

                <!-- Item 2 -->
                <div class="col-md-4 mb-sm-50">
                    <div class="t-item wow fadeIn" data-wow-duration="1s" data-wow-delay=".3s">
                        <img src="assets/images/avatar-placeholder.png" alt="Testimonial">
                        <blockquote>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae</p>
                            <footer>
                                <cite>by Cecilia Acosta<span>Apple</span></cite>
                            </footer>
                        </blockquote>
                        <span class="et-quote t-icon"></span>
                    </div>
                    <!-- / .t-item -->
                </div>
                <!-- / .col-md-4 -->

                <!-- Item 3 -->
                <div class="col-md-4">
                    <div class="t-item wow fadeIn" data-wow-duration="1s" data-wow-delay=".6s">
                        <img src="assets/images/avatar-placeholder.png" alt="Testimonial">
                        <blockquote>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae</p>
                            <footer>
                                <cite>by Gerald Pena<span>Facebook</span></cite>
                            </footer>
                        </blockquote>
                        <span class="et-quote t-icon"></span>
                    </div>
                    <!-- / .t-item -->
                </div>
                <!-- / .col-md-4 -->

            </div>
            <!-- / .row -->

            <div class="row">
            </div>
            <!-- / .row -->

        </section>
        <!-- / .container -->
    </div>
    <!-- / .gray-bg -->



    <!-- ========== CTA - Contact Link ========== -->

    <div class="cta-link">
        <div class="bg-overlay">

            <div class="cta-wrapper">
                <h3 class="h-alt wow fadeIn" data-wow-delay=".1s" data-wow-duration="1s">See all of our products</h3>
                <a href="#contact" class="btn btn-light btn-large wow fadeIn" data-wow-delay=".3s" data-wow-duration="1s">Go to the shop</a>
            </div>

        </div>
    </div>
    <!-- / .dark-bg .cta-link -->

    <!-- ========== CTA - Newsletter Signup ========== -->

    <div class="cta-newsletter">
        <div class="bg-overlay">
            <div class="cta-wrapper">

                <h3 class="cta-lead h-alt wow fadeIn" data-wow-delay=".1s" data-wow-duration="1s">Join our newsletter</h3>

                <form class="mc-ajax mc-form subscribe-form" _lpchecked="1">

                    <!-- Email -->
                    <input type="email" name="EMAIL" placeholder="Your email address" id="mc-email" class="wow fadeInUp" data-wow-delay=".1s" data-wow-duration="1s">

                    <!-- Send Button -->
                    <input type="submit" name="subscribe" value="Join Us" class="btn btn-light btn-large wow fadeInUp mc-send-btn" data-wow-delay=".1s" data-wow-duration="1s">

                    <!-- Info (uncomment this for extra info) -->
                    <!-- <label for="mc-email" class="mc-info"></label> -->

                    <!-- Ajax message -->
                    <div class="subscribe-result"></div>

                </form>

            </div>
            <!-- / .cta-wrapper -->
        </div>
        <!-- / .bg-overlay -->
    </div>
    <!-- / .cta-newsletter -->

    <!-- ========== Contact ========== -->

    <section class="section contact-1">

        <header class="sec-heading">
            <h2>Countact Us</h2>
            <span class="subheading">We love to hear from you </span>
        </header>

        <div class="contact-wrapper">
            <!-- Map -->
            <div id="map-canvas" class="gmap map-boxed"></div>

            <!-- Show Info Button -->-
            <div class="show-info-link">
                <a href="#" class="show-info"><i class="fa fa-info"></i><h6>Show info</h6></a>
            </div>

            <div class="container">
                <div class="row ws-m">

                    <!-- Address Info -->
                    <div class="col-xs-offset-1 col-xs-11 col-md-offset-2 col-md-6 contact-info-wrapper">
                        <address>
                    <div class="row">

                      <!-- Phone -->
                      <div class="col-sm-6 address-group">
                        <span>Phone</span>
                        <a href="#">+ 123 4567 890</a>
                        <a href="#">+ 123 7654 098</a>
                      </div>

                      <!-- Address -->
                      <div class="col-sm-5 address-group">
                        <span>Address</span>
                        <p>1200 some street, il, US</p>
                      </div>

                    </div><!-- / .row -->

                    <div class="row">

                      <!-- Email -->
                      <div class="col-sm-6 address-group">
                        <span>Email</span>
                        <a href="mailto:sayhello@email.com">sayhello@email.com</a>
                      </div>

                      <!-- Hours -->
                      <div class="col-sm-5 address-group">
                        <span>Open Hours</span>
                        <p>Mon-Fri: 9am-5pm</p>
                        <p>Sat: 10am-1pm</p>
                      </div>

                    </div><!-- / .row -->

                    <!-- Show Map Button -->
                    <div class="row show-map-link">
                      <a href="#" class="show-map"><span class="icon-map-pin"></span>Show on map</a>
                    </div><!-- / .row -->
                  </address>
                    </div>
                    <!-- / .contact-info-wrapper -->
                </div>
                <!-- / .row -->

                <!-- Contact Form -->
                <div class="row">
                    <form action="assets/contact-form/contact-form.php" method="POST" id="contact-form-1" class="form-ajax">
                        <div class="col-md-offset-2 col-md-4 wow fadeInUp" data-wow-duration="1s">

                            <!-- Name -->
                            <div class="form-group">
                                <input type="text" name="name" id="name-contact-1" class="form-control validate-locally" placeholder="Enter your name">
                                <label for="name-contact-1">Name</label>
                                <span class="pull-right alert-error"></span>
                            </div>

                            <!-- Email -->
                            <div class="form-group">
                                <input type="email" name="email" id="email-contact-1" class="form-control validate-locally" placeholder="Enter your email">
                                <label for="email-contact-1">Email</label>
                                <span class="pull-right alert-error"></span>
                            </div>

                        </div>

                        <div class="col-md-4 wow fadeInUp" data-wow-duration="1s">

                            <!-- Message -->
                            <div class="form-group">
                                <textarea name="message" id="message-contact-1" class="form-control" rows="5" placeholder="Your Message"></textarea>
                                <label for="message-contact-1">Message</label>
                            </div>
                            <div>
                                <input type="submit" class="btn pull-right" value="Send Message">
                            </div>

                            <!-- Ajax Message -->
                            <div class="ajax-message col-md-12 no-gap"></div>

                        </div>
                        <!-- / .col-md-4 -->

                    </form>
                </div>
                <!-- / .row -->
            </div>
            <!-- / .container -->
        </div>
        <!-- / .contact-wrapper -->
    </section>
    <!-- / .contact-1 -->

    <!-- ========== Footer ========== -->

    <footer class="footer-widgets">
        <div class="container">
            <div class="row section">

                <!-- About Us -->
                <div class="col-md-3 col-sm-6 mb-sm-100">
                    <div class="widget about-widget">
                        <h5 class="header-widget">About Us</h5>
                        <p>Lorem ipsum dolor sit amet, eiusmod consectetur adipisicing elit, sed do tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.</p>

                        <ul class="social-links">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        </ul>
                    </div>
                    <!-- / .widget -->
                </div>
                <!-- / .col-md-3 -->

            </div>
            <!-- / .row -->
        </div>
        <!-- / .container -->


        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">

                    <div class="col-sm-6">
                        <small>&copy; 2018 Beerify. Made by Unnamed Group</small>
                    </div>

                    <div class="col-sm-6">
                        <small><a href="#page-top" class="pull-right to-the-top">To the top<i class="fa fa-angle-up"></i></a></small>
                    </div>

                </div>
                <!-- / .row -->
            </div>
            <!-- / .container -->
        </div>
        <!-- / .copyright -->

    </footer>
    <!-- / .footer-widgets -->



    <!-- ========== Scripts ========== -->

    <?php echo '<script'; ?>
 src="assets/js/vendor/jquery-2.1.4.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/google-fonts.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/jquery.easing.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/jquery.waypoints.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/bootstrap.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/bootstrap-hover-dropdown.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/smoothscroll.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/jquery.localScroll.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/jquery.scrollTo.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/jquery.stellar.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/jquery.parallax.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/slick.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/jquery.easypiechart.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/countup.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/isotope.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/jquery.magnific-popup.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/wow.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="assets/js/vendor/jquery.ajaxchimp.js"><?php echo '</script'; ?>
>

    <!-- Google Maps -->
    <?php echo '<script'; ?>
 src="assets/js/gmap.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDOcd7o0W0r846FC_GoHSK56xeAvP8fV4s"><?php echo '</script'; ?>
>

    <!-- Definity JS -->
    <?php echo '<script'; ?>
 src="assets/js/main.js"><?php echo '</script'; ?>
>
</body>

</html>
<?php }
}
