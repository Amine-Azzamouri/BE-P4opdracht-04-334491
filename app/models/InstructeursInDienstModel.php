<?php

class InstructeursInDienstModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getInstructeursInDienst()
    {
        $sql = "SELECT Id
        ,Voornaam
        ,Tussenvoegsel
        ,Achternaam
        ,Mobiel
        ,DatumInDienst
        ,AantalSterren
 FROM   instructeur 
 ORDER BY AantalSterren DESC";

        $this->db->query($sql);
        return $this->db->resultSet();
    }
}
