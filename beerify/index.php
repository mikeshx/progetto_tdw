<?php
ini_set('display_errors', 1);

//dir Win - Linux
require_once('require.php');

//The real code starts here
// Check for a minimum php version
if (version_compare(PHP_VERSION, '5.3.7', '<')) {
    exit("Sorry, Simple PHP Login does not run on a PHP version smaller than 5.3.7 !");

} else if (version_compare(PHP_VERSION, '5.5.0', '<')) {
    // Compatibility library for older php versions
    require_once("libs/password_compatibility_library.php");
}

// DB Connection
require_once("classes/db.php");

// Login class
require_once("classes/Login.php");

// Create a login object
$login = new Login();

// Initalize a smarty variable
$mySmarty = new mySmarty();

// Check if we are already logged in
if ($login->isUserLoggedIn() == true) {

    // Assign a variable to smarty that will be displayed in the page
    // This is done to include the right user based on the user type
    $mySmarty->assign('header', 'logged_user_header');

    if ($login->checkAdmin(9) == true) {
      echo "He's admin";
    } else {
      echo "He's not admin";
    }

} else {
    $mySmarty->assign('header', 'header');
}

// Render the template file
$mySmarty->display(RES_DIR . '/templates/index.tpl');
?>
