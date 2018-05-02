{include file="header.tpl"}

        <!-- ========== Page Title ========== -->

        <header class="page-title pt-large pt-dark pt-plax-lg-dark"
        data-stellar-background-ratio="0.4">
          <div class="container">
              <div class="row">

                <div class="col-sm-6">
                  <h1>Shop</h1>
                  <span class="subheading">Shop layout with sidebar</span>
                </div>
                <ol class="col-sm-6 text-right breadcrumb">
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Elements</a></li>
                  <li class="active">Shop</li>
                </ol>

              </div>
            </div>
        </header>



        <!-- ========== Shop - (4 columns) ========== -->

        <div class="gray-bg">
          <div class="container section-shop">

            <div class="row">
              <!-- Shop Sidebar - (vertical) -->
              <div class="col-md-3">
                <aside class="shop-sidebar-vertical mb-sm-100">

                  <!-- Search Widget -->
                  <div class="shop-widget search-widget">
                    <div class="form-group">
                      <input type="search" placeholder="Search ..." class="form-control">
                      <button class="inside-input-btn"><i class="fa fa-search"></i></button>
                    </div>
                  </div>


                  <!-- Cart Widget -->
                  <div class="shop-widget cart-widget mb-sm-50">
                    <h5 class="header-widget">Cart</h5>
                    <div class="cart-item">
                      <a href="shop-single.php"><img src="http://placehold.it/56x56" alt="Product Name" class="p-thumb"></a>
                      <a href="#" class="cart-remove-btn"><span class="linea-arrows-square-remove"></span></a>
                      <a href="shop-single.php" class="cp-name">Test single shop page</a>
                      <p class="cp-price">1 x $359.99</p>
                    </div>

                    <div class="cart-item">
                      <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/56x56" alt="Product Name" class="p-thumb"></a>
                      <a href="#" class="cart-remove-btn"><span class="linea-arrows-square-remove"></span></a>
                      <a href="../../pages/shop/shop-single.html" class="cp-name">Dark Blue Suit</a>
                      <p class="cp-price">1 x $459.99</p>
                    </div>

                    <div class="cw-subtotal">
                      <h6 class="h-alt">SUBTOTAL: $718.98</h6>
                      <a href="../../pages/shop/shop-checkout.html" class="btn-ghost btn-small">View Cart</a>
                    </div>
                  </div><!-- / .cart-widget -->


                  <!-- Price Filter -->
                  <div class="shop-widget filter-widget">
                    <h5 class="header-widget">Filter by Price</h5>
                    <div id="shop-slider-range"></div>
                    <p>
                      <label for="amount">From:</label>
                      <input type="text" id="shop-slider-range-amount" readonly>
                    </p>
                  </div><!-- / .filter-widget -->


                  <!-- Categories - Widget -->
                  <div class="shop-widget categories-widget">
                    <h5 class="header-widget">Shop Categories</h5>
                    <!-- Item 1 -->
                    <div class="widget-item">
                      <a href="#">Suits - <span>15</span></a>
                    </div>
                    <!-- Item 2 -->
                    <div class="widget-item">
                      <a href="#">T-Shirts - <span>6</span></a>
                    </div>
                    <!-- Item 3 -->
                    <div class="widget-item">
                      <a href="#">Pants - <span>12</span></a>
                    </div>
                    <!-- Item 4 -->
                    <div class="widget-item">
                      <a href="#">Accessories - <span>3</span></a>
                    </div>
                  </div><!-- / .categories-widget -->


                  <!-- Product - Widget -->
                  <div class="shop-widget product-widget">
                    <h5 class="header-widget">Bestsellers</h5>
                    <div class="cart-item">
                      <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/56x56" alt="Product Name" class="p-thumb"></a>
                      <a href="../../pages/shop/shop-single.html" class="cp-name">Light Blue Suit</a>
                      <p class="cp-price"><span class="price-cut">$359.99</span> $259.99</p>
                    </div>

                    <div class="cart-item">
                      <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/56x56" alt="Product Name" class="p-thumb"></a>
                      <a href="../../pages/shop/shop-single.html" class="cp-name">Dark Blue Suit</a>
                      <p class="cp-price">$459.99</p>
                    </div>

                    <div class="cart-item">
                      <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/56x56" alt="Product Name" class="p-thumb"></a>
                      <a href="../../pages/shop/shop-single.html" class="cp-name">Midnight Blue Suit</a>
                      <p class="cp-price">$459.99</p>
                    </div>

                    <div class="cart-item">
                      <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/56x56" alt="Product Name" class="p-thumb"></a>
                      <a href="../../pages/shop/shop-single.html" class="cp-name">Navy Blue Suit</a>
                      <p class="cp-price">$459.99</p>
                    </div>
                  </div><!-- / .cart-widget -->


                  <!-- Tags - Widget -->
                  <div class="shop-widget tags-widget">
                    <h5 class="header-widget">Tags</h5>
                    <ul class="tag-list">
                      <li><a href="#">Photography</a></li>
                      <li><a href="#">Design</a></li>
                      <li><a href="#">Development</a></li>
                      <li><a href="#">PHP</a></li>
                      <li><a href="#">UI/UX</a></li>
                      <li><a href="#">Design</a></li>
                      <li><a href="#">HTML5</a></li>
                    </ul>
                  </div>

                </aside><!-- / .shop-sidebar-vertical -->
              </div><!-- / .col-md-3 -->



              <!-- Shop Layout - (3 columns) -->
              <div class="col-md-9">

                <!-- Shop layout options -->
                <div class="row mb-50">
                  <div class="col-xs-12 col-sm-6 col-md-9 mb-sm-30">
                    <span>SHOWING 1–12 OF 24 RESULTS</span>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-3 pull-right">
                    <select class="form-control" id="select-form">
                      <option>Default Sorting</option>
                      <option>Highest Price</option>
                      <option>Lowset Price</option>
                      <option>Newest First</option>
                    </select>
                  </div>
                </div><!-- / .row -->


                <div class="row">
                  <!-- Shop Product -->
                  <div class="col-xs-12 col-sm-6 col-lg-4 mb-30">
                    <div class="shop-product-card">

                      <!-- Image/Slider -->
                      <div class="product-image-wrapper">
                        <span class="label label-red sale-label">SALE</span>

                        <!-- Product Actions (hover) -->
                        <a href="#" class="buy-btn"><span class="linea-ecommerce-bag"></span></a>
                        <a href="#" class="fav-btn"><span class="linea-basic-star"></span></a>

                        <!-- Product Main Image -->
                        <div class="shop-p-slider">
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 1"></a>
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 6"></a>
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 8"></a>
                        </div>
                      </div>

                      <!-- Product Meta -->
                      <div class="product-meta">
                        <a href="../../pages/shop/shop-single.html"><h4 class="product-name">Casual Gray Blazer</h4></a>
                        <span class="product-sep"></span>
                        <p class="product-price"><span class="price-cut">$287.99</span> $187.99</p>
                      </div>

                    </div><!-- / .shop-product-card -->
                  </div><!-- / .col-sm-3 -->


                  <!-- Shop Product -->
                  <div class="col-xs-12 col-sm-6 col-lg-4 mb-30">
                    <div class="shop-product-card">

                      <!-- Image/Slider -->
                      <div class="product-image-wrapper">
                        <!-- Product Actions (hover) -->
                        <a href="#" class="buy-btn"><span class="linea-ecommerce-bag"></span></a>
                        <a href="#" class="fav-btn"><span class="linea-basic-star"></span></a>

                        <!-- Product Main Image -->
                        <div class="shop-p-slider">
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 2"></a>
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 9"></a>
                        </div>
                      </div>

                      <!-- Product Meta -->
                      <div class="product-meta">
                        <a href="../../pages/shop/shop-single.html"><h4 class="product-name">White Suit</h4></a>
                        <span class="product-sep"></span>
                        <p class="product-price">$487.99</p>
                      </div>

                    </div><!-- / .shop-product-card -->
                  </div><!-- / .col-lg-3 -->


                  <!-- Shop Product -->
                  <div class="col-xs-12 col-sm-6 col-lg-4 mb-30">
                    <div class="shop-product-card">

                      <!-- Image/Slider -->
                      <div class="product-image-wrapper">
                        <!-- Product Actions (hover) -->
                        <a href="#" class="buy-btn"><span class="linea-ecommerce-bag"></span></a>
                        <a href="#" class="fav-btn"><span class="linea-basic-star"></span></a>

                        <!-- Product Main Image -->
                        <div class="shop-p-slider">
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 1"></a>
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 2"></a>
                        </div>
                      </div>

                      <!-- Product Meta -->
                      <div class="product-meta">
                        <a href="../../pages/shop/shop-single.html"><h4 class="product-name">Dark Blue Suit</h4></a>
                        <span class="product-sep"></span>
                        <p class="product-price">$487.99</p>
                      </div>

                    </div><!-- / .shop-product-card -->
                  </div><!-- / .col-lg-3 -->


                  <!-- Shop Product -->
                  <div class="col-xs-12 col-sm-6 col-lg-4 mb-30">
                    <div class="shop-product-card">

                      <!-- Image/Slider -->
                      <div class="product-image-wrapper">
                        <!-- Product Actions (hover) -->
                        <a href="#" class="buy-btn"><span class="linea-ecommerce-bag"></span></a>
                        <a href="#" class="fav-btn"><span class="linea-basic-star"></span></a>

                        <!-- Product Main Image -->
                        <div class="shop-p-slider">
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 7"></a>
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 4"></a>
                        </div>
                      </div>

                      <!-- Product Meta -->
                      <div class="product-meta">
                        <a href="../../pages/shop/shop-single.html"><h4 class="product-name">Gray Padded Jacket</h4></a>
                        <span class="product-sep"></span>
                        <p class="product-price">$487.99</p>
                      </div>

                    </div><!-- / .shop-product-card -->
                  </div><!-- / .col-lg-3 -->


                  <!-- Shop Product -->
                  <div class="col-xs-12 col-sm-6 col-lg-4 mb-30">
                    <div class="shop-product-card">

                      <!-- Image/Slider -->
                      <div class="product-image-wrapper">
                        <span class="label label-red sale-label">SALE</span>

                        <!-- Product Actions (hover) -->
                        <a href="#" class="buy-btn"><span class="linea-ecommerce-bag"></span></a>
                        <a href="#" class="fav-btn"><span class="linea-basic-star"></span></a>

                        <!-- Product Main Image -->
                        <div class="shop-p-slider">
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 6"></a>
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 11"></a>
                        </div>
                      </div>

                      <!-- Product Meta -->
                      <div class="product-meta">
                        <a href="../../pages/shop/shop-single.html"><h4 class="product-name">Light Blue Blazer</h4></a>
                        <span class="product-sep"></span>
                        <p class="product-price"><span class="price-cut">$187.99</span> $97.99</p>
                      </div>

                    </div><!-- / .shop-product-card -->
                  </div><!-- / .col-sm-3 -->


                  <!-- Shop Product -->
                  <div class="col-xs-12 col-sm-6 col-lg-4 mb-30">
                    <div class="shop-product-card">

                      <!-- Image/Slider -->
                      <div class="product-image-wrapper">
                        <!-- Product Actions (hover) -->
                        <a href="#" class="buy-btn"><span class="linea-ecommerce-bag"></span></a>
                        <a href="#" class="fav-btn"><span class="linea-basic-star"></span></a>

                        <!-- Product Main Image -->
                        <div class="shop-p-slider">
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 8"></a>
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 1"></a>
                        </div>
                      </div>

                      <!-- Product Meta -->
                      <div class="product-meta">
                        <a href="../../pages/shop/shop-single.html"><h4 class="product-name">Dark Gray Blazer</h4></a>
                        <span class="product-sep"></span>
                        <p class="product-price">$115.99</p>
                      </div>

                    </div><!-- / .shop-product-card -->
                  </div><!-- / .col-lg-3 -->


                  <!-- Shop Product -->
                  <div class="col-xs-12 col-sm-6 col-lg-4 mb-30">
                    <div class="shop-product-card">

                      <!-- Image/Slider -->
                      <div class="product-image-wrapper">

                        <!-- Product Actions (hover) -->
                        <a href="#" class="buy-btn"><span class="linea-ecommerce-bag"></span></a>
                        <a href="#" class="fav-btn"><span class="linea-basic-star"></span></a>

                        <!-- Product Main Image -->
                        <div class="shop-p-slider">
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 10"></a>
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 2"></a>
                        </div>
                      </div>

                      <!-- Product Meta -->
                      <div class="product-meta">
                        <a href="../../pages/shop/shop-single.html"><h4 class="product-name">Black Jacket</h4></a>
                        <span class="product-sep"></span>
                        <p class="product-price">$127.99</p>
                      </div>

                    </div><!-- / .shop-product-card -->
                  </div><!-- / .col-sm-3 -->


                  <!-- Shop Product -->
                  <div class="col-xs-12 col-sm-6 col-lg-4 mb-30">
                    <div class="shop-product-card">

                      <!-- Image/Slider -->
                      <div class="product-image-wrapper">
                        <span class="label label-red sale-label">SALE</span>

                        <!-- Product Actions (hover) -->
                        <a href="#" class="buy-btn"><span class="linea-ecommerce-bag"></span></a>
                        <a href="#" class="fav-btn"><span class="linea-basic-star"></span></a>

                        <!-- Product Main Image -->
                        <div class="shop-p-slider">
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 11"></a>
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 6"></a>
                        </div>
                      </div>

                      <!-- Product Meta -->
                      <div class="product-meta">
                        <a href="../../pages/shop/shop-single.html"><h4 class="product-name">Casual Blue Blazer</h4></a>
                        <span class="product-sep"></span>
                        <p class="product-price"><span class="price-cut">$250.99</span> $217.99</p>
                      </div>

                    </div><!-- / .shop-product-card -->
                  </div><!-- / .col-lg-3 -->


                  <!-- Shop Product -->
                  <div class="col-xs-12 col-sm-6 col-lg-4 mb-30">
                    <div class="shop-product-card">

                      <!-- Image/Slider -->
                      <div class="product-image-wrapper">
                        <!-- Product Actions (hover) -->
                        <a href="#" class="buy-btn"><span class="linea-ecommerce-bag"></span></a>
                        <a href="#" class="fav-btn"><span class="linea-basic-star"></span></a>

                        <!-- Product Main Image -->
                        <div class="shop-p-slider">
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 12"></a>
                          <a href="../../pages/shop/shop-single.html"><img src="http://placehold.it/263x350" alt="Product Image 4"></a>
                        </div>
                      </div>

                      <!-- Product Meta -->
                      <div class="product-meta">
                        <a href="../../pages/shop/shop-single.html"><h4 class="product-name">Black Jacket</h4></a>
                        <span class="product-sep"></span>
                        <p class="product-price">$487.99</p>
                      </div>

                    </div><!-- / .shop-product-card -->
                  </div><!-- / .col-lg-3 -->

                </div><!-- / .row -->



                <!-- Pagination -->
                <div class="row">
                  <nav class="blog-pagination text-center">
                    <ul class="pagination">
                      <li>
                        <a href="#" aria-label="Previous">
                          <span aria-hidden="true"><i class="fa fa-angle-double-left"></i></span>
                        </a>
                      </li>
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">...</a></li>
                      <li><a href="#">7</a></li>
                      <li>
                        <a href="#" aria-label="Next">
                          <span aria-hidden="true"><i class="fa fa-angle-double-right"></i></span>
                        </a>
                      </li>
                    </ul>
                  </nav>
                </div><!-- / .row -->

              </div><!-- / .col-md-9 -->
            </div><!-- / .row -->

          </div><!-- / .contianer -->
        </div><!-- / .gray-bg -->
{include file="footer.tpl"}
