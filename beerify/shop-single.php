<?php
ini_set('display_errors', 1);

//dir Win - Linux
require_once('require.php');
require_once ('classes/Prodotti.php');

$mySmarty = new mySmarty();

/* Id prodotto */
$id = $_GET['newId'];

/* Query di richiesta del prodotto*/
$params = array('prodotti' => Prodotto::getProdotto($id));
foreach ($params as $key => $params){
    $mySmarty->assign($key , $params);
}

$mySmarty->display(RES_DIR . '/templates/shop-single.tpl');

?>
