<?php

class VoertuigInstructeur extends BaseController
{

    private $voertuiginstructeurModel;

    public function __construct()
    {
        $this->voertuiginstructeurModel = $this->model('VoertuigInstructeurModel');
    }

    public function index()
    {
        $result = $this->voertuiginstructeurModel->getVoertuigInstructeur();
        var_dump($result);
        echo ("ewa");


        $rowsvoertuiginstructeur = "";
        foreach ($result as $voertuiginstructeur) {
            $rowsvoertuiginstructeur .= "<tr>
            <td>$voertuiginstructeur->Typevoertuig</td>
            <td>$voertuiginstructeur->Type</td>
            <td>$voertuiginstructeur->Kenteken</td>
            <td>$voertuiginstructeur->Bouwjaar</td>
            <td>$voertuiginstructeur->Brandstof</td>
            <td>$voertuiginstructeur->Rijbewijscategorie </td>
</tr>";
        }

        $data = [
            'title' => 'Top 5 Rijkste rijscholen ter wereld!',
            'rows' => $rowsvoertuiginstructeur
        ];

        $this->view('persoon2/persoon2', $data);
    }
}
