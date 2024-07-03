<?php 
    session_start();
    $id = $_SESSION['id'];
    include('../resources/dbconfig/dbconfig.php');
    $mysql = new mysqli($host, $db_user, $db_password, $db_name);

    $result = $mysql->query("SELECT `group_id`, `group_name` FROM `group_contacts` WHERE `user_id` = '$id'");
    if($result != null){
        $groups = [];
        while($row = mysqli_fetch_assoc($result)){
            $groups[] = $row;
        }
        echo json_encode($groups);
    }

    if(isset($_POST['name'])){
        $name = filter_var($_POST["name"], FILTER_SANITIZE_STRING);
        $result = $mysql->query("SELECT * FROM `groups` WHERE `group_name` = '$name'");
            if(mysqli_num_rows($result)>0){ 
                return false; 
            } else {
                $mysql->query("INSERT INTO `groups` (`group_name`) VALUES('$name')");
                $res = $mysql->query("SELECT `id` FROM `groups` WHERE `group_name` = '$name'");
                $r = $res->fetch_array();
                if($r){$group_id = $r[0];}
                $mysql->query("INSERT INTO `group_contacts` (`user_id`, `name`, `email`, `group_id`, `group_name`) VALUES('$id', '$user_name', '$email', '$group_id', '$name')");       
            }
    }
    $mysql->close();