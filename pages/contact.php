<?php 
    session_start();
    include('../resources/dbconfig/dbconfig.php');
    $table_name = "contacts".$_SESSION['id'];
    $mysql = new mysqli($host, $db_user, $db_password, $db_name);

    $result = $mysql->query("SELECT `user_id`, `name`, `email` FROM `$table_name`");
        if($result != null){
            $contacts = [];
            while($row = mysqli_fetch_assoc($result)){
            $contacts[] = $row;
            }
            echo json_encode($contacts);
        }
    if(isset($_POST['email'])){
        $email = filter_var($_POST["email"], FILTER_SANITIZE_STRING);
        $result = $mysql->query("SELECT * FROM `$table_name` WHERE `email` = '$search_email'");
            if(mysqli_num_rows($result)>0){ 
                return false; 
            } else {
                $result = $mysql->query("SELECT `id`, `name` FROM `users` WHERE `email` = '$email'");
                $new_contact = $result->fetch_assoc();
                $contact_id = $new_contact['id'];
                $contact_email = $email;
                $contact_name = $new_contact['name'];
                mysqli_free_result($result);
                $mysql->query("INSERT INTO `$table_name` (`user_id`, `name`, `email`) VALUES('$contact_id', '$contact_name', '$contact_email')");
                        
            }
    }
    $mysql->close();