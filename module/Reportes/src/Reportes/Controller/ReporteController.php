<?php

namespace Reportes\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Plantillas\Controller\PlantillaController;

class ReporteController extends AbstractActionController {

    protected $_reporteTable;
    protected $_plantillaTable;

    public function getReporteTable() {
        if (!$this->_reporteTable) {
            $sm = $this->getServiceLocator();
            $this->_reporteTable = $sm->get('Reportes\Model\ReporteTable');
        }
        return $this->_reporteTable;
    }

    public function getPlantillaTable() {
        if (!$this->_plantillaTable) {
            $sm = $this->getServiceLocator();
            $this->_plantillaTable = $sm->get('Plantillas\Model\PlantillaTable');
        }
        return $this->_plantillaTable;
    }

    public function indexAction() {
        if ($this->getServiceLocator()->get('AuthService')->hasIdentity()){
            $id = $this->params()->fromQuery('id');
            $id_plantilla = $this->params()->fromQuery('id_plantilla');
            $plantilla = $this->getPlantillaTable()->fetch($id_plantilla);
            return new ViewModel(array(
                'id' => $id,
                'id_plantilla' => $id_plantilla,
                'id_tipo_empleado' => $plantilla['id_tipo_empleado'],
            ));
        }else{
            return $this->redirect()->toRoute('login');
        }
    }

    public function fetchAllAction() {
        $this->layout( 'layout/json' );
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

    public function fetchAction() {
        $this->layout( 'layout/json' );
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

    public function checkNameAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();
        $id = $post_data['id_reporte'];
        $id_plantilla = $post_data['id_plantilla'];
        $nombre = $post_data['nombre'];
        $reporte = $this->getReporteTable()->fetchByPlantillaIdAndName($id_plantilla, $nombre);
        if($reporte["id"] == 0){
            $response->setContent(\Zend\Json\Json::encode(true));
        }else if($id == $reporte["id"]){
            $response->setContent(\Zend\Json\Json::encode(true));
        }else{
            $response->setContent(\Zend\Json\Json::encode(false));
        }
        return $response;
    }

    public function updateAction() {
        $this->layout( 'layout/json' );
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

    public function removeAction() {
        $this->layout( 'layout/json' );
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

}