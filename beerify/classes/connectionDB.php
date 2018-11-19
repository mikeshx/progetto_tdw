<?php

class Database
{
    protected static $servername = "localhost";
    protected static $username = "root";
    protected static $password = "eden777";
    protected static $dbname = "beerify";

    /**
     * Database constructor.
     * @param string $username
     */
    public function __construct()
    {
    }


    public static function getConnection()
    {
        $conn = new mysqli(self::$servername, self::$username, self::$password, self::$dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        return $conn;
    }

    public static function getPDOConnection()
    {
        try {
            $conn = new PDO('mysql:host=' . self::$servername . ';dbname=' . self::$dbname, self::$username, self::$password);
        } catch (PDOException $e) {
            echo 'Connection failed: ' . $e->getMessage();
        }
        return $conn;
    }

    public static function closeConnection($conn)
    {
        mysqli_close($conn);
    }


}

?>
