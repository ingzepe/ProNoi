<?php

namespace Demos\Controller;

use Application\Model\Application;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Zend\Session\Container;

class DemosController extends AbstractActionController
{

  public function indexAction()
  {
    if ($this->getServiceLocator()->get('AuthService')->hasIdentity()) {
      return new ViewModel(array(
      ));
    } else {
      return $this->redirect()->toRoute('login');
    }
  }

}