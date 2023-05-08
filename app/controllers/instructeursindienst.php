<?php

class InstructeursInDienst extends BaseController
{

    private $instructeursindienstModel;

    public function __construct()
    {
        $this->instructeursindienstModel = $this->model('InstructeursInDienstModel');
    }

    public function index()
    {
        $result = $this->instructeursindienstModel->getInstructeursInDienst();
        //var_dump($result);


        $rowsinstructeursindienst = "";
        foreach ($result as $instructeursindienst) {
            $rowsinstructeursindienst .= "<tr>
    <td>$instructeursindienst->Id</td>
    <td>$instructeursindienst->Voornaam</td>
    <td>$instructeursindienst->Tussenvoegsel</td>
    <td>$instructeursindienst->Achternaam</td>
    <td>$instructeursindienst->Mobiel</td>
    <td>$instructeursindienst->DatumInDienst</td>
    <td>$instructeursindienst->AantalSterren</td>
    <td>
    <a href='http://www.rijschool.nl:8090/voertuig/index' </a> info
    </td>
</tr>";
        }

        $data3 = [
            'title' => 'Instructeurs In Dienst',
            'rows' => $rowsinstructeursindienst
        ];

        $this->view('Instructeur/Instructeur1', $data3);
    }
}
