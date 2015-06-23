<?php

namespace Asistencia\Controller;

use Application\Model\Application;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Zend\Session\Container;

class AsistenciaController extends AbstractActionController
{

  protected $_controlAsistenciaTable;
  protected $_asistenciaTable;

  public function getCurrentUser(){
    $session = new Container('user');
    return $session->user;
  }

  public function getControlAsistenciaTable()
  {
    if (!$this->_controlAsistenciaTable) {
      $sm = $this->getServiceLocator();
      $this->_controlAsistenciaTable = $sm->get('Asistencia\Model\ControlAsistenciaTable');
    }
    return $this->_controlAsistenciaTable;
  }

  public function getAsistenciaTable()
  {
    if (!$this->_asistenciaTable) {
      $sm = $this->getServiceLocator();
      $this->_asistenciaTable = $sm->get('Asistencia\Model\AsistenciaTable');
    }
    return $this->_asistenciaTable;
  }

  public function indexAction()
  {
    if ($this->getServiceLocator()->get('AuthService')->hasIdentity()) {
      return new ViewModel(array(
      ));
    } else {
      return $this->redirect()->toRoute('login');
    }
  }

  public function saveControlAsistenciaAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();

    $control = new \Asistencia\Model\Entity\ControlAsistencia();
    $control->setIdTipoEmpleado($post_data['tipo_empleado']);
    $control->setIdUsuario($post_data['id_usuario_responsable']);
    $control->setIdCatControlAsistencia($post_data['permisos']);

    if (!$control_id = $this->getControlAsistenciaTable()->save($control))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      if (!$control = $this->getControlAsistenciaTable()->fetch($control_id)) {
        $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
      } else {
        $control = \Zend\Json\Json::encode($control);
        $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $control)));
      }
    }
    return $response;
  }

  public function fetchAllControlAsistenciaByIdTipoEmpleadoAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id_tipo_empleado = $post_data['id_tipo_empleado'];

    $asistencias = $this->getControlAsistenciaTable()->fetchAllByIdTipoEmpleado($id_tipo_empleado);
    $count = count($asistencias);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $asistencias = \Zend\Json\Json::encode($asistencias);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $asistencias)));
    }
    return $response;
  }

  public function fetchAllControlAsistenciaByByIdUsuarioAction()
  {
    $this->layout('layout/json');
    $response = $this->getResponse();
    $user = $this->getCurrentUser();

    $asistencias = $this->getControlAsistenciaTable()->fetchAllByIdUsuario($user['id']);
    $count = count($asistencias);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $asistencias = \Zend\Json\Json::encode($asistencias);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $asistencias)));
    }
    return $response;
  }

  public function removeControlAsistenciaAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id'];
    if (!$this->getControlAsistenciaTable()->remove($id))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      $response->setContent(\Zend\Json\Json::encode(array('status' => true)));
    }
    return $response;
  }

  public function saveAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();

    $asistencias = $post_data['asistencias'];
    $status = true;

    for ($i = 0; $i < count($asistencias); $i++) {
      $asistencia = new \Asistencia\Model\Entity\Asistencia();
      $asistencia->setIdCatAsistencia($asistencias[$i]['asistencia']);
      $asistencia->setIdEmpleado($asistencias[$i]['id_empleado']);
      $asistencia->setFecha($asistencias[$i]['fecha']);
      if (!$control_id = $this->getAsistenciaTable()->removeAsistencia($asistencia)){
        $status = false;
      }else{
        if (!$control_id = $this->getAsistenciaTable()->save($asistencia)){
          $status = false;
        }
      }
    }

    if ($status)
      $response->setContent(\Zend\Json\Json::encode(array('status' => $status)));
    else {
      $response->setContent(\Zend\Json\Json::encode(array('status' => $status, 'data' => $control_id)));
    }

    return $response;
  }

}