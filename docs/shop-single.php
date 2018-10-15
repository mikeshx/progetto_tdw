<?php
ini_set('display_errors', 1);

//linux dir
require_once('/var/www/html/beerify/res/libs/smarty_init.php');

//windows dir
//require_once('C:/xampp/htdocs/beerify/res/libs/smarty_init.php');

$tpl = new smarty_init();
$tpl->render('shop-single');

?>
