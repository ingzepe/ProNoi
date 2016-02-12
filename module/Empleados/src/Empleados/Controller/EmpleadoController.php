<?php

namespace Empleados\Controller;

use Application\Model\Application;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Zend\Log\Logger;
use Zend\Log\Writer\Stream;

class EmpleadoController extends AbstractActionController
{

  protected $_empleadoTable;
  protected $_tipoEmpleadoTable;
  protected $_asistenciaTable;

  public function logInfo($message)
  {
    $log = new Logger();
    $writer = new Stream('pronoi.log');
    $log->addWriter($writer);
    $log->log(Logger::INFO, $message);
  }

  public function getEmpleadoTable()
  {
    if (!$this->_empleadoTable) {
      $sm = $this->getServiceLocator();
      $this->_empleadoTable = $sm->get('Empleados\Model\EmpleadoTable');
    }
    return $this->_empleadoTable;
  }

  public function getTipoEmpleadoTable()
  {
    if (!$this->_tipoEmpleadoTable) {
      $sm = $this->getServiceLocator();
      $this->_tipoEmpleadoTable = $sm->get('Empleados\Model\TipoEmpleadoTable');
    }
    return $this->_tipoEmpleadoTable;
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
      $id = $this->params()->fromQuery('id');
      return new ViewModel(array(
        'id' => $id,
      ));
    } else {
      return $this->redirect()->toRoute('login');
    }
  }

  public function fetchAllAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $empleados = $this->getEmpleadoTable()->fetchAll();
    $count = count($empleados);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $empleados = \Zend\Json\Json::encode($empleados);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $empleados)));
    }
    return $response;
  }

  public function fetchAllByIdTipoEmpleadoAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id_tipo_empleado = $post_data['id_tipo_empleado'];

    $empleados = $this->getEmpleadoTable()->fetchAllByIdTipoEmpleado($id_tipo_empleado);
    $count = count($empleados);

    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $empleados = \Zend\Json\Json::encode($empleados);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $empleados)));
    }
    return $response;
  }

  public function fetchAllByIdTipoEmpleadoAndPeriodoAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id_tipo_empleado = $post_data['id_tipo_empleado'];
    $inicio = $post_data['inicio'];
    $fin = $post_data['fin'];
    $dias = (int)$post_data['dias'];

    $empleados = $this->getEmpleadoTable()->fetchAllByIdTipoEmpleado($id_tipo_empleado);
    $empleadosNo = count($empleados);

    $error = false;

    //$this->logInfo("empleadosNo: ".$empleadosNo);

    if ($empleadosNo < 0) {
      $error = true;
    } else {
      for($i=0; $i<$empleadosNo; $i++){
        $asistencias = $this->getAsistenciaTable()->fetchAllByIdEmpleadoAndPeriodo($empleados[$i]["id"], $inicio, $fin);
        $asistenciasNo = count($asistencias);
        //$this->logInfo("Empleado: ".$empleados[$i]["id"]." ".$asistenciasNo);
//        if ($asistenciasNo < $dias) {
        if ($asistenciasNo < 0) {
          $error = true;
          break;
        }else{
          $empleados[$i]["registro"] = $asistencias;
        }
      }

      if($error){
        $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
      }else{
        $empleados = \Zend\Json\Json::encode($empleados);
        $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $empleados)));
      }
    }
    return $response;
  }

  public function fetchAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_empleado'];
    if (!$empleado = $this->getEmpleadoTable()->fetch($id)) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $empleado = \Zend\Json\Json::encode($empleado);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $empleado)));
    }
    return $response;
  }

  public function checkNameAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_empleado'];
    $nombre = $post_data['nombre'];
    $empleado = $this->getEmpleadoTable()->fetchByName($nombre);
    if ($empleado["id"] == 0) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else if ($id == $empleado["id"]) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else {
      $response->setContent(\Zend\Json\Json::encode(false));
    }
    return $response;
  }

  public function checkIdMitrolAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_empleado'];
    $id_mitrol = $post_data['id_mitrol'];
    $empleado = $this->getEmpleadoTable()->fetchByIdMitrol($id_mitrol);
    if ($empleado["id"] == 0) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else if ($id == $empleado["id"]) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else {
      $response->setContent(\Zend\Json\Json::encode(false));
    }
    return $response;
  }

  public function checkIdRHAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_empleado'];
    $id_rh = $post_data['id_rh'];
    $empleado = $this->getEmpleadoTable()->fetchByIdRH($id_rh);
    if ($empleado["id"] == 0) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else if ($id == $empleado["id"]) {
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

    $empleado = new \Empleados\Model\Entity\Empleado();
    $empleado->setId($post_data['id_empleado']);
    $empleado->setIdTipoEmpleado($post_data['tipo_empleado']);
    $empleado->setIdUnidad($post_data['unidad_negocio']);
    $empleado->setNombre($post_data['nombre']);
    $empleado->setIdMitrol($post_data['id_mitrol']);
    $empleado->setIdRh($post_data['id_rh']);
    $empleado->setFechaIngreso($post_data['fecha_ingreso']);
    $empleado->setHorario($post_data['horario']);
    $empleado->setCampana($post_data['campana']);
    $empleado->setJefe($post_data['jefe']);
    $empleado->setSueldoDiario($post_data['sueldo_diario']);
    $empleado->setActivo($post_data['activo']);

    if (!$empleado_id = $this->getEmpleadoTable()->save($empleado))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      if (!$empleado = $this->getEmpleadoTable()->fetch($empleado_id)) {
        $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
      } else {
        $empleado = \Zend\Json\Json::encode($empleado);
        $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $empleado)));
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
    $id = $post_data['id_empleado'];
    if (!$this->getEmpleadoTable()->removeEmpleado($id))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      $response->setContent(\Zend\Json\Json::encode(array('status' => true)));
    }
    return $response;
  }

  public function fetchFirstAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id_tipo_empleado = $post_data['id_tipo_empleado'];

    if (!$empleado = $this->getEmpleadoTable()->fetchFirst($id_tipo_empleado)) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $empleado = \Zend\Json\Json::encode($empleado);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $empleado)));
    }
    return $response;
  }

  public function fetchAllTipoEmpleadoAction()
  {
    $this->layout('layout/json');
    $response = $this->getResponse();

    $tipos = $this->getTipoEmpleadoTable()->fetchAll();
    $count = count($tipos);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $tipos = \Zend\Json\Json::encode($tipos);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $tipos)));
    }
    return $response;
  }

  public function fetchAllTipoEmpleadoByIdUnidadAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id_unidad = $post_data['id_unidad'];

    $tipos = $this->getTipoEmpleadoTable()->fetchAllByIdUnidad($id_unidad);
    $count = count($tipos);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $tipos = \Zend\Json\Json::encode($tipos);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $tipos)));
    }
    return $response;
  }

}