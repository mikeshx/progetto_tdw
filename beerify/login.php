<?php
ini_set('display_errors', 1);

//dir Win - Linux
require_once('require.php');

$mySmarty = new mySmarty();

// DB Connection
require_once("classes/db.php");

// Login & register class
require_once("classes/Login.php");
// Load the registration class
require_once("classes/Registration.php");

// Create the registration object
$registration = new Registration();

// Instantiate the login and registration class, since the page is unique
$login = new Login();

// Registration related error Messages
if (isset($registration)) {

    // Error masages handling
    if ($registration->errors) {
        $mySmarty->assign('errorMessages', $registration->errors);
    }

    // Messages handling
    if ($registration->messages) {
        $mySmarty->assign('Messages', $registration->messages);
    }
}

// Login related error messages
if (isset($login)) {

    // Login error masages handling
    if ($login->errors) {
        $mySmarty->assign('errorMessages', $login->errors);
    }

    // Login Messages handling
    if ($login->messages) {
        $mySmarty->assign('Messages', $login->messages);
    }
}

// Reset password message
if(!empty($_SESSION['password_updated_message']))
{
    $mySmarty->assign('Messages', $_SESSION['password_updated_message']);
    unset($_SESSION['password_updated_message']);
}

// If the user is alredy logged in, we can redirect him to the index page
if ($login->isUserLoggedIn() == true) {

    // The login was successful, so we redirect the user to the home page
    header("Location: index.php");

} else {
    // The user is a visitor, we can show the login page
    $mySmarty->display(RES_DIR . '/templates/login.tpl');
}

?>
