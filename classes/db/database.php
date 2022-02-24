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

    public function doedit() {

    }

    public function doedat() {

    }



}