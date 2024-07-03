<?php 
    session_start();
    include('../resources/dbconfig/dbconfig.php');
    $mysql = new mysqli($host, $db_user, $db_password, $db_name);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>WebChat</title>
</head>
<body>
    <div class="form"> 
    <h2>Авторизация</h2><br>
    <form action="" method="post">
        <input type="text" name="name" id="name" placeholder="Логин"><br><br>
        <input type="password" name="password" id="password" placeholder="Пароль"><br><br>
        <button name="authorization" type="submit">Войти</button>  
    </form><br>
    <?php echo '<a href="registration.php">Зарегистрироваться</a>'?>
    </div>
</body>
</html>
<?php
    if(isset($_POST['authorization'])){
       $name = filter_var($_POST["name"], FILTER_SANITIZE_STRING);
        $password = filter_var($_POST["password"], FILTER_SANITIZE_STRING);

        $mysql = new mysqli($host, $db_user, $db_password, $db_name);
        $result = $mysql->query("SELECT * FROM `users` WHERE `name` = '$name' AND `password` = '$password'");
        $user = $result->fetch_assoc();
        if(!$user){
            die();
        }

        $_SESSION['id'] = $user['id'];
        $mysql->close();
        header("Location: ../index.php"); 
    }
    ?>