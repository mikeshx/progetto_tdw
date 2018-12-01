<!doctype html>

    <div class="row products-grid">

        <div id="easyPaginate">
            <!-- Shop Product -->
            {foreach $prodotti as $r}
                <div class="prodotto" data-price={$r.prezzo}>
                    <div class="col-xs-12 col-sm-6 col-lg-4 mb-30">
                        <div class="shop-product-card">
                            <!-- Image/Slider -->
                            <div class="product-image-wrapper">
                                <!-- Product Actions (hover) -->
                                <a href="#" class="buy-btn"><span class="linea-ecommerce-bag"></span></a>
                                <a href="#" class="fav-btn"><span class="linea-basic-star"></span></a>

                                <!-- Product Main Image -->
                                <div class="shop-p-slider">
                                    <a href="shop-single.php?newId={$r.id}"><img src="http://placehold.it/263x350" alt="Product Image 12"></a>
                                </div>
                            </div>

                            <!-- Product Meta -->
                            <div class="product-meta">
                                <a href="shop-single.php?newId={$r.id}"><h4 class="product-name">{$r.nome}</h4></a>
                                <span class="product-sep"></span>
                                <p class="product-price">{$r.prezzo} €</p>
                            </div>


                         </div><!-- / .shop-product-card -->
                     </div><!-- / .col-lg-3 -->
                </div>

            {/foreach}
        </div>
    </div>
