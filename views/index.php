<?php

//$db = new database();
$pc = new postcode();

$thomas = $pc->getStreet("3772WL");
$daan = $pc->getStreet("3832LD");
$memet = $pc->getStreet("3752JK");
printf("<br>Thomas woont in de straat %s",$thomas);
printf("<br>Daan woont in de straat %s",$daan);
printf("<br>Memet woont in de straat %s",$memet);


/*$klant_a = new klant("jantje",45);
$klant_b = new klant("Mohamad",19);


var_dump($klant_a);


$result = sprintf("<div>%s --- %s</div>",$klant_a->getname_ucase(),$klant_b->getname_ucase());*/






//echo functions::optellen(3,5);