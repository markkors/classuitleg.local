<?php

class postcode extends database
{


    public function __construct()
    {
        parent::__construct();
    }


    public function getStreet(string $postcode) : string {
        $result = null;
        $stmt = self::$conn->prepare("SELECT * FROM `postcode_data` WHERE `postcode` = ?");
        $stmt->bind_param("s",$postcode);
        if($stmt->execute()) {
           $data_result = $stmt->get_result();
           while($row = $data_result->fetch_object()) {
               $result = $row->Straat;
               break;
           }
        }
        return $result;
    }
}