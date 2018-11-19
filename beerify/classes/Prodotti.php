<?php

require_once("connectionDB.php");

class Prodotto {

    private $id;
    private $nome;
    private $descrizione;
    private $quantità;
    private $prezzo;


    public function __construct($nome, $descrizione, $quantità, $prezzo)
    {
        $this->nome = $nome;
        $this->descrizione = $descrizione;
        $this->quantità = $quantità;
        $this->prezzo = $prezzo;
    }

    /* Funzioni Get */
    public function getId()
    {
        return $this->id;
    }

    public function getNome()
    {
        return $this->nome;
    }

    public function getDescrizione()
    {
        return $this->descrizione;
    }

    public function getQuantità()
    {
        return $this->quantità;
    }

    public function getPrezzo()
    {
        return $this->prezzo;
    }

    /* Funzioni Set */
    public function setId($id)
    {
        $this->id = $id;
    }

    public function setNome($nome)
    {
        $this->nome = $nome;
    }

    public function setDescrizione($descrizione)
    {
        $this->descrizione = $descrizione;
    }

    public function setQuantità($quantità)
    {
        $this->quantità = $quantità;
    }

    public function setPrezzo($prezzo)
    {
        $this->prezzo = $prezzo;
    }

    /* Query DB */

    public static function getAllProdotti()
    {
        $sql = "SELECT * FROM prodotti";

        $conn = Database::getConnection();
        // prepare and bind
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();

        $prodotti = array();


        while ($row = $result->fetch_assoc()) {
            $prodotti[] = $row;
        }
        $stmt->close();
        Database::closeConnection($conn);

        return $prodotti;
    }

    public static function getNumberRows()
    {
        $sql = "SELECT COUNT(id) FROM prodotti";

        $conn = Database::getConnection();
        // prepare and bind
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();

        return $result;
    }

    /* Add a new product */
    public function insertProduct()
    {
        try {
          $conn = Database::getPDOConnection();
          // set the PDO error mode to exception
          $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

          // prepare sql and bind parameters
          $stmt = $conn->prepare("INSERT INTO prodotti (id, nome, descrizione, quantita, prezzo)
          VALUES (:id, :nome, :descrizione, :quantita, :prezzo)");

          $stmt->bindParam(':id', $id);
          $stmt->bindParam(':nome', $nome);
          $stmt->bindParam(':descrizione', $descrizione);
          $stmt->bindParam(':quantita', $quantita);
          $stmt->bindParam(':prezzo', $prezzo);

          // Get the values
          $id = NULL;
          $nome = $_POST['nome'];
          $descrizione = $_POST['descrizione'];
          $quantita = $_POST['quantita'];
          $prezzo = $_POST['prezzo'];

          $stmt->execute();

        }
        catch(PDOException $e) {
          echo "Error: " . $e->getMessage();
        }

        $conn = null;
    }
}

?>
