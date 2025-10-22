<?php
    include 'db/db.php';
    header('Content-Type: application/json');
    error_reporting(0); // wyłącza błędy w HTML

    $room = $_GET['room'];
    $date = $_GET['date'];

    if (!$room || !$date) {
        echo json_encode(["error" => "Brak parametrów"]);
        exit;
    }

    $sql = "SELECT start_time, end_time FROM reservations WHERE room_id = $room AND date = '$date'";
    $result = $conn->query($sql);

    $reservations = [
        'start_time' => $result->fetch_assoc()['start_time'],
        'end_time' => $result->fetch_assoc()['end_time']
    ]

    echo json_encode($reservations);

    $conn->close();
?>
