<?php

//linux dirs
//define('SMARTY_DIR', '/var/www/html/beerify/res/smarty/');
//define('SETUP_DIR', '/var/www/html/beerify/res/smarty/');
//define('RES_DIR', '/var/www/html/beerify/res/');

//windows dirs
define('SMARTY_DIR', 'C:/xampp/htdocs/beerify/res/smarty/');
define('SETUP_DIR', 'C:/xampp/htdocs/beerify/res/smarty/');
define('RES_DIR', 'C:/xampp/htdocs/beerify/res/');

require(SMARTY_DIR . 'Smarty.class.php');

// Smarty configuration
class mySmarty extends Smarty {
    function __construct() {
      parent::__construct();

      $this->setTemplateDir(RES_DIR . 'templates/');
      $this->setCompileDir(SETUP_DIR . 'templates_c/');
      $this->setConfigDir(SETUP_DIR . 'configs/');
      $this->setCacheDir(SETUP_DIR . 'cache/');
    }
}
?>
