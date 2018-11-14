<?php
ini_set('display_errors', 1);

//dir
require_once('require.php');
require_once('classes/Prodotti.php');

$mySmarty = new mySmarty();
$params = array('prodotti' => Prodotto::getAllProdotti());

$row = Prodotto::getNumberRows();

$mySmarty->assign('riga', $row);


foreach ($params as $key => $params){
    $mySmarty->assign($key , $params);
}

$mySmarty->display(RES_DIR . '/templates/shop-sidebar.tpl');

?>
