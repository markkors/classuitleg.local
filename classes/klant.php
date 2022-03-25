<?php

class klant
{
    private $location;
    public $naam;
    public $adres;
    public $age;

    public function __construct(string $n,int $a)
    {
        $this->age=$a;
        $this->naam=$n;

    }

    public function getname_ucase() : string
    {
        return strtoupper($this->naam);
    }

}