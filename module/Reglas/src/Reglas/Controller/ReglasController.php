<?php

namespace Reglas\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Zend\Session\Container;

class ReglasController extends AbstractActionController {

    public function indexAction() {
        if ($this->getServiceLocator()->get('AuthService')->hasIdentity()){
            $id = $this->params()->fromQuery('id');
            return new ViewModel(array(
                'id' => $id,
            ));
        }else{
            return $this->redirect()->toRoute('login');
        }
    }

}