<?php
//linux dir
//include('/var/www/html/beerify/res/libs/smarty_setup.php');

//windows dir
include('C:/xampp/htdocs/beerify/res/libs/smarty_setup.php');

class smarty_init {

  /**
  * class constructor
  */
  private $templ;

  function __construct() {
    $this->templ = new mySmarty();
  }

  function render($template)
  {
    $this->templ->display($template . '.tpl');
  }
}
?>
