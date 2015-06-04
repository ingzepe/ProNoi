<?php

namespace Reportes\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class ReporteController extends AbstractActionController
{

  protected $_reporteTable;
  protected $_contenidoReporteTable;
  protected $_plantillaTable;
  protected $_controlTipoEmpleadoTable;

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

  public function getControlTipoEmpleadoTable()
  {
    if (!$this->_controlTipoEmpleadoTable) {
      $sm = $this->getServiceLocator();
      $this->_controlTipoEmpleadoTable = $sm->get('SanAuth\Model\ControlTipoEmpleadoTable');
    }
    return $this->_controlTipoEmpleadoTable;
  }

  public function indexAction()
  {
    if ($this->getServiceLocator()->get('AuthService')->hasIdentity()) {
      $id = $this->params()->fromQuery('id');
      $id_plantilla = $this->params()->fromQuery('id_plantilla');
      $plantilla = $this->getPlantillaTable()->fetch($id_plantilla);
      return new ViewModel(array(
        'id' => $id,
        'id_plantilla' => $id_plantilla,
        'id_tipo_empleado' => $plantilla['id_tipo_empleado'],
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
    $reportes = $this->getReporteTable()->fetchAll($id_plantilla);
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
        $reporte = new \Reportes\Model\Entity\ContenidoReporte();
        $reporte->setIdReporte($id_reporte);
        $reporte->setIdEmpleado($content[$i][1]);
        $reporte->setOrden($j);
        $reporte->setValor(trim($content[$i][$j]));
        if ($i != 0) {
          if (!$last_inserted = $this->getContenidoReporteTable()->saveCampo($reporte)) {
            $status = false;
            break;
          }
        } else {
          if (!$last_inserted = $this->getContenidoReporteTable()->saveHeader($reporte)) {
            $status = false;
            break;
          }
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

  /************************************************** With Filters ****************************************************************/

  public function fetchAllByIdTipoEmpleadoAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $post_data = $request->getPost();

    $response = $this->getResponse();

    $id_usuario = $post_data['id_usuario'];

    $control = $this->getControlTipoEmpleadoTable()->fetch($id_usuario);
//        print_r($control);
    $count = count($control);
    if ($count < 1) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => array())));
    } else {
      $ids = array();
      for ($i = 0; $i < $count; $i++) {
        $ids[$i] = $control[$i]['id_tipo_empleado'];
      }
      $plantillas = $this->getPlantillaTable()->fetchAllByIdTipoEmpleado($ids);
//            print_r($plantillas);
      $count = count($plantillas);
      if ($count < 1) {
        $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => array())));
      } else {
        $ids2 = array();
        for ($i = 0; $i < $count; $i++) {
          $ids2[$i] = $plantillas[$i]['id'];
        }
        $reportes = $this->getReporteTable()->fetchAllInIdPlantillas($ids2);
//        print_r($reportes);
        $count = count($reportes);
        if ($count < 1) {
          $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => array())));
        } else {
          $reportes = \Zend\Json\Json::encode($reportes);
          $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $reportes)));
        }
        $plantillas;
      }
    }

    return $response;
  }

}