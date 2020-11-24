<!DOCTYPE html>
<html lang="pl-PL">
   <head>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="poradnia.css" type="text/css">
      <title>Poradnia</title>
   </head>
   <body>
      <div id="wrapper">
         <div class="baner">
            <h1>PORADNIA SPECJALISTYCZNA</h1>
         </div>
         <div class="lewy">
            <h3>LEKARZE SPECJALIŚCI</h3>
            <table border="1">
               <tr>
                  <td colspan="2">Poniedziałek</td>
               </tr>
               <tr>
                  <td>Anna Kowalska</td>
                  <td>otolaryngolog</td>
               </tr>
               <tr>
                  <td colspan="2">Wtorek</td>
               </tr>
               <tr>
                  <td>Jan Nowak</td>
                  <td>kardiolog</td>
               </tr>
            </table>
            <h3>LISTA PACJENTÓW</h3>
            <div>
				<?php
				$servername = "localhost";
				$username   = "root";
				$password   = "";
				$dbname     = "poradnia";

				$conn = mysqli_connect($servername, $username, $password, $dbname);
				if (!$conn) {
				    die("Connection failed: " . mysqli_connect_error());
				}

				$sql    = "SELECT id, imie, nazwisko, choroba FROM `pacjenci`";
				$result = mysqli_query($conn, $sql);

				$i = 1;
				if (mysqli_num_rows($result) > 0) {
				    while ($row = mysqli_fetch_array($result)) {
				        echo "$i $row[1] $row[2] $row[3]<br />\n";
				        $i++;
				    }
				} else {
				    echo "0 results";
				}

				mysqli_close($conn);
				?>
            </div>
            <br /><br />
            <form method="POST" action="pacjent.php">
               <label for="pacman">Podaj id:</label>
               <br/>
               <input type="number" id="pacman" name="pacman">
               <br/>
               <input type="submit" value="Pokaż szczegóły">
            </form>
         </div>
         <div class="prawy">
            <h2>KARTA PACJENTA</h2>
				<?php
				$conn = mysqli_connect($servername, $username, $password, $dbname);
				if (!$conn) {
				    die("Connection failed: " . mysqli_connect_error());
				}

				$sql    = 'SELECT imie, nazwisko, leki_przepisane, opis FROM `pacjenci` WHERE id='.$_POST['pacman'];
				$result = mysqli_query($conn, $sql);

				$i = 1;
				if (mysqli_num_rows($result) > 0) {
				    while ($row = mysqli_fetch_array($result)) {
				        echo "<p>Imię i nazwisko: $row[0] $row[1]</p>\n<p>Przepisane leki: $row[2]</p>\n<p>Opis choroby: $row[3]</p>\n";
				        $i++;
				    }
				} else {
				    echo "0 results";
				}

				mysqli_close($conn);
				?>
         </div>
         <div class="stopka">
            <p>utworzone przez: PESEL</p>
            <a href="kwerendy.txt">Kwerendy do pobrania</a>
         </div>
      </div>
   </body>
</html>