<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'classes/phpmailer/Exception.php';
require 'classes/phpmailer/PHPMailer.php';
require 'classes/phpmailer/SMTP.php';

require('connectionDB.php');

class resetPassword
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
        $email = isset($_POST['email']) ? trim($_POST['email']) : '';
        if ($email) {
            $this->generateToken($email);
        }
    }

    /** Handles the generation of the reset password link (token) */
    private function generateToken($email) {

        // Get the connection from the db class
        $pdo = Database::getPDOConnection();

        //The simple SQL query that we will be running.
        $sql = "SELECT `user_id`, `user_email` FROM `users` WHERE `user_email` = :email";

        //Prepare our SELECT statement.
        $statement = $pdo->prepare($sql);

        //Bind the $name variable to our :name parameter.
        $statement->bindValue(':email', $email);

        //Execute the SQL statement.
        $statement->execute();

        //Fetch our result as an associative array.
        $userInfo = $statement->fetch(PDO::FETCH_ASSOC);

        // If $userInfo is empty, it means that the submitted email
        // address has not been found in our users table.
        if(empty($userInfo)){
            echo 'That email address was not found in our system!';
            exit;
        }

        // The user's email address and id.
        $userEmail = $userInfo['user_email'];
        $userId = $userInfo['user_id'];

        // Create a secure token for this forgot password request.
        $token = openssl_random_pseudo_bytes(16);
        $token = bin2hex($token);

        // Insert the request information
        // Into our password_reset_request table.

        //The SQL statement.
        $insertSql = "INSERT INTO password_dimenticata
                      (id, token, data_scadenza)
                      VALUES
                      (:user_id, :token, :date_requested)";

        //Prepare our INSERT SQL statement.
        $statement = $pdo->prepare($insertSql);

        //Execute the statement and insert the data.
        $statement->execute(array(
            "user_id" => $userId,
            "date_requested" => date("Y-m-d H:i:s"),
            "token" => $token
        ));

        //Get the ID of the row we just inserted.
        $passwordRequestId = $pdo->lastInsertId();


        //Create a link to the URL that will verify the
        //forgot password request and allow the user to change their
        //password.
        $verifyScript = 'https://localhost/recover_password.php';

        //The link that we will send the user via email.
        $linkToSend = $verifyScript . '?uid=' . $userId . '&id=' . $passwordRequestId . '&t=' . $token;

        $this->sendMail($email, "Password reset", $linkToSend);

        echo $linkToSend;

    }

    // TODO: handle errors
    function sendMail($to, $subject, $body) {

        $from = "unnamedgroup@univaq.it";
        $from_name = "Unnamed Group";

        $mail = new PHPMailer();
        $mail->IsSMTP();
        $mail->SMTPDebug = 0;
        $mail->SMTPAuth = true;

        $mail->SMTPSecure = 'ssl';
        $mail->Host = 'smtp.gmail.com';
        $mail->Port = 465;
        $mail->Username = 'casaturilli68b@gmail.com';
        $mail->Password = 'unnamedtest123';

        $mail->SetFrom($from, $from_name);
        $mail->Subject = $subject;
        $mail->Body = $body;
        $mail->IsHTML(true);
        $mail->AddAddress($to);

        if(!$mail->Send()) {
            $errors[] = 'errore mail: '.$mail->ErrorInfo;
            return false;
        } else {
            $messages[] = 'Email sent successfully';
            return true;
        }
    }
}