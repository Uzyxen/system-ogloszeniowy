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
                    $_SESSION['opis'] = $user['opis'];
                    $_SESSION['numer_telefonu'] = $user['numer_telefonu'];
                    $_SESSION['email'] = $user['email'];
                    $_SESSION['stanowisko'] = $user['stanowisko'];
                    $_SESSION['plec'] = $user['plec'];
                    $_SESSION['wiek'] = $user['wiek'];
                    $_SESSION['kraj'] = $user['kraj'];
    
                    echo json_encode(['data' => [
                        'logged' => $_SESSION['logged'],
                        'first_name' => $_SESSION['imie'],
                        'last_name' => $_SESSION['nazwisko'],
                        'description' => $_SESSION['opis'],
                        'phone_number' => $_SESSION['numer_telefonu'],
                        'email' => $_SESSION['email'],
                        'position' => $_SESSION['stanowisko'],
                        'gender' => $_SESSION['plec'],
                        'age' => $_SESSION['wiek'],
                        'country' => $_SESSION['kraj']
                    ]]);

                }else echo json_encode('Nie znaleziono użytkownika');
            } 
        }
        else echo json_encode('Jesteś już zalogowany');
    }
?>