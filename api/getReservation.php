<?php
    include 'db/db.php';
    
    header('Content-Type: application/json');
    
    $example = [
        "name" => "Antek",
        "age" => 18
    ];

    echo json_encode($example);

?>