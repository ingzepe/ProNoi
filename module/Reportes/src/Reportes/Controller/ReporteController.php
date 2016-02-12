<?php

namespace Reportes\Controller;

use Application\Model\Application;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Zend\Session\Container;

class ReporteController extends AbstractActionController
{

  protected $_reporteTable;
  protected $_contenidoReporteTable;
  protected $_plantillaTable;
  protected $_controlTipoEmpleadoTable;
  protected $_controlReporteTable;

  public function getCurrentUser(){
    $session = new Container('user');
    return $session->user;
  }

  public function getReporteTable()
  {
    if (!$this->_reporteTable) {
      $sm = $this->getServiceLocator();
      $this->_reporteTable = $sm->get('Reportes\Model\ReporteTable');
    }
    return $this->_reporteTable;
  }

  public function getContenidoReporteTable()
  {
    if (!$this->_contenidoReporteTable) {
      $sm = $this->getServiceLocator();
      $this->_contenidoReporteTable = $sm->get('Reportes\Model\ContenidoReporteTable');
    }
    return $this->_contenidoReporteTable;
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
      $id_plantilla = $this->params()->fromQuery('id_plantilla');
      $plantilla = $this->getPlantillaTable()->fetch($id_plantilla);
      $control_reporte = $this->fetchAllPermisosByIdPlantillaAndIdUsuarioOrTipoEmpleado($id_plantilla);
      return new ViewModel(array(
        'id' => $id,
        'id_plantilla' => $id_plantilla,
        'id_tipo_empleado' => $plantilla['id_tipo_empleado'],
        'control_reporte' => $control_reporte,
      ));
    } else {
      return $this->redirect()->toRoute('login');
    }
  }

  public function fetchAllByIdPlantillaAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id_plantilla = $post_data['id_plantilla'];
