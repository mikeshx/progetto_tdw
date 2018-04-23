<?php
include('/var/www/html/giacomo/res/libs/smarty_setup.php');

class smartyInit {

  /**
  * class constructor
  */
  private $templ;

  function __construct() {

    // instantiate the template object
    $this->templ = new mySmarty();
  }

  // TODO: rewrite function
  function render($template)
  {

      $this->templ->display($template . '.tpl');
  }
}

?>
