<?php
ini_set('display_errors', 1);

//dir Win - Linux
require_once('../require.php');

// The real code starts here
// Check for a minimum php version
if (version_compare(PHP_VERSION, '5.3.7', '<')) {
    exit("Sorry, Simple PHP Login does not run on a PHP version smaller than 5.3.7 !");

} else if (version_compare(PHP_VERSION, '5.5.0', '<')) {
    // Compatibility library for older php versions
    require_once("libs/password_compatibility_library.php");
}

// Check if we can access the administration page
require('admin_check.php');

// Initalize a smarty variable
$mySmarty = new mySmarty();

// Render the template file
$mySmarty->display(RES_DIR . 'templates/administration/index.tpl');
?>
