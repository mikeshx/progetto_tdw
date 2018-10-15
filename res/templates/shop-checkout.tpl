{include file="header.tpl"}
        <!-- ========== Page Title ========== -->

        <header class="page-title pt-large pt-dark pt-plax-lg-dark"
        data-stellar-background-ratio="0.4">
          <div class="container">
              <div class="row">
                <div class="col-sm-6">
                  <h1>Cart</h1>
                  <span class="subheading">Your shopping cart</span>
                </div>
                <ol class="col-sm-6 text-right breadcrumb">
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Elements</a></li>
                  <li class="active">Cart</li>
                </ol>
              </div>
            </div>
        </header>

        <!-- ========== Cart Items - (checkout table) ========== -->
        <div class="container section">
          <div class="row">

            <!-- Checkout Table -->
            <div class="col-lg-9">
              <div class="table-responsive">
                <table class="table checkout-table">
                  <thead>
                    <tr>
                      <th></th>
                      <th>Preview</th>
                      <th>Product</th>
                      <th>Details</th>
                      <th>Q-ty</th>
                      <th>Total</th>
                      <th></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td><img src="../../assets/images/shop/p-thumb-1.jpg" alt="Thumb product image"></td>
                      <td>Light Blue Suit</td>
                      <td class="td-product-options"><span class="strong">Size: </span>M, <span class="strong">Color: </span>Blue</td>
                      <td class="td-product-qty"><input class="form-control" type="number" value="1"></td>
                      <td>$359.99</td>
                      <td><a href="#"><span class="linea-arrows-square-remove"></span></a></td>
                    </tr>

                    <tr>
                      <td>2</td>
                      <td><img src="../../assets/images/shop/p-thumb-2.jpg" alt="Thumb product image"></td>
                      <td>Dark Blue Suit</td>
                      <td class="td-product-options"><span class="strong">Size: </span>M, <span class="strong">Color: </span>Blue</td>
                      <td class="td-product-qty"><input class="form-control" type="number" value="1"></td>
                      <td>$579.99</td>
                      <td class="td-remove"><a href="#"><span class="linea-arrows-square-remove"></span></a></td>
                    </tr>

                    <tr>
                      <td>3</td>
                      <td><img src="../../assets/images/shop/p-thumb-1.jpg" alt="Thumb product image"></td>
                      <td>Navy Blue Suit</td>
                      <td class="td-product-options"><span class="strong">Size: </span>M, <span class="strong">Color: </span>Blue</td>
                      <td class="td-product-qty"><input class="form-control" type="number" value="1"></td>
                      <td>$359.99</td>
                      <td><a href="#"><span class="linea-arrows-square-remove"></span></a></td>
                    </tr>

                    <tr>
                      <td>4</td>
                      <td><img src="../../assets/images/shop/p-thumb-2.jpg" alt="Thumb product image"></td>
                      <td>Midnight Blue Suit</td>
                      <td class="td-product-options"><span class="strong">Size: </span>M, <span class="strong">Color: </span>Blue</td>
                      <td class="td-product-qty"><input class="form-control" type="number" value="1"></td>
                      <td>$579.99</td>
                      <td><a href="#"><span class="linea-arrows-square-remove"></span></a></td>
                    </tr>
                  </tbody>
                </table><!-- / .checkout-table -->
              </div><!-- / .table-responsive -->


              <!-- Coupon Form -->
              <form action="#" class="checkout-coupon-form ws-m">
                <div class="col-lg-4 no-gap-left">
                  <input type="text" class="form-control" placeholder="Coupon code">
                </div>
                <button class="btn btn-ghost">Apply Coupon</button>
                <button class="btn pull-right">Update Cart</button>
              </form><!-- / .checkout-coupon-form -->
              <hr>


              <!-- Calculate Shipping -->
              <div class="calc-shipping" id="calc-shipping">
                <h4>Calculate Shipping</h4>
                <p>Shipping costs will be calculated once you have provided your address.</p>
                <form action="#" class="calc-form">
                  <div class="form-group col-lg-4 no-gap-left">
                    <select class="form-control" id="calc-country-select">
                      <option selected>United Kingdom (UK)</option>
                      <option>Germany (DE)</option>
                      <option>France (FR)</option>
                      <option>Australia (AU)</option>
                    </select>
                    <label for="calc-country-select">Select Country</label>
                  </div>

                  <div class="form-group col-lg-4">
                    <input type="text" class="form-control" id="calc-state" placeholder="State / country">
                    <label for="calc-state">Your State</label>
                  </div>

                  <div class="form-group col-lg-4 no-gap-right">
                    <input type="number" class="form-control" id="calc-zip" placeholder="Postcode / ZIP">
                    <label for="calc-zip">Your ZIP</label>
                  </div>

                  <div class="col-lg-12 no-gap btn-totals">
                    <input type="submit" class="btn" value="Update Totals">
                  </div>

                </form>
              </div><!-- / .calc-shipping -->

            </div><!-- / .col-lg-9 -->


            <!-- Totals Table -->
            <div class="col-lg-3 totals-group">
              <div class="totals-heading">
                <h6>Card Totals</h6>
              </div>
              <div class="totals-content">
                <div class="subtotal-group">
                  <h6>Subtotal:</h6>
                  <p>$859.99</p>
                </div>
                <div class="shipping-group">
                  <h6>Shipping:</h6>
                  <a href="#calc-shipping">Calculate Shipping</a>
                </div>
                <div class="total-group">
                  <h5>Total:</h5>
                  <p>$899.99</p>
                </div>
                <div class="checkout-btn-wrapper">
                  <a href="../../pages/shop/shop-checkout.html" class="btn checkout-btn">Go to checkout</a>
                </div>
              </div><!-- / .totals-content -->
            </div><!-- / .col-md-3 -->

          </div><!-- / .row -->
        </div><!-- / .container -->



        <!-- ========== Related Items - (products section) ========== -->

        <div class="gray-bg">
          <div class="container section">

            <div class="row">
              <header class="sec-heading">
                <h2>Top Rated Products</h2>
              </header>

              <!-- Shop Product -->
              <div class="col-xs-12 col-sm-6 col-lg-3">
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
              <div class="col-xs-12 col-sm-6 col-lg-3">
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
              </div><!-- / .col-lg-3 -->


              <!-- Shop Product -->
              <div class="col-xs-12 col-sm-6 col-lg-3">
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
              <div class="col-xs-12 col-sm-6 col-lg-3">
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
            </div><!-- / .row -->
          </div><!-- / .container -->
        </div><!-- / .gray-bg -->
{include file="footer.tpl"}
