<?php 
include 'db/db.php';

    // get All rooms
    $getAllRoomsQuery = "SELECT * FROM rooms";
    $getAllRoomsResult = $conn->query($getAllRoomsQuery);
?>