<?php
session_start(); // начало сессии: если сессии еще нет 
// (не пришел Cookie "PHPSESSID" или нет файла сессии, 
//  соответствующего значению cookie "PHPSESSID"), то:
//  1) генерируется уникальный идентификатор сессии;
//  2) устанавливается Cookie "PHPSESSID" со значением этого идентификатора
//  3) создается файл сессии с соответствующим идентификатору именем
//  4) инициализируется суперглобальный массив $_SESSION, который проецируется на файл сессии
//--- конфигурационные параметры ---
$db_drivername = "mysql";
$hostname = "localhost:8889";
$dbname = "business";
$username = "root";
$password = "root";
//--- Создание PDO для соединения с сервером БД ---
$pdo = new PDO("{$db_drivername}:host={$hostname};dbname={$dbname}", $username, $password);
//--- 1 параметр PDO: "mysql:host=localhost;dbname=weblabdb"
//--- 2 параметр PDO: "root"
//--- 3 параметр PDO: ""
$pdo->query("SET CHARACTER SET utf8"); // установка кодировки символов для текущего соединения с MySQL Server

require_once 'blocks/auth.php';
?>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title></title>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="style_ie.css" type="text/css" media="screen" />
  </head>
  <body>
    <div id="page">
      <div id="page-top">
        <div id="page-bottom">
          <div id="header">
            <?php include 'blocks/header.php'; include 'blocks/auth_form.php'; ?>
          </div>
          <div id="main">
            <div id="sidebar">
              <?php include 'blocks/sidebar.php'; ?>
            </div>
            <div id="content">
              <?php
                $url = '\'' . parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH) . '\'';
                $menu_item_result = $pdo->query("SELECT * FROM  `page` WHERE url=" . $url);
                if ($menu_item_result->rowCount() > 0) {
                    $menu_item = $menu_item_result->fetch(PDO::FETCH_ASSOC);
                    echo $menu_item['content'];
                } else {
                    echo 'Неверный URL!!!';
                }
                ?>
            </div>
            <div class="clear"></div>
          </div>
          <div id="footer">  <?php include 'blocks/footer.php'; ?></div>
        </div>
      </div>
    </div>
  </body>
</html>
