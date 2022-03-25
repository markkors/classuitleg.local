<?php
// required headers
header("Access-Control-Allow-Origin: *");
//header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST, GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers,Authorization, X-Requested-With");

$db = new database();

if(isset($url['query'])) {
    $querystring = $url['query'];
    parse_str($querystring,$a);

    if(isset($a['provincie'])) {
        // alle provincies ophalen en als JSON string teruggeven
        http_response_code(201);
        echo json_encode($db->getProvincies());
    }

    if(isset($a['gemeente'])) {
        // ophalen provincie ID
        $data = json_decode(file_get_contents("php://input"));
        // gemeentes bij provincie ophalen en als JSON string teruggeven
        http_response_code(201);
        echo json_encode($db->getGemeentes($data->id));
    }

}

