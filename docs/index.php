<?php
ini_set('display_errors', 1);
define('CONFIG_DIR', '/var/www/html/giacomo/res/');
require_once('/var/www/html/giacomo/res/libs/smartyInit.php');

$tpl = new smartyInit();

$tpl->render('index');

?>
