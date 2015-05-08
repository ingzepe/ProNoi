<?php

namespace Plantillas\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class CamposController extends AbstractActionController {

    public function indexAction() {
        if ($this->getServiceLocator()->get('AuthService')->hasIdentity()){
            return new ViewModel(array());
        }else{
            return $this->redirect()->toRoute('login');
        }
    }

}