<?php
session_start();
include('../resources/dbconfig/dbconfig.php');
$user_id = $_SESSION['id'];
$mysql = new mysqli($host, $db_user, $db_password, $db_name);
if(isset($_POST['change'])){
            switch($_POST['change']){
                case'file': 
                    $avatar = $_FILES['set_avatar'];
                    $type = $avatar['type'];
                    if(substr($type, strlen('image/'))=="jpg" || substr($type, strlen('image/'))=="jpeg" || substr($type, strlen('image/'))=="png"){
                        $avatar_name = $user_id.'.'.substr($type, strlen('image/'));
                        $dir = '../resources/images/';
                        $uploadedFile = $dir.$avatar_name;
                        if(move_uploaded_file($avatar['tmp_name'], $uploadedFile)){
                            $res = $mysql->query("SELECT `avatar` FROM `users` WHERE `id` = '$user_id'");
                            $r = $res->fetch_array();
                            $old_avatar = $r[0];
                            $result = $mysql->query("UPDATE `users` SET `avatar` = REPLACE(`avatar`, '$old_avatar', '$avatar_name') WHERE `id` = '$user_id'"); 
                        }   
                    }
                    
                    break;
                case'name': 
                    $name = filter_var($_POST["set_name"], FILTER_SANITIZE_STRING);
                    $res = $mysql->query("SELECT `name` FROM `users` WHERE `id` = '$user_id'");
                    $r = $res->fetch_array();
                    $old_name = $r[0];
                    $result = $mysql->query("UPDATE `users` SET `name` = REPLACE(`name`, '$old_name', '$name') WHERE `id` = '$user_id'");
                    break;
                case'email': 
                    $email = filter_var($_POST["set_email"], FILTER_SANITIZE_STRING);
                    $res = $mysql->query("SELECT `email` FROM `users` WHERE `id` = '$user_id'");
                    $r = $res->fetch_array();
                    $old_email = $r[0];
                    $result = $mysql->query("UPDATE `users` SET `email` = REPLACE(`email`, '$old_email', '$email') WHERE `id` = '$user_id'");
                    break;
                case'pass': 
                    $password = filter_var($_POST["set_pass"], FILTER_SANITIZE_STRING);
                    $res = $mysql->query("SELECT `password` FROM `users` WHERE `id` = '$user_id'");
                    $r = $res->fetch_array();
                    $old_password = $r[0];
                    $result = $mysql->query("UPDATE `users` SET `password` = REPLACE(`password`, '$old_password', '$password') WHERE `id` = '$user_id'");
                    break;    
            }
        }
$mysql->close();
header('Location: ../index.php');