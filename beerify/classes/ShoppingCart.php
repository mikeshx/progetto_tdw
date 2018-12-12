<?php

require('classes/connectionDB.php');

class ShoppingCart
{
    public $errors = array();
    /**
     * @var array $messages Collection of success / neutral messages
     */
    public $messages = array();

    /**
     * the function "__construct()" automatically starts whenever an object of this class is created,
     * you know, when you do "$registration = new Registration();"
     */
    public function __construct()
    {

        // Add product action
        if (isset($_GET['add_to_cart'])) {

            // Check if we have a valid user login session
            if (!isset($_SESSION['user_id'])) {
                echo "exiting";
                exit;
            }

            echo "yoyoyo";
            echo $_POST['product_id'];

            $this->addToCart($_POST['product_id'], $_POST['quantity']);

        }
    }

    // Add an item to the user cart
    private function addToCart($product_id, $quantity) {

        try {
            $conn = Database::getPDOConnection();
            $sql = "INSERT INTO carrello
                    (prodotti_id, utenti_id, quantita)
                    VALUES
                    (:prodotti_id, :utenti_id, :quantita)";
            $stmt = $conn->prepare($sql);

            $stmt->bindParam(':prodotti_id',$product_id);
            $stmt->bindParam(':quantita',$quantity);
            $stmt->bindParam(':utenti_id',$_SESSION['user_id']);

            $stmt->execute();
        }
        catch(PDOException $e)
        {
            $this->errors[] = $sql . "<br>" . $e->getMessage();
        }
        $conn = null;
    }

    // Count the items in the cart of a specific user
    private function countItems($user_id) {

        try {
            $conn = Database::getPDOConnection();
            $sql = "SELECT COUNT(id)
                    FROM carrello
                    WHERE utenti_id = :user_id";

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(':user_id',$user_id);

            $stmt->execute();
        }
        catch(PDOException $e)
        {
            $this->errors[] = $sql . "<br>" . $e->getMessage();
        }
        $conn = null;
    }

    // Get the items from the cart of a specific user
    private function getItems($user_id) {
        try {
            $conn = Database::getPDOConnection();
            $sql = "SELECT * FROM carrello
                    WHERE utenti_id = :user_id";

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(':user_id',$user_id);

            $stmt->execute();
        }
        catch(PDOException $e)
        {
            $this->errors[] = $sql . "<br>" . $e->getMessage();
        }
        $conn = null;
    }
}