<?php
    session_start();

    require_once 'database.php';

    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        $_POST = json_decode(file_get_contents('php://input'), true);

        if(isset($_POST['data'])){
            $email = $_POST['data'];
    
            $query = $db->prepare('SELECT * FROM uzytkownicy WHERE email = :email');
    
            $query->bindValue(':email', $email, PDO::PARAM_STR);
            $query->execute();

            $count = $query->rowCount();
    
            if($count > 0){    
                echo json_encode('true');
            }else{
                echo json_encode('false');
            }
        } 
    }
?>