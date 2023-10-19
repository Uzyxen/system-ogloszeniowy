<?php
    session_start();

    require_once 'database.php';

    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        if(!isset($_SESSION['logged'])) {
            $_POST = json_decode(file_get_contents('php://input'), true);

            if(isset($_POST['login']) && isset($_POST['password'])){
                $login = $_POST['login'];
                $password = $_POST['password'];
        
                $query = $db->prepare('SELECT * FROM uzytkownicy WHERE login = :login AND password = :password');
        
                $query->bindValue(':login', $login, PDO::PARAM_STR);
                $query->bindValue(':password', $password, PDO::PARAM_STR);
                $query->execute();
    
                $count = $query->rowCount();
        
                if($count > 0){
                    $user = $query->fetch(PDO::FETCH_ASSOC);
                    $_SESSION['logged'] = true;
                    $_SESSION['imie'] = $user['imie'];
                    $_SESSION['nazwisko'] = $user['nazwisko'];
    
                    echo json_encode(['data' => [
                        'logged' => $_SESSION['logged'],
                        'first_name' => $_SESSION['imie'],
                        'last_name' => $_SESSION['nazwisko']
                    ]]);

                }else echo json_encode('Nie znaleziono użytkownika');
            } 
        }
        else echo json_encode('Jesteś już zalogowany');
    }
?>