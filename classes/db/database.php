<?php

class database
{
    private $password = "MAUTLvw9Y5e9@Be";
    private $user = "pcu";
    private $db = "postcode_nl";
    private $host = "localhost";
    protected static $conn;

    public function __construct()
    {
        $this->createconnection();
    }

    protected function createconnection() {
        if(!isset(self::$conn)) {
            self::$conn  = new mysqli($this->host,$this->user,$this->password,$this->db);
        }

        if (!self::$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
    }


    public function getProvincies() : array {
        $result = [];
        $stmt = self::$conn->prepare("SELECT `id`,`Naam` FROM `provincie`");

        if($stmt->execute()) {
            $data_result = $stmt->get_result();
            while($row = $data_result->fetch_object()) {
                $p = new provincie();
                $p->id = $row->id;
                $p->naam = $row->Naam;
                array_push($result,$p);

            }
        }
        return $result;
    }

public function getGemeentes(int $id) : array {
    $result = [];
    $stmt = self::$conn->prepare("SELECT * FROM `gemeente` WHERE ID_provincie = ?;");
    $stmt->bind_param("i",$id);

    if($stmt->execute()) {
        $data_result = $stmt->get_result();
        while($row = $data_result->fetch_object()) {
            $g = new gemeente();
            $g->id = $row->id;
            $g->naam = $row->Naam;
            $g->provincie = $id;
            array_push($result,$g);

        }
    }
    return $result;
}


}