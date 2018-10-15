<?php

// checking for minimum PHP version
if (version_compare(PHP_VERSION, '5.3.7', '<')) {
    exit("Sorry, Simple PHP Login does not run on a PHP version smaller than 5.3.7 !");
} else if (version_compare(PHP_VERSION, '5.5.0', '<')) {
    require_once("libraries/password_compatibility_library.php");
}

// iDB Connection
require_once("config/db.php");

// Load the registration class
require_once("classes/Registration.php");

// Create the registration object
$registration = new Registration();

// Show the registration view
include("views/register.php");
