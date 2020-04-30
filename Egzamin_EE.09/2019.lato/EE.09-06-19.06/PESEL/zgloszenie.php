<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ratownictwo";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = 'INSERT INTO `zgloszenia` VALUES (NULL, '.$_POST['zespol'].', '.$_POST['dyspozytor'].', \''.$_POST['adres'].'\', 0, \''.date('H:i:s').'\')';

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>