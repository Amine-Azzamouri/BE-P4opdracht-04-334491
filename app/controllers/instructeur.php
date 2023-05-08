<?php

class Instructeur extends BaseController
{

    private $instructeurModel;

    public function __construct()
    {
        $this->instructeurModel =  $this->model('instructeurModel');
    }

    public function index()
    {
        $result = $this->instructeurModel->getInstructeur();
        var_dump($result);

        $rowsinstructeur = "";
        foreach ($result as $Instructeur) {
            $rowsinstructeur .= "<tr>
            <td>$Instructeur->Typevoeferrtuig</td>
            <td>$Instructeur->Type</td>
            <td>$Instructeur->Kenteken</td>
            <td>$Instructeur->Bouwjaar</td>
            <td>$Instructeur->Brandstof</td>
            <td>$Instructeur->Rijbewijscategorie </td>
                    </tr>";
        }

        $data = [
            'title' => 'Top 5 Rijkste rijscholen ter wereld!',
            'rows' => $rowsinstructeur
        ];

        $this->view('persoon4/persoon4', $data);
    }
}
