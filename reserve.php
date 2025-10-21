<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Flow</title>
</head>
<body>
    <?php 
        include("db.php");

        $GetAvailableRoomsQuery = "SELECT rooms.name, rooms.type, rooms.capacity, rooms.description 
                FROM rooms";
        $GetAvailableRooms = $conn->query($GetAvailableRoomsQuery);

        $GetAvailableEquipmentQuery = "SELECT equipment.name, equipment.status, equipment.description 
                FROM equipment
                WHERE equipment.status = 'active'";
        $GetAvailableEquipment = $conn->query($GetAvailableEquipmentQuery);
    ?>
    <header>
        <img src="image/logo.png" alt="logo">
    </header>
    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="reserve.php">Reserve</a></li>
            <li><a href="rooms.php">Rooms</a></li>
            <li><a href="equipment.php">Equipment</a></li>
            <li><a href="db.php">Users</a></li>
        </ul>
        <section class="userSection">
            <h3 class="userName">Nie zalogowano</h3>
            <p><a href="login.php">Zaloguj</a></p>
        </section>
    </nav>
    <main>
        <form id = "reservationFrom" action="reserve.php" method="post">
            <label for="room">Choose room: </label>
            <select name = "room" id = "room">
                <option value = "">-- Choose room --</option>
                <?php 
                    if($GetAvailableRooms->num_rows > 0){
                        while($row = $GetAvailableRooms->fetch_assoc()){
                            echo "<option value = '" . $row["name"] . "'>" . $row["name"] . "</option>";
                        }
                    }
                ?>
            </select><br>
            <label for="equipment">Choose equipment: </label>
            <select name="equipment[]" id="equipment" multiple>
                <option value="">-- Choose equipment --</option>
                <?php 
                    if($GetAvailableEquipment->num_rows > 0){
                        while($row = $GetAvailableEquipment->fetch_assoc()){
                            echo "<option value='" . $row["name"] . "'>" . $row["name"] . "</option>";
                        }
                    }
                ?>
            </select><br>
            <input type="date" name="date" id="date"><br>
            <input type="time" name="start_time" id="start_time"><br>
            <input type="time" name="end_time" id="end_time"><br>
            <input type="submit" value="Reserve">

            <p style="color: red; display: none;" id="error">Somekind of error</p>
        </form>
    </main>
    <script src="script.js"></script>
</body>
</html>