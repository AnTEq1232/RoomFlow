<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Room Flow</title>
</head>
<body>
    <?php include 'includes/header.php'; ?>
    <?php include 'db/db.php'; ?>
    <?php include 'api/getRooms.php'; ?>
    <main>
        <h2>Reserve Room</h2>
        <form id = "reserveForm">
            <label for="roomNumber">Room: </label>
            <select name="roomNumber" id="roomNumber">
                <?php 
                    while($row = $getAllRoomsResult->fetch_assoc()) {
                        echo '<option value="' . $row['id'] . '">' . $row['name'] . '</option>';
                    }
                ?>
            </select>
            <br>
            <label for = "data">Date: </label>
            <input name="data" type="date" id="data">
            <br>
            <label for = "startTime">Start Time: </label>
            <input name="startTime" type="time" id="startTime">
            <br>
            <label for = "endTime">End Time: </label>
            <input name="endTime" type="time" id="endTime">
            <br>
            <input type="submit" value="Reserve">
            <p id="error" style = "display: none;"></p>
        </form>
    </main>
    <script src="js/script.js"></script>
</body>
</html>