<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styl2.css" type="text/css">
    <title>Klub wędkowania</title>
</head>

<body>
    <div id="wrapper">
        <div class="baner">
            <h2>Wędkuj z nami!</h2>
        </div>
        <div class="lewy">
            <img src="ryba2.jpg" alt="Szczupak" />
        </div>
        <div class="prawy">
            <h3>Ryby spokojnego żeru (białe)</h3>
            <div>
				<?php
				$servername = "localhost";
				$username = "root";
				$password = "";
				$dbname = "wedkowanie";

				$conn = mysqli_connect($servername, $username, $password, $dbname);
				if (!$conn) {
				    die("Connection failed: " . mysqli_connect_error());
				}

				$sql = "SELECT `id`, `nazwa`, `wystepowanie` FROM `Ryby` WHERE `styl_zycia` = 2";
				$result = mysqli_query($conn, $sql);

				if (mysqli_num_rows($result) > 0) {
				    while($row = mysqli_fetch_array($result)) {  // or alternative: mysqli_fetch_assoc($result)
				        echo "$row[0]. $row[1], występuje w: $row[2]<br />\n";
				    }
				} else {
				    echo "0 results";
				}

				mysqli_close($conn);
				?>
			</div>
            <ol>
                <li><a href="https://wedkuje.pl/" target="_blank">Odwiedź także</a></li>
                <li><a href="http://www.pzw.org.pl/" target="_blank">Polski Związek Wędkarski</a></li>
            </ol>
        </div>
        <div class="stopka">
            <p>Stronę wykonał: PESEL</p>
        </div>
    </div>
</body>

</html>