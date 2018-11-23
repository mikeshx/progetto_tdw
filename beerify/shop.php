<?php
ini_set('display_errors', 1);

//dir
require_once('require.php');
require_once('classes/Prodotti.php');

$mySmarty = new mySmarty();

/* Richiesta prodotti DB */

$params = array('prodotti' => Prodotto::getAllProdotti());
foreach ($params as $key => $params){
    $mySmarty->assign($key , $params);
}

/* Numero di elementi nella pagina */
$n_row = Prodotto::getNumberRows();
if($n_row <= 9){
    $mySmarty->assign('n_r', $n_row);
} else $mySmarty->assign('n_r', 9);
$mySmarty->assign('n_tot', $n_row);

/* Richiesta tags DB */
$tag = array('tag' => Prodotto::getAllTags());
foreach ($tag as $key => $tag){
    $mySmarty->assign($key , $tag);
}

/* Carrello */


/* Display */
$mySmarty->display(RES_DIR . '/templates/shop-sidebar.tpl');

?>
