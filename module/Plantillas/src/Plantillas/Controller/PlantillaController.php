<?php

namespace Plantillas\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class PlantillaController extends AbstractActionController {

    protected $_plantillaTable;

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
            return new ViewModel(array(
                'id' => $id,
            ));
        }else{
            return $this->redirect()->toRoute('login');
        }
    }

    public function fetchAllAction() {
        $this->layout( 'layout/json' );
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

    public function fetchAction() {
        $this->layout( 'layout/json' );
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

    public function checkNameAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();
        $id = $post_data['id_plantilla'];
        $nombre = $post_data['nombre'];
        $plantilla = $this->getPlantillaTable()->fetchByName($nombre);
        if($plantilla["id"] == 0){
            $response->setContent(\Zend\Json\Json::encode(true));
        }else if($id == $plantilla["id"]){
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

    public function removeAction() {
        $this->layout( 'layout/json' );
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

}