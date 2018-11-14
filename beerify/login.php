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

// Check for errors in the registration page
// TODO: remove errors in php and pass an array to smarty
if (isset($registration)) {
    if ($registration->errors) {
        foreach ($registration->errors as $error) {
            echo $error;
        }
    }
    if ($registration->messages) {
        foreach ($registration->messages as $message) {
            echo $message;
        }
    }
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
