<?php
ini_set('display_errors', 1);

// We start a session to check if the userid is set properly
session_start();

require ('classes/ShoppingCart.php');

//dir Win - Linux
require_once('require.php');
require_once ('classes/Prodotti.php');

$mySmarty = new mySmarty();

/* Id prodotto */
$id = $_GET['newId'];


/* Query Tag realtive al prodotto */
$tag = array('tag' => Prodotto::getProductTag($id));
foreach ($tag as $key => $tag){
    $mySmarty->assign($key , $tag);
}

/* Query di richiesta del prodotto*/
$params = array('prodotti' => Prodotto::getProdotto($id));
foreach ($params as $key => $params){
    $mySmarty->assign($key , $params);
}

$mySmarty->display(RES_DIR . '/templates/shop-single.tpl');

// Initialize the shopping cart object
$shoppingCart = new ShoppingCart();

?>
