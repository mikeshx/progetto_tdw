<?php
ini_set('display_errors', 1);

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
