<?php
    session_start();

    unset($_SESSION['logged']);

    echo json_encode(['message' => 'Wylogowano pomyślnie', 'logged' => false]);
?>