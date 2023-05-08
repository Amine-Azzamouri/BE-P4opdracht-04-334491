<?php

class TypeVoertuig extends BaseController
{

    private $TypeVoertuigModel;

    public function __construct()
    {
        $this->TypeVoertuigModel =  $this->model('TypeVoertuigModel');
    }

    public function index()
    {

        $result = $this->TypeVoertuigModel->getTypeVoertuig();
        var_dump($result);


        $rowstypevoertuig = "";
        foreach ($result as $typevoertuig) {
            $rowstypevoertuig .= "<tr>
            <td>$typevoertuig->Typevoertuig</td>
            <td>$typevoertuig->Type</td>
            <td>$typevoertuig->Kenteken</td>
            <td>$typevoertuig->Bouwjaar</td>
            <td>$typevoertuig->Brandstof</td>
            <td>$typevoertuig->Rijbewijscategorie </td>
                    </tr>";
        }

        $data = [
            'title' => 'Top 5 Rijkste rijscholen ter wereld!',
            'rows' => $rowstypevoertuig
        ];

        $this->view('persoon3/persoon3', $data);
    }
}
