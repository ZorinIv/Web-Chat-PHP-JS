<?php 
    session_start();
    $id = $_SESSION['id'];
    include('../resources/dbconfig/dbconfig.php');
    $table_name = "group_contacts";
    $mysql = new mysqli($host, $db_user, $db_password, $db_name);

    $result = $mysql->query("SELECT `user_id`, `name`, `email`, `group_id` FROM `$table_name`");
        if($result != null){
            $contacts = [];
            while($row = mysqli_fetch_assoc($result)){
            $contacts[] = $row;
            }
            echo json_encode($contacts);
        }

    if(isset($_POST['email'])){
        $email = filter_var($_POST["email"], FILTER_SANITIZE_STRING);
        $group_id = (int)($_POST["group"]);
        $res = $mysql->query("SELECT `group_name` FROM `groups` WHERE `id` = '$group_id'");
        $r = $res->fetch_array();
        if($r){$group_name = $r[0];}
        $result = $mysql->query("SELECT * FROM `$table_name` WHERE `email` = '$search_email' AND `group_id` = '$group_id'");
            if(mysqli_num_rows($result)>0){ 
                return false; 
            } else {
                $result = $mysql->query("SELECT `id`, `name` FROM `users` WHERE `email` = '$email'");
                $new_contact = $result->fetch_assoc();
                $contact_id = $new_contact['id'];
                $contact_email = $email;
                $contact_name = $new_contact['name'];
                mysqli_free_result($result);
                $mysql->query("INSERT INTO `$table_name` (`user_id`, `name`, `email`, `group_id`, `group_name`) VALUES('$contact_id', '$contact_name', '$contact_email', '$group_id', '$group_name')");
                        
            }
    }
    $mysql->close();