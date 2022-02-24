<?php

class postcode extends database
{
    public function __construct()
    {
        // start de constructor van de database class
        parent::__construct();
    }

    /**
     * Welke straat hoort bij de ingevoerde postcode?
     * @param string $postcode
     * @return string
     */
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