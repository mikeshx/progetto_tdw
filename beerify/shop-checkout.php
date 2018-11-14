<?php
ini_set('display_errors', 1);

//dir Win - Linux
require_once('require.php');

$mySmarty = new mySmarty();
$mySmarty->display(RES_DIR . '/templates/shop-checkout.tpl');

?>
