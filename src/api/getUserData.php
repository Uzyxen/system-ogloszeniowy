<?php
    session_start();

    if(isset($_SESSION['logged']) && isset($_SESSION['imie']) && isset($_SESSION['nazwisko'])){
        echo json_encode(['data' => [
            'logged' => $_SESSION['logged'], 
            'first_name' => $_SESSION['imie'], 
            'last_name' => $_SESSION['nazwisko']
            'description' => $_SESSION['opis'],
            'phone_number' => $_SESSION['numer_telefonu'],
            'email' => $_SESSION['email'],
            'position' => $_SESSION['stanowisko'],
            'gender' => $_SESSION['plec'],
            'age' => $_SESSION['wiek'],
            'country' => $_SESSION['kraj']
            ]]);
    }else{
        echo json_encode(['logged' => false]);
    }

?>