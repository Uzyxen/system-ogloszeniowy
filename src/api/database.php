<?php
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
?>