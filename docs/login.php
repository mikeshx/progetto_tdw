<?php
ini_set('display_errors', 1);

//dir Win - Linux
require_once('require.php');

$mySmarty = new mySmarty();

// DB Connection
require_once("classes/db.php");

// Login class
require_once("classes/Login.php");

$login = new Login();

// If the user is alredy logged in, we can redirect him to the index page
if ($login->isUserLoggedIn() == true) {

    // Assign a variable to smarty that will be displayed in the page
    $mySmarty->display(RES_DIR . '/templates/index.tpl');

} else {
    // The user is a visitor, we can show the login page
    $mySmarty->display(RES_DIR . '/templates/login.tpl');
}

?>
