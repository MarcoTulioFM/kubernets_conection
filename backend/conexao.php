<?php
$servername = getenv('HOST');
$username = 'root';
$password = getenv('MYSQL_ROOT_PASSWORD');
$database = getenv('MYSQL_DATABASE');

echo $servername;
echo $password;
echo $database;

// Criar conexão


$link = new mysqli($servername, $username, $password, $database);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

?>
