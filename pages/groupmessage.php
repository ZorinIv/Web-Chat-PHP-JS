<?php 
    session_start();
    $id = $_SESSION['id'];
    include('../resources/dbconfig/dbconfig.php');
    $mysql = new mysqli($host, $db_user, $db_password, $db_name);
    $result = $mysql->query("SELECT `name`, `email`, `avatar` FROM `users` WHERE `id` = '$id'");
    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        $name = $user['name'];
    }
    $table_name = "group_message";
    

    $result = $mysql->query("SELECT * FROM `$table_name`");
        if($result != null){
            $messages = [];
            while($row = mysqli_fetch_assoc($result)){
            $messages[] = $row;
            }
            echo json_encode($messages);
        }
    if(isset($_POST['message'])){
        $group = (int)($_POST['group']);
        $message = filter_var($_POST["message"], FILTER_SANITIZE_STRING);
        $mysql->query("INSERT INTO `group_message`(`user_id`, `name`, `message`, `group_id`) VALUES('$id', '$name', '$message', '$group')");
    }
    $mysql->close();