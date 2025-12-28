<?php
require __DIR__ .'/dbconnect.php';

$users = $dbh->query("SELECT * FROM users")->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <p>open</p>
    <pre>
        <?php var_dump($users); ?>
    </pre>
    
</body>
</html>