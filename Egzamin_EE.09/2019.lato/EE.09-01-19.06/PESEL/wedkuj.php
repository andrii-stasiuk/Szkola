<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="UTF-8">
    <title>Wędkujemy</title>
    <link rel="stylesheet" href="styl_1.css" type="text/css">
</head>

<body>
    <div id="wrapper">
        <div class="baner">
            <h1>Portal dla wędkarzy</h1>
		</div>
        <div class="lewy">
            <h2>Ryby drapieżne naszych wód</h2>
            <ul>
				<?php
				$servername = "localhost";
				$username = "root";
				$password = "";
				$dbname = "wedkowanie";

				$conn = mysqli_connect($servername, $username, $password, $dbname);
				if (!$conn) {
				    die("Connection failed: " . mysqli_connect_error());
				}

				$sql = "SELECT `nazwa`, `wystepowanie` FROM `ryby` WHERE `styl_zycia` = 1";
				$result = mysqli_query($conn, $sql);

				if (mysqli_num_rows($result) > 0) {
				    while($row = mysqli_fetch_array($result)) { // or alternative: mysqli_fetch_assoc($result)
				        echo "<li>$row[0], występowanie: $row[1]</li>\n";
				    }
				} else {
				    echo "0 results";
				}

				mysqli_close($conn);
				?>
            </ul>
        </div>
        <div class="prawy">
            <img src="ryba1.jpg" alt="Sum" />
            <br />
            <a href="kwerendy.txt">Pobierz kwerendy</a>
        </div>
        <div class="stopka">
            <p>Stronę wykonał: PESEL</p>
        </div>
    </div>
</body>

</html>