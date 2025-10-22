<?php 
    $name = "localhost";
    $user = "root";
    $pass = "";
    $db = "roomflow";
    $conn = new mysqli($name, $user, $pass, $db);

    if($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
        echo "Connection failed: " . $conn->connect_error;
    }
?>