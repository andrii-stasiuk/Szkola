<!DOCTYPE html>
<html lang="pl-PL">
   <head>
      <meta charset="UTF-8">
      <title>Prodigy fan site</title>
      <link rel="stylesheet" href="style.css" type="text/css">
      <script src="script.js"></script>
   </head>
   <body>
      <div id="wrapper">
         <div class="baner">
            <a href="?page=index"><img src="/images/logo.png" alt="Prodigy" /></a>
         </div>
         <div class="lewy">
            <?php
               if ( isset($_GET['page']) ) $page = $_GET['page'];
               elseif ( isset($_POST['page']) ) $page = $_POST['page'];
               else $page = '';
               $pages = array('index','history','concerts','gallery','discography','video');
               if ( !in_array($page, $pages) ) $page = 'index';
               $page_file = 'pages/'.$page.'.html';
               if ( file_exists($page_file) ) include_once $page_file;
               else echo 'Nie znaleziono';
               ?>
         </div>
         <div class="prawy">
            <h2>..::MENU::..</h2>
            <ul>
               <li><a href="?page=index">Prodigy</a></li>
               <li><a href="?page=history">historia</a></li>
               <li><a href="?page=concerts">koncerty</a></li>
               <li><a href="?page=gallery">galeria</a></li>
               <li><a href="?page=discography">dyskografia</a></li>
               <li><a href="?page=video">teledyski</a></li>
            </ul>
         </div>
         <div class="stopka">
            <p>&copy; 2020 Andrii Stasiuk</p>
         </div>
      </div>
   </body>
</html>