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

        // Generate a token and send an email
        $email = isset($_POST['email']) ? trim($_POST['email']) : '';
        if ($email) {
            $this->generateToken($email);
        }

        // Token validation
        $userId = isset($_GET['uid']) ? trim($_GET['uid']) : '';
        $token = isset($_GET['t']) ? trim($_GET['t']) : '';
        $passwordRequestId = isset($_GET['id']) ? trim($_GET['id']) : '';

        if ($userId && $token && $passwordRequestId) {
            $this->validateRequest($userId, $token, $passwordRequestId);
        }

        // Update password action
        if (isset($_POST['update_password'])) {

            $pwd = $_POST['new_password'];
            $pwd_repeat = $_POST['new_password_repeat'];

            // Check if the passwords are the same
            // The strcmp function returns 0 if the strings are equal
            if (strcmp($pwd,$pwd_repeat) != 0) {
                $errors[] = "Passwords are not equal";
                exit;
            }

            $this->updatePassword($pwd, $_SESSION['user_id_reset_pass']);

            // Unset the session variables to avoid undesired actions
            // and redirect the user to the login page
            unset ($_SESSION["user_id_reset_pass_time"]);
            unset ($_SESSION["user_id_reset_pass"]);

            header('Location: login.php');
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
            $errors[] = 'That email address was not found in our system!';
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
                      (user_id, token, data_scadenza)
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
        $verifyScript = 'http://localhost/beerify/reset_password.php';

        //The link that we will send the user via email.
        $linkToSend = $verifyScript . '?uid=' . $userId . '&id=' . $passwordRequestId . '&t=' . $token;

        $this->sendMail($email, "Password reset", $linkToSend);

    }

    // TODO: handle errors
    private function sendMail($to, $subject, $body) {

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

    // Checks is the request is valid and allow the user to change its password
    private function validateRequest($userId, $token, $passwordRequestId) {

        $pdo = Database::getPDOConnection();

        //Now, we need to query our password_reset_request table and
        //make sure that the GET variables we received belong to
        //a valid forgot password request.

        $sql = "SELECT * FROM password_dimenticata WHERE user_id = :user_id AND token = :token AND id = :id";

        //Prepare our statement.
        $statement = $pdo->prepare($sql);

        //Execute the statement using the variables we received.
        $statement->execute(array(
            "user_id" => $userId,
            "id" => $passwordRequestId,
            "token" => $token
        ));

        //Fetch our result as an associative array.
        $requestInfo = $statement->fetch(PDO::FETCH_ASSOC);

        //If $requestInfo is empty, it means that this
        //is not a valid forgot password request. i.e. Somebody could be
        //changing GET values and trying to hack our
        //forgot password system.
        if(empty($requestInfo)){
            echo "Invalid request";
            exit;
        }

        // If the date of the request is older than 5 minutes, we consider it expired
        $now = strtotime("-5 minutes");
        $old_time = strtotime($requestInfo['data_scadenza']);

        if ($now > $old_time) {
            echo "Date expired, please provide a new request";
            $this->deleteResetRequest($passwordRequestId);
            exit;
        }

        //The request is valid, so give them a session variable
        //that gives them access to the reset password form.
        $_SESSION['user_id_reset_pass'] = $userId;

        // store current timestamp in session, we will check later if it has expired
        $_SESSION['user_id_reset_pass_time'] = time();

        header('Location: change_password.php');

        exit;
    }

    // Delete an expired reset request
    private function deleteResetRequest($requestId) {

        try {
            $conn = Database::getPDOConnection();
            $sql = "DELETE FROM password_dimenticata WHERE id =  :requestId";
            $stmt = $conn->prepare($sql);

            $stmt->bindParam(':requestId',$requestId,PDO::PARAM_INT);
            $stmt->execute();
        }
        catch(PDOException $e)
        {
            $errors[] = $sql . "<br>" . $e->getMessage();
        }

        $conn = null;
    }

    private function updatePassword($user_pass, $userID) {

        $user_pass = password_hash($user_pass, PASSWORD_DEFAULT);

        try {
            $conn = Database::getPDOConnection();
            $sql = "UPDATE users SET user_password_hash = :hashed_password WHERE users.user_id = :userid";
            $stmt = $conn->prepare($sql);

            $stmt->bindParam(':hashed_password',$user_pass);
            $stmt->bindParam(':userid', $userID);
            $stmt->execute();
        }
        catch(PDOException $e)
        {
            $errors[] = $sql . "<br>" . $e->getMessage();
        }

        $conn = null;

    }
}