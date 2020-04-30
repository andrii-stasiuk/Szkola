<?php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "wedkarstwo";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO `zawody_wedkarskie`(`Karty_wedkarskie_id`, `Lowisko_id`, `data_zawodow`, `sedzia`) 
VALUES (0," . $_POST['lowisko'] . ",'" . $_POST['data'] . "','" . $_POST['sedzia'] . "')";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br />" . mysqli_error($conn);
}

mysqli_close($conn);
?>