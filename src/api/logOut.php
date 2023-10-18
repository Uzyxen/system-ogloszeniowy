<?php
    session_start();

    unset($_SESSION['logged']);
    unset($_SESSION['imie']);
    unset($_SESSION['nazwisko']);

    echo json_encode(['message' => 'Wylogowano pomyślnie', 'logged' => false]);
?>