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
        var_dump($result);


        $rowsinstructeursindienst = "";
        foreach ($result as $instructeursindienst) {
            $rowsinstructeursindienst .= "<tr>
            <td>$instructeursindienst->K</td>
            <td>$instructeursindienst->T</td>
            <td>$instructeursindienst->A</td>
            <td>$instructeursindienst->M</td>
            <td>$instructeursindienst->D</td>            
            <td>$instructeursindienst->A</td>            
            <td>
                <a href='" . URLROOT . "/instructeur/overzichtvoertuigen/$instructeursindienst->Id'>
                    <i class='bi bi-car-front'>info</i>
                </a>
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
