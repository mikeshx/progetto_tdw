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
                  <li><a href="index.php">Home</a></li>
                  <li class="active"><a href="shop.php">Shop</a></li>
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
                      <form method="POST" action="search.php"><input type="text" name="search" id="search" class="form-control" value="Search..." onfocus="this.value='';">
                        <button class="inside-input-btn"><i class="fa fa-search"></i></button>
                      </form>
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

                    <div class="cw-subtotal">
                      <h6 class="h-alt">SUBTOTAL: $718.98</h6>
                      <a href="shop-checkout.php" class="btn-ghost btn-small">View Cart</a>
                    </div>
                  </div><!-- / .cart-widget -->


                  <!-- Price Filter -->
                  <div class="shop-widget filter-widget">
                    <h5 class="header-widget">Filter by Price</h5>
                    <div id="shop-slider-range"></div>
                    <p>
                    <div class="form-group">
                      <form method="POST" action="search_for_price.php">
                        <label for="amount">Price min:</label>
                        <input type="text" name="priceMin" id="priceMin" class="w3-border" value="0" onfocus="this.value='';">
                        <label for="amount">Price max:</label>
                        <input type="text" name="priceMax" id="priceMax" class="w3-border" value="10" onfocus="this.value='';">
                        <br>
                        <br><button class="btn-ghost btn-small"><i class="fa fa-search"></i></button></br>
                      </form>
                    </div>
                    </p>
                  </div><!-- / .filter-widget -->


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
                      {foreach $tag as $r}
                        <li><a href="search_for_tag.php?idTag={$r.id}">{$r.nome}</a></li>
                        {foreachelse}
                        <li>.. No result ..</li>
                      {/foreach}
                    </ul>
                  </div>

                </aside><!-- / .shop-sidebar-vertical -->
              </div><!-- / .col-md-3 -->



              <!-- Shop Layout - (3 columns) -->
              <div class="col-md-9">

                <!-- Shop layout options -->
                <div class="row mb-50">
                  <div class="col-xs-12 col-sm-6 col-md-9 mb-sm-30">
                    <span> {$n_tot} RESULTS</span>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-3 pull-right">
                    <select class="price-sorting type-regular form-control" id="select-form" name="price-sorting">
                      <option selected disabled>Default</option>
                      <option value="l2h">Low to high</option>
                      <option value="h2l">High to low</option>
                    </select>
                  </div>
                </div><!-- / .row -->




              {include file="prodotti.tpl"}




              </div><!-- / .col-md-9 -->
            </div><!-- / .row -->

          </div><!-- / .contianer -->
        </div><!-- / .gray-bg -->
{include file="footer.tpl"}
