<?php 
session_start();
include('./resources/dbconfig/dbconfig.php');

if(empty($_SESSION)) {header('Location: ./pages/authorization.php');}

$user_id = $_SESSION['id'];
$mysql = new mysqli($host, $db_user, $db_password, $db_name);
$result = $mysql->query("SELECT `name`, `email`, `avatar` FROM `users` WHERE `id` = '$user_id'");
if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();
    $name = $user['name'];
    $avatar =  $user['avatar'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>WebChat</title>
</head>
<body>
    <header id="<?php echo$user_id?>">
        <div class="logo">
            <img class="logotype" src="./resources/images/logo.png">
            <p>WebChat</p>
        </div>
        <div class="nav">
            <form action="" method="post">
                <button name="select" value="profile" type="submit">Профиль</button>
                <button name="select" value="contacts" type="submit">Контакты</button>
                <button name="select" value="groups" type="submit">Группы</button>
                <button name="select" value="exit" type="submit">Выход</button>
            </form>
        </div>
        <div class="user">
            <?php echo "<img class='avatar' src='./resources/images/{$avatar}'"?>
            <p><?php echo $name ?></p>
        </div>    
    </header>
    <main>
    <?php 
           if(isset($_POST['select']))
            switch($_POST['select']){
                case'profile': 
                    include('./pages/profile.html');
                    break;
                case'contacts': 
                    include('./pages/contacts.html');
                    break;
                case'groups': 
                    include('./pages/groups.html');
                    break; 
                case'exit': 
                    $_SESSION = array();
                    header('Location: ./pages/authorization.php');
                    break;           
            }
        ?>
    </main>
</body>
</html>