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
    <title>Document</title>
</head>
<body>
<div class="form">
    <h2>Регистрация</h2><br>
    <form action="" method="post">
        <input type="text" class="form-input" name="name" placeholder="Логин"><br><br>
        <input type="email" class="form-input" name="email" placeholder="Почта"><br><br>
        <input type="password" class="form-input" name="password" placeholder="Пароль"><br><br>
        <button name="registration" type="submit">Зарегистрироваться</button>
    </form>
</div>
</body>
</html>

<?php
if(isset($_POST['registration'])){
    $name = filter_var($_POST["name"], FILTER_SANITIZE_STRING);
    $password = filter_var($_POST["password"], FILTER_SANITIZE_STRING);
    $email = filter_var($_POST["email"], FILTER_SANITIZE_STRING);
    $avatar = "default-avatar.jpg";

    if($name == "" || $password == "" || $email == "") {
        die();
    }
    $mysql->query("INSERT INTO `users` (`name`, `email`, `password`, `avatar`) VALUES('$name', '$email', '$password', '$avatar')");
    
    $result = $mysql->query("SELECT * FROM `users` WHERE `name` = '$name' AND `password` = '$password'");
    $user = $result->fetch_assoc();
    $_SESSION['id'] = $user['id'];
    $table_name = "contacts".$_SESSION['id'];
    $mysql->query("CREATE TABLE `$table_name` (user_id INT(11) NOT NULL, name VARCHAR(50) NOT NULL, email VARCHAR(50) NOT NULL UNIQUE)");
    header("Location: ../index.php");
}
$mysql->close();      