<?php 
    session_start();
    include('../resources/dbconfig/dbconfig.php');
    $mysql = new mysqli($host, $db_user, $db_password, $db_name);
    $id = $_SESSION['id'];
    $result = $mysql->query("SELECT `name` FROM `users` WHERE `id` = '$id'");
    if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();
    $name = $user['name'];
    }

    $result = $mysql->query("SELECT `from_id`, `from_name`, `for_id`, `message`, `datetime` FROM `message`");
        if($result != null){
            $messages = [];
            while($row = mysqli_fetch_assoc($result)){
            $messages[] = $row;
            }
            echo json_encode($messages);
        }
    if(isset($_POST['message'])){
        $contact = (int)($_POST['for_id']);
        $message = filter_var($_POST["message"], FILTER_SANITIZE_STRING);
        $mysql->query("INSERT INTO `message`(`from_id`, `from_name`, `for_id`, `message`) VALUES('$id', '$name', '$contact', '$message')");
    }
    $mysql->close();