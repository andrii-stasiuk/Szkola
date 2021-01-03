<!DOCTYPE html>
<html lang="pl-PL">
   <head>
      <meta charset="UTF-8">
      <title>Sklep z zaproszeniami</title>
      <link rel="stylesheet" href="style.css" type="text/css">
   </head>
   <body>
      <div id="wrapper">
         <div class="baner">
            <a href="?page=index"><img src="/images/logo.png" alt="Sklep z zaproszeniami" /></a>
         </div>
         <div class="lewy">
            <h2>MENU</h2>
            <ul>
               <li><a href="?page=index">STRONA GŁÓWNA</a></li>
               <li><a href="?page=invitations">ZAPROSZENIA</a></li>
               <li><a href="?page=contact">KONTAKT</a></li>
            </ul>
         </div>
         <div class="srodkowy">
            <?php
               if ( isset($_GET['page']) ) $page = $_GET['page'];
               elseif ( isset($_POST['page']) ) $page = $_POST['page'];
               else $page = '';
               $pages = array('index','invitations','contact');
               if ( !in_array($page, $pages) ) $page = 'index';
               $page_file = 'pages/'.$page.'.html';
               if ( file_exists($page_file) ) include_once $page_file;
               else echo 'Nie znaleziono strony';
               ?>
         </div>
         <div class="prawy">
            <h2>NOWOŚCI</h2>
            <script type="text/javascript">
			var a = Math.round(Math.random()*2);
			image = new Array();
			image[0]="/images/zapr1.jpg";
			image[1]="/images/zapr2.jpg";
			image[2]="/images/zapr3.jpg";
			document.write("<img src="+image[a]+" alt=\"zaproszenie\" />");
			</script>
         </div>
         <div class="stopka">
            <p>&copy; 2021 Andrii Stasiuk</p>
         </div>
      </div>
   </body>
</html>