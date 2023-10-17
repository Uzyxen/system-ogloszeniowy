<?php
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
    header('Access-Control-Allow-Headers: Content-Type');
    header('Content-Type: application/json');

    $host = 'localhost';
    $database = 'system_ogloszen';
    $username = 'root';
    $password = '';

    try{
        $db = new PDO("mysql:host=$host; dbname=$database; charset=UTF8", $username, $password); // połączenie z bazą za pomocą PDO
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }catch(PDOException $e){
        exit('Błąd bazy danych!');
    }

    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        $_POST = json_decode(file_get_contents('php://input'), true);

        if(isset($_POST['login']) && isset($_POST['password'])){
            $login = $_POST['login'];
            $password = $_POST['password'];
    
            $query = $db->prepare('SELECT user_id FROM uzytkownicy WHERE login = :login AND password = :password');
    
            $query->bindValue(':login', $login, PDO::PARAM_STR);
            $query->bindValue(':password', $password, PDO::PARAM_STR);
            $query->execute();
    
            $user = $query->fetch(PDO::FETCH_ASSOC);
    
            if($user){
                $user_id = $user['user_id'];
                echo json_encode($user_id);
            }else{
                echo json_encode('Uzytkownik nie znaleziony');
            }
        }
    }
?>