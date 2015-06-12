<?php

namespace Reportes\Controller;

use Application\Model\Application;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Zend\Session\Container;

class ReportesController extends AbstractActionController
{

  protected $_controlReporteTable;

  public function getCurrentUser()
  {
    $session = new Container('user');
    return $session->user;
  }

  public function getControlReporteTable()
  {
    if (!$this->_controlReporteTable) {
      $sm = $this->getServiceLocator();
      $this->_controlReporteTable = $sm->get('SanAuth\Model\ControlReporteTable');
    }
    return $this->_controlReporteTable;
  }

  public function indexAction()
  {
    if ($this->getServiceLocator()->get('AuthService')->hasIdentity()) {
      $id = $this->params()->fromQuery('id');
      $control_reporte = $this->fetchAllPermisosByIdPlantillaAndIdUsuarioOrTipoEmpleado($id);
      return new ViewModel(array(
        'id' => $id,
        'control_reporte' => $control_reporte,
      ));
    } else {
      return $this->redirect()->toRoute('login');
    }
  }

  public function fetchAllPermisosByIdPlantillaAndIdUsuarioOrTipoEmpleado($id_plantilla)
  {
    $user = $this->getCurrentUser();

    $response = Application::CONTROL_REPORTE_CONSULTAR;

    $id_usuario_responsable = $user['id'];
    $id_tipo_empleado_responsable = $user['id_tipo_empleado'];

    $permisos = $this->getControlReporteTable()->fetchByIdPlantillaAndIdUsuario($id_plantilla, $id_usuario_responsable);
    $count = count($permisos);
    if ($count < 1) {
      $permisos = $this->getControlReporteTable()->fetchByIdPlantillaAndTipoEmpleado($id_plantilla, $id_tipo_empleado_responsable);
      $count = count($permisos);
      if ($count > 0) {
        $response = $permisos[0]['id_cat_control_reporte'];
      }
    } else {
      $response = $permisos[0]['id_cat_control_reporte'];
    }

    return $response;
  }

}