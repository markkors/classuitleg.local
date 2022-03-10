<?php

class functions
{

    public static $test = "HALLO WERELD";

    public $iets;

    public static function optellen(int $a, int $b) {
        return $a+$b;
    }

    public static function MakeUpper(string $s) : string {

        return strtoupper($s);
    }

    public static function create_html_table(array $ar) : string {


    }

}