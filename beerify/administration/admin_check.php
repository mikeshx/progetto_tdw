<?php
ini_set('display_errors', 1);

require_once('../require.php');
require_once("../classes/db.php");
require_once('../classes/Login.php');

// Create a login object
$login = new Login();

// Various security checks
if ($login->isUserLoggedIn() == false) {
    header('Location: ../login.php'); exit;
}

if ($login->isUserLoggedIn() == true && $login->checkAdmin($_SESSION['user_id']) == false) {
    header('Location: ../index.php'); exit;
}

?>
