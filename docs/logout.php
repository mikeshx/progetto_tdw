<?php

// Login & register class
require_once("classes/Login.php");

// Destroy the current session
$login = new Login();
$login->doLogout();

// Redirect the user to the index
header("Location: index.php");

// TODO: maybe add a logout message to inform the user

?>
