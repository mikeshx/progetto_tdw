<?php
ini_set('display_errors', 1);
require('classes/resetPassword.php');

//dir Win - Linux
require_once('require.php');

session_start();

// If we have passed the valdateRequest, we run some session security tests
if (isset($_SESSION['user_id_reset_pass_time']) && isset($_SESSION['user_id_reset_pass'])) {

    // If a session exists, we check if it has expired (5 mins)
    $max_lifetime_seconds = 300;

    $session_lifetime_seconds = time() - $_SESSION['user_id_reset_pass_time'];
    if ($session_lifetime_seconds > $max_lifetime_seconds) {
        unset ($_SESSION["user_id_reset_pass_time"]);
        unset ($_SESSION["user_id_reset_pass"]);

        echo "Session expired, please make another request";
        exit;
    }

    // Everything is okay, the construct() method in the resetPassword class
    // will detect if we are trying to update our password and do all the work
    $reset = new resetPassword();

} else {
    echo "Please make a valid request";
    exit;
}

// If the user is authorized we render the page

$mySmarty = new mySmarty();

$mySmarty->display(RES_DIR . 'templates/administration/enter-new-password.tpl');

