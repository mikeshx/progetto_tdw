{include file="smarty_common/header.tpl"}

{foreach $prodotti as $r}
  <!-- ========== Page Title ========== -->
  <header class="page-title pt-large pt-dark pt-plax-lg-dark"
          data-stellar-background-ratio="0.4">
    <div class="container">
      <div class="row">

        <div class="col-sm-6">
          <h1>Shop</h1>
          <span class="subheading">Single Product Page</span>
        </div>
        <ol class="col-sm-6 text-right breadcrumb">
          <li><a href="index.php">Home</a></li>
          <li><a href="shop.php">Shop</a></li>
          <li class="active"><a href="shop-single.php?newId={$r.id}">{$r.nome}</a></li>
        </ol>

      </div>
    </div>
  </header>



  <!-- ========== Cart Items - (checkout table) ========== -->

  <div class="container section">
    <div class="row ws-m">

      <div class="col-md-12">
        <ul class="product-meta">
          <li>COD: {$r.id}</li>
          <li>TAGS: <a href="#">Suits</a>, <a href="#">Man</a></li>
        </ul>
      </div>

      <!-- Prodcut Images -->
      <div class="col-md-1">
        <ul class="prod_single_thumbs_slider">
          <li><img src="http://placehold.it/68x90" alt="Product Thumb"></li>
          <li><img src="http://placehold.it/68x90" alt="Product Thumb"></li>
          <li><img src="http://placehold.it/68x90" alt="Product Thumb"></li>
        </ul>
      </div>

      <div class="col-md-5">
        <ul class="prod_single_img_slider">
          <li><img class="img-responsive" src="http://placehold.it/460x570" alt="Product Image"></li>
          <li><img class="img-responsive" src="http://placehold.it/460x570/ccc/999" alt="Product Image"></li>
          <li><img class="img-responsive" src="http://placehold.it/460x570/eee/999" alt="Product Image"></li>
        </ul>
      </div><!-- / .col-md-6 -->


      <!-- Product Description -->
        <form method="post" action="shop-single.php?newId={$r.id}&add_to_cart=true" id="add-to-cart-form">
          <input type="hidden" value="{$r.id}" name="product_id" />
      <div class="col-md-5 product-info">
        <h1 class="prod-name">{$r.nome}</h1>
        <h3 class="prod-price"> {$r.prezzo} € litro </h3> <!-- <span class="price-cut">$457.99</span> -->
        <p class="prod-desc">
          {$r.descrizione}
        </p>
        <ul class="prod-rating">
          <li><a href="#"><i class="fa fa-star"></i></a></li>
          <li><a href="#"><i class="fa fa-star"></i></a></li>
          <li><a href="#"><i class="fa fa-star"></i></a></li>
          <li><a href="#"><i class="fa fa-star"></i></a></li>
          <li><a href="#"><i class="fa fa-star-o"></i></a></li>
          <li>14 Reviews</li>
        </ul>

        <div class="prod-size">
          <h5>Quantità</h5>
          <ul class="sizes">
            <div class="quantity"> <input type="text" name="quantity" maxlength="2" size="2" value="1" style="text-align:center;"><br> </div>
          </ul>
        </div>

          <a href="#add" onclick="document.forms['add-to-cart-form'].submit();" type="submit" class="btn btn-large">Add to cart</a>
          </form>

      </div><!-- / .col-md-5 -->

    </div><!-- / .row -->



    <!-- Product Info - (tabs) -->
    <div class="row">
      <div class="col-md-12">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active"><a href="#tab-description" aria-controls="tab-description" role="tab" data-toggle="tab">Description</a></li>
          <li role="presentation"><a href="#tab-reviews" aria-controls="tab-reviews" role="tab" data-toggle="tab">Reviews</a></li>
          <li role="presentation"><a href="#tab-help" aria-controls="tab-help" role="tab" data-toggle="tab">How to buy</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
          <!-- Item Description -->
          <div role="tabpanel" class="tab-pane active" id="tab-description">
            <p>{$r.descrizione}</p>

          </div>

          <!-- Reviews -->
          <div role="tabpanel" class="tab-pane prod-reviews" id="tab-reviews">

            <div class="tp-review">
              <p class="tpr-name">Jonathan Webb</p>
              <span class="tpr-date">on June 23,2016</span>
              <ul class="tpr-rating">
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star-o"></i></li>
                <li>4 Stars</li>
              </ul>
              <p class="tpr-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos expedita, quasi perferendis. Nemo distinctio provident, ex autem corporis consequuntur praesentium cupiditate earum similique. Voluptatibus corrupti, eaque assumenda itaque suscipit ratione architecto optio aperiam soluta, quia inventore culpa at, distinctio qui quod dolor ducimus temporibus. Ducimus nihil dignissimos quibusdam, esse? Cum.</p>
            </div><!-- / .tp-review -->

            <div class="tp-review">
              <p class="tpr-name">Philip Lee</p>
              <span class="tpr-date">on June 23,2016</span>
              <ul class="tpr-rating">
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li>5 Stars</li>
              </ul>
              <p class="tpr-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum corporis, adipisci optio impedit, aut deleniti architecto ex dolor iure id sapiente autem rem voluptatibus beatae repellat quo eos dolore vel sunt dignissimos modi, debitis ipsam, reiciendis odit. Exercitationem, quae? Maxime!</p>
            </div><!-- / .tp-review -->

            <div class="tp-review">
              <p class="tpr-name">Carol Greene</p>
              <span class="tpr-date">on June 23,2016</span>
              <ul class="tpr-rating">
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star-o"></i></li>
                <li><i class="fa fa-star-o"></i></li>
                <li>3 Stars</li>
              </ul>
              <p class="tpr-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis amet necessitatibus illum ad aliquam magnam quasi veniam ea, dolorem sequi, exercitationem sapiente. Doloribus incidunt odit velit necessitatibus porro qui aperiam!</p>
            </div><!-- / .tp-review -->

            <div class="tp-review">
              <p class="tpr-name">Tyler Owens</p>
              <span class="tpr-date">on June 23,2016</span>
              <ul class="tpr-rating">
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li>5 Stars</li>
              </ul>
              <p class="tpr-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus facere magnam sit, iure consequatur dicta ipsa quo nisi id eligendi sunt expedita corporis nulla quam aperiam doloribus officiis sapiente? Vero repudiandae rerum quasi nihil nesciunt pariatur, impedit et sed ab officiis officia debitis, culpa repellendus ipsa est obcaecati repellat ut incidunt ducimus corporis nostrum voluptatibus?</p>
            </div><!-- / .tp-review -->
          </div><!-- / .prod-reviews #tab-reviews -->

          <div role="tabpanel" class="tab-pane ft-steps-numbers" id="tab-help">
            <div class="ws-s"></div>
            <!-- Step 1 -->
            <div class="col-lg-4 col-md-6 mb-sm-100 ft-item">
              <span class="ft-nbr">01</span>
              <h4>Select product</h4>
              <p>Chose the desired product, then select his options if available, like size, color, etc. and press the cart button</p>
            </div>

            <!-- Step 2 -->
            <div class="col-lg-4 col-md-6 mb-sm-100 ft-item">
              <span class="ft-nbr">02</span>
              <h4>Review your order</h4>
              <p>Review your order at checkout, calculate the shipping, if you have available coupon add it here</p>
            </div>

            <!-- Step 3 -->
            <div class="col-lg-4 col-md-6 mb-sm-100 ft-item">
              <span class="ft-nbr">03</span>
              <h4>Buy</h4>
              <p>Enter your payment details and the address where you want to receive the product, and press buy</p>
            </div>

          </div><!-- / .ft-steps-numbers #tab-help -->
        </div>

      </div>
    </div>
  </div><!-- / .container -->
{/foreach}



{include file="smarty_common/footer.tpl"}

<!-- add an item to cart script -->
<script>
    $(document).ready(function(){
        // add to cart button listener
        $('.add-to-cart-form').on('submit', function(){

            // info is in the table / single product layout
            var quantity = $(this).find('.cart-quantity').val();

            // redirect to add_to_cart.php, with parameter values to process the request
            window.location.href = "add_to_cart.php?product_id=" + {$r.id} + "&quantity=" + quantity;
            return false;
        });
    });
</script>
