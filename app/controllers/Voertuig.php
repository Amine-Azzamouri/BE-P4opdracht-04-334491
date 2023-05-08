<?php

class Voertuig extends BaseController
{

    private $VoertuigModel;

    public function __construct()
    {
        $this->VoertuigModel =  $this->model('VoertuigModel');
    }

    public function index()
    {
        $result = $this->VoertuigModel->getVoertuig();
        //var_dump($result);


        $rowsVoertuig = "";
        foreach ($result as $Voertuig) {
            $rowsVoertuig .= "<tr>
                        <td>$Voertuig->id</td>
                        <td>$Voertuig->kenteken</td>
                        <td>$Voertuig->type</td>
                        <td>$Voertuig->bouwjaar</td>
                        <td>$Voertuig->brandstof</td>
                        <td>$Voertuig->typevoertuigid</td>
                        <td>$Voertuig->rijbewijscategorie </td>
                    </tr>";
        }

        $data = [
            'title' => 'Naam: Li Zhan    Datum in dienst: 2015-03-13    Aantal sterren: 3 ',
            'rows' => $rowsVoertuig
        ];

        $test = "bruh";

        $this->view('persoon1/persoon1', $data, $test);
    }
}
