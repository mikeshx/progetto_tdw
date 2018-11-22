<?php
ini_set('display_errors', 1);
require('classes/resetPassword.php');

session_start();

$reset = new resetPassword();

// First we have to check if the session exists
if (!isset($_SESSION['user_id_reset_pass_time']) && !isset($_SESSION['user_id_reset_pass'])) {
    exit;
}

// Check if session has expired (5 minutes)
$max_lifetime_seconds = 300;

$session_lifetime_seconds = time() - $_SESSION['user_id_reset_pass_time'];
if ($session_lifetime_seconds > $max_lifetime_seconds) {
    unset ($_SESSION["user_id_reset_pass_time"]);
    unset ($_SESSION["user_id_reset_pass"]);
}

//TODO: the user is authorized to change its password

