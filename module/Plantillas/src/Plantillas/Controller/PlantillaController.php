<?php

namespace Plantillas\Controller;

use Application\Model\Application;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Zend\Session\Container;

class PlantillaController extends AbstractActionController
{

  protected $_plantillaTable;
  protected $_controlReporteTable;

  public function getCurrentUser(){
    $session = new Container('user');
    return $session->user;
  }

  public function getPlantillaTable()
  {
    if (!$this->_plantillaTable) {
      $sm = $this->getServiceLocator();
      $this->_plantillaTable = $sm->get('Plantillas\Model\PlantillaTable');
    }
    return $this->_plantillaTable;
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
      return new ViewModel(array(
        'id' => $id,
      ));
    } else {
      return $this->redirect()->toRoute('login');
    }
  }

  public function fetchAll()
  {
    $this->layout('layout/json');
    $response = $this->getResponse();

    $plantillas = $this->getPlantillaTable()->fetchAll();
    $count = count($plantillas);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $plantillas = \Zend\Json\Json::encode($plantillas);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $plantillas)));
    }
    return $response;
  }

  public function fetchAllAction()
  {
    $user = $this->getCurrentUser();
    if($user['id_rol_usuario'] == Application::ROL_ADMINISTRADOR || $user['id_rol_usuario'] == Application::ROL_ADMINISTRADOR_PLANTILLAS){
      return $this->fetchAll();
    }else{
      $id_usuario_responsable = $user['id'];
      $id_tipo_empleado_responsable = $user['id_tipo_empleado'];
      return $this->fetchAllByPermisos($id_usuario_responsable, $id_tipo_empleado_responsable);
    }
  }

  public function fetchAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_plantilla'];
    if (!$plantilla = $this->getPlantillaTable()->fetch($id)) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $plantilla = \Zend\Json\Json::encode($plantilla);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $plantilla)));
    }
    return $response;
  }

  public function checkNameAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_plantilla'];
    $nombre = $post_data['nombre'];
    $plantilla = $this->getPlantillaTable()->fetchByName($nombre);
    if ($plantilla["id"] == 0) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else if ($id == $plantilla["id"]) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else {
      $response->setContent(\Zend\Json\Json::encode(false));
    }
    return $response;
  }

  public function updateAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();

    $plantilla = new \Plantillas\Model\Entity\Plantilla();
    $plantilla->setId($post_data['id_plantilla']);
    $plantilla->setIdTipoEmpleado($post_data['tipo_empleado']);
    $plantilla->setNombre($post_data['nombre']);
    $plantilla->setDescripcion($post_data['descripcion']);

    if (!$plantilla_id = $this->getPlantillaTable()->save($plantilla))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      if (!$plantilla = $this->getPlantillaTable()->fetch($plantilla_id)) {
        $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
      } else {
        $plantilla = \Zend\Json\Json::encode($plantilla);
        $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $plantilla)));
      }
    }
    return $response;
  }

  public function removeAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_plantilla'];
    if (!$this->getPlantillaTable()->removePlantilla($id))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      $response->setContent(\Zend\Json\Json::encode(array('status' => true)));
    }
    return $response;
  }

  /************************************************** Permisos ****************************************************************/

  public function fetchAllByPermisos($id_usuario_responsable, $id_tipo_empleado_responsable)
  {
    $this->layout('layout/json');
    $response = $this->getResponse();

    $permisos = $this->getControlReporteTable()->fetchAllByIdUsuarioAndTipoEmpleado($id_usuario_responsable, $id_tipo_empleado_responsable);
    $count = count($permisos);
    if ($count < 1) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => array())));
    } else {
      $ids = array();
      for ($i = 0; $i < $count; $i++) {
        $ids[$i] = $permisos[$i]['id_plantilla'];
      }
      $plantillas = $this->getPlantillaTable()->fetchAllByIds($ids);
      $count = count($plantillas);
      if ($count < 0) {
        $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
      } else {
        $plantillas = \Zend\Json\Json::encode($plantillas);
        $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $plantillas)));
      }
    }

    return $response;
  }

  public function fetchAllPermisosAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();

    $id_plantilla = $post_data['id_plantilla'];
    $permisos = $this->getControlReporteTable()->fetchAllByIdPlantilla($id_plantilla);
    $count = count($permisos);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $permisos = \Zend\Json\Json::encode($permisos);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $permisos)));
    }
    return $response;
  }

  public function savePermisosAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();

    $control = new \SanAuth\Model\Entity\ControlReporte();
    $control->setIdPlantilla($post_data['id_plantilla_permisos']);
    if ($post_data['id_usuario_responsable']) {
      $control->setIdUsuarioResponsable($post_data['id_usuario_responsable']);
    }
    if ($post_data['id_tipo_empleado_responsable']) {
      $control->setIdTipoEmpleadoResponsable($post_data['id_tipo_empleado_responsable']);
    }
    $control->setIdCatControlReporte($post_data['id_cat_control_reporte']);

    if (!$control_id = $this->getControlReporteTable()->save($control))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $control_id)));
    }
    return $response;
  }

  public function removePermisosAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id'];
    if (!$this->getControlReporteTable()->remove($id))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      $response->setContent(\Zend\Json\Json::encode(array('status' => true)));
    }
    return $response;
  }

}