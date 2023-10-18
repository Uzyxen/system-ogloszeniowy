<?php
    session_start();

    if(isset($_SESSION['logged']) && isset($_SESSION['imie']) && isset($_SESSION['nazwisko'])){
        echo json_encode(['logged' => $_SESSION['logged'], 'first_name' => $_SESSION['imie'], 'last_name' => $_SESSION['nazwisko']]);
    }

?>