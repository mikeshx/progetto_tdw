<?php
ini_set('display_errors', 1);

// Admin security check
require('admin_check.php');

require('../classes/Prodotti.php');

$product = new Prodotto('', '', '', '');

// Insert product action
if(isset($_POST['product_submit'])) {
    $product->insertProduct();
}

// Initalize a smarty variable
$mySmarty = new mySmarty();
$mySmarty->display(RES_DIR . 'templates/administration/add_product.tpl');
?>
