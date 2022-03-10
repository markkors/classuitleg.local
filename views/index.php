<?php

//$db = new database();
$pc = new postcode();

$thomas = $pc->getStreet("3772WL");
$daan = $pc->getStreet("3832LD");
$memet = $pc->getStreet("3752JK");
//printf("<br>Thomas woont in de straat %s",$thomas);
//printf("<br>Daan woont in de straat %s",$daan);
//printf("<br>Memet woont in de straat %s",$memet);
$k = new klant($thomas,10);


?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <div><?=functions::MakeUpper($thomas)?></div>
    <div><?=$daan?></div>
    <div><?=$memet?></div>
    <div><?=functions::$test?></div>

</body>
</html>
