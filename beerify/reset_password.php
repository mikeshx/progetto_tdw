<?php

ini_set('display_errors', 1);

//dir Win - Linux
require_once('require.php');

require('classes/resetPassword.php');

$resetPassword = new resetPassword();

// resetPassword related error Messages
if (isset($resetPassword)) {

    // Error masages handling
    if ($resetPassword->errors) {
        $mySmarty->assign('errorMessages', $registration->errors);
    }

    // Messages handling
    if ($resetPassword->messages) {
        $mySmarty->assign('Messages', $registration->messages);
    }
}

// Initalize a smarty variable
$mySmarty = new mySmarty();

$mySmarty->display(RES_DIR . 'templates/administration/pages-forget-password.tpl');
