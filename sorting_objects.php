<?php

declare(strict_types=1);


$klant1 = new klant("nr1",3);
$klant2 = new klant("nr2",1);
$klant3 = new klant("nr3",2);

$klanten = [];

array_push($klanten,$klant1,$klant2,$klant3);

usort($klanten,function($a,$b) {
    return ($a->age > $b->age);
});

/* @var $testklant klant */
$testklant = $klanten[0];

var_dump($klanten);


