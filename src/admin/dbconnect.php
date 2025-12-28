<?php
$dns = 'mysql:host=db;dbname=test_db;charset=utf8mb4';
$user = 'root';
$password = 'root';

try {
    $dbh = new PDO($dns, $user, $password);
    // echo 'Connection successful';
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}