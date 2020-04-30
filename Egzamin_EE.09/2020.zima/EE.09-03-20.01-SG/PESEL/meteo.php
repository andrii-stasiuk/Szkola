<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="UTF-8">
    <title>Prognoza pogogy Poznań</title>
    <link rel="stylesheet" href="styl4.css" type="text/css">
</head>

<body>
    <div id="wrapper">
        <div class="b-lewy">
            <p>maj, 2019r.</p>
        </div>
        <div class="b-srodkowy">
            <h2>Prognoza dla Poznania</h2></div>
        <div class="b-prawy">
            <img src="logo.png" alt="prognoza" />
        </div>

        <div class="lewy">
            <a href="kwerendy.txt">Kwerendy</a>
        </div>
        <div class="prawy">
            <img src="obraz.jpg" alt="Polska, Poznań" />
        </div>

        <div class="glowny">
            <table>
                <tr>
                    <th>Lp.</th>
                    <th>DATA</th>
                    <th>NOC - TEMPERATURA</th>
                    <th>DZIEŃ - TEMPERATURA</th>
                    <th>OPADY [mm/h]</th>
                    <th>CIŚNIENIE [hPa]</th>
                </tr>
				<?php
				$servername = "localhost";
				$username   = "root";
				$password   = "";
				$dbname     = "prognoza";

				$conn = mysqli_connect($servername, $username, $password, $dbname);
				if (!$conn) {
				    die("Connection failed: " . mysqli_connect_error());
				}

				$sql    = "SELECT * FROM `pogoda` WHERE `miasta_id` = 2 ORDER BY `data_prognozy` DESC";
				$result = mysqli_query($conn, $sql);

				$i = 1;
				if (mysqli_num_rows($result) > 0) {
				    while ($row = mysqli_fetch_array($result)) {
				        echo "<tr><td>$i</td><td>$row[2]</td><td>$row[3]</td><td>$row[4]</td><td>$row[5]</td><td>$row[6]</td></tr>\n";
				        $i++;
				    }
				} else {
				    echo "0 results";
				}

				mysqli_close($conn);
				?>
            </table>
        </div>

        <div class="stopka">
            <p>Stronę wykonał: PESEL</p>
        </div>
    </div>
</body>

</html>