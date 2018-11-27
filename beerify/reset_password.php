<?php

ini_set('display_errors', 1);

//dir Win - Linux
require_once('require.php');

require('classes/resetPassword.php');

session_start();

$resetPassword = new resetPassword();

// Initalize a smarty variable
$mySmarty = new mySmarty();

// resetPassword related error Messages
if (isset($resetPassword)) {

    // Error masages handling
    if ($resetPassword->errors) {
        $mySmarty->assign('errorMessages', $resetPassword->errors);
    }

    // Messages handling
    if ($resetPassword->messages) {
        $mySmarty->assign('Messages', $resetPassword->messages);
    }
}

$mySmarty->display(RES_DIR . 'templates/administration/pages-forget-password.tpl');
