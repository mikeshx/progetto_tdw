<?php
ini_set('display_errors', 1);

// Create a login object
$login = new Login();

// Various security checks
if ($login->isUserLoggedIn() == false) {
    header('Location: login.php'); exit;
} else if ($login->isUserLoggedIn() == true && $login->checkAdmin(9) == false) {
    header('Location: login.php'); exit;
}

?>