//        $id_plantilla = $this->params()->fromQuery('id_plantilla');
    $reportes = $this->getReporteTable()->fetchAllByIdPlantilla($id_plantilla);
    $count = count($reportes);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $reportes = \Zend\Json\Json::encode($reportes);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $reportes)));
    }
    return $response;
  }

  public function fetchAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_reporte'];
    if (!$reporte = $this->getReporteTable()->fetch($id)) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $reporte = \Zend\Json\Json::encode($reporte);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $reporte)));
    }
    return $response;
  }

  public function checkNameAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_reporte'];
    $id_plantilla = $post_data['id_plantilla'];
    $nombre = $post_data['nombre'];
    $reporte = $this->getReporteTable()->fetchByPlantillaIdAndName($id_plantilla, $nombre);
    if ($reporte["id"] == 0) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else if ($id == $reporte["id"]) {
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

    $reporte = new \Reportes\Model\Entity\Reporte();
    $reporte->setId($post_data['id_reporte']);
    $reporte->setIdPlantilla($post_data['id_plantilla']);
    $reporte->setNombre($post_data['nombre']);
    $reporte->setDescripcion($post_data['descripcion']);
    $reporte->setPeriodo($post_data['periodo']);

    if (!$reporte_id = $this->getReporteTable()->save($reporte))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      if (!$reporte = $this->getReporteTable()->fetch($reporte_id)) {
        $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
      } else {
        $reporte = \Zend\Json\Json::encode($reporte);
        $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $reporte)));
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
    $id = $post_data['id_reporte'];
    if (!$this->getReporteTable()->removeReporte($id))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      $response->setContent(\Zend\Json\Json::encode(array('status' => true)));
    }
    return $response;
  }

  public function saveReporteAction()
  {

//        $writer = new \Zend\Log\Writer\Stream('pronoi.log');
//        $logger = new \Zend\Log\Logger();
//        $logger->addWriter($writer);

    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();

    $id_reporte = $post_data['id_reporte'];
    $content = $post_data['content'];
//        $logger->info($content);

    $status = true;

    $this->getContenidoReporteTable()->removeAll($id_reporte);
    for ($i = 0; $i < count($content); $i++) {
      for ($j = 0; $j < count($content[$i]); $j++) {
        $contenido = new \Reportes\Model\Entity\ContenidoReporte();
        $contenido->setIdReporte($id_reporte);
        $contenido->setIdEmpleado($content[$i][1]);
        $contenido->setOrden($j);
        $contenido->setValor(trim($content[$i][$j]));
        if ($i != 0) {
          if (!$last_inserted = $this->getContenidoReporteTable()->saveCampo($contenido)) {
            $status = false;
            break;
          }
        } else {
          if (!$last_inserted = $this->getContenidoReporteTable()->saveHeader($contenido)) {
            $status = false;
            break;
          }
        }
        $reporte = new \Reportes\Model\Entity\Reporte();
        $reporte->setId($id_reporte);
        $reporte->setIdEstado(Application::REPORTE_ESTADO_COMPLETADO);
        if (!$this->getReporteTable()->updateEstado($reporte))
          $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        else {
          $response->setContent(\Zend\Json\Json::encode(array('status' => true)));
        }
      }
      if (!$status) {
        break;
      }
    }

    $response->setContent(\Zend\Json\Json::encode(array('status' => $status)));

    return $response;
  }

  public function fetchAllContentAction()
  {

    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();

    $id_reporte = $post_data['id_reporte'];
    $result = $this->getContenidoReporteTable()->fetchAll($id_reporte);
    $count = count($result);

    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {

      $last_id_empleado = 0;
      $row = 0;
      for ($i = 0; $i < count($result); $i++) {
        $id_empleado = $result[$i]['id_empleado'];
        $orden = $result[$i]['orden'];
        if (isset($id_empleado)) {
          if ($id_empleado != $last_id_empleado) {
            $row++;
          }
          $content[$row][$orden] = $result[$i]['valor'];
        } else {
          $content[0][$orden] = $result[$i]['valor'];
        }
        $last_id_empleado = $id_empleado;
      }

      if (isset($content)) {
        $reportes = \Zend\Json\Json::encode($content);
      } else {
        $reportes = \Zend\Json\Json::encode(array());
      }

      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $reportes)));
    }
    return $response;
  }

  public function cambiarEstadoReporteAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();

    $id_reporte = $post_data['id_reporte'];
    $id_estado = $post_data['id_estado'];
    $comentarios = $post_data['comentarios'];

    $reporte = new \Reportes\Model\Entity\Reporte();
    $reporte->setId($id_reporte);
    $reporte->setIdEstado($id_estado);
    $reporte->setComentarios($comentarios);

    if (!$this->getReporteTable()->updateEstado($reporte))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      $response->setContent(\Zend\Json\Json::encode(array('status' => true)));
    }

    return $response;
  }

  /************************************************** By Roles ****************************************************************/

  public function fetchAllPermisosByIdUsuarioAndTipoEmpleadoAction()
  {
    $session = new Container('user');
    $user = $session->user;

    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
//    $id_usuario_responsable = $this->params()->fromQuery('id_usuario_responsable');
//    $id_tipo_empleado_responsable = $this->params()->fromQuery('id_tipo_empleado_responsable');
    $id_usuario_responsable = $user['id'];
    $id_tipo_empleado_responsable = $user['id_tipo_empleado'];

//    $id_plantilla = $post_data['id_plantilla'];
    $permisos = $this->getControlReporteTable()->fetchAllByIdUsuarioAndTipoEmpleado($id_usuario_responsable, $id_tipo_empleado_responsable);
    $count = count($permisos);
    if ($count < 1) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => array())));
    } else {
      $ids = array();
      for ($i = 0; $i < $count; $i++) {
        $ids[$i] = $permisos[$i]['id_plantilla'];
      }
      $reportes = $this->getReporteTable()->fetchAllInIdPlantillas($ids);
      $count = count($reportes);
      if ($count < 1) {
        $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => array())));
      } else {
        $reportes = \Zend\Json\Json::encode($reportes);
        $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $reportes)));
      }
    }

    return $response;
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