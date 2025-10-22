<?php 
    include 'db/db.php';

    header('Content-Type: application/json');
    
    $room = $_GET['room'];
    $date = $_GET['date'];  

    if(!$room || !$date) {
        echo json_encode(array('error' => 'Missing room or date parameter'));
        exit;
    }

    $getReservationQuery = "SELECT start_time, end_time FROM reservations WHERE room = ? AND date = ?";
    
    $stmt = $conn->prepare($getReservationQuery);
    $stmt->bind_param("ss", $room, $date);
    $stmt->execute();
    $result = $stmt->get_result();

    $reservation = [];

    while($row = $result->fetch_assoc()) {
        $reservation[] = [
            'start_time' => $row['start_time'],
            'end_time' => $row['end_time']
        ]
    }
    echo json_encode($reservation);

    $stmt->close();
    $conn->close();

?>