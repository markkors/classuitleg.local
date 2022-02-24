<?php
require_once ("includes/autoloader.php");




$request = $_SERVER['REQUEST_URI'];

//var_dump($request);



$url = parse_url($request);

//var_dump($url);

//echo __DIR__;

switch($url['path']) {
    case '':
        require __DIR__ . '/views/index.php';
        break;
    case '/':
        require __DIR__ . '/views/index.php';
        break;
    case '/over':
        require __DIR__ . '/views/about.php';
        break;
    case '/about':
        require __DIR__ . '/views/about.php';
        break;
    default:
        require __DIR__ . '/views/404.php';
        break;
}
