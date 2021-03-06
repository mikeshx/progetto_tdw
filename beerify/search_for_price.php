<?php
ini_set('display_errors', 1);

//dir
require_once('require.php');
require_once('classes/Prodotti.php');

$mySmarty = new mySmarty();

/* Recupero name */
$min = $_POST['priceMin'];
$max = $_POST['priceMax'];


/* Richiesta prodotti DB */
$params = array('prodotti' => Prodotto::getAllProductForPrice($min,$max));
foreach ($params as $key => $params){
    $mySmarty->assign($key , $params);
}


/* Numero di elementi nella pagina */

$n_row = Prodotto::getNumberRowsForPrice($min,$max);
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
