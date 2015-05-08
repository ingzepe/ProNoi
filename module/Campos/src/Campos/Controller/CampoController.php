<?php

namespace Campos\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class CampoController extends AbstractActionController {

    protected $_campoTable;

    public function getCampoTable() {
        if (!$this->_campoTable) {
            $sm = $this->getServiceLocator();
            $this->_campoTable = $sm->get('Campos\Model\CampoTable');
        }
        return $this->_campoTable;
    }

    public function indexAction() {
        if ($this->getServiceLocator()->get('AuthService')->hasIdentity()){
            $id = $this->params()->fromQuery('id');
            $id_plantilla = $this->params()->fromQuery('id_plantilla');
            return new ViewModel(array(
                'id' => $id,
                'id_plantilla' => $id_plantilla,
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
        $campos = $this->getCampoTable()->fetchAll($id_plantilla);
        $count = count($campos);
        if ($count < 0) {
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        } else {
            $campos = \Zend\Json\Json::encode($campos);
            $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $campos)));
        }
        return $response;
    }

    public function fetchAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();
        $id = $post_data['id_campo'];
        if (!$campo = $this->getCampoTable()->fetch($id)) {
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        } else {
            $campo = \Zend\Json\Json::encode($campo);
            $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $campo)));
        }
        return $response;
    }

    public function checkNameAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();
        $id = $post_data['id_campo'];
        $id_plantilla = $post_data['id_plantilla'];
        $nombre = $post_data['nombre'];
        $campo = $this->getCampoTable()->fetchByPlantillaIdAndName($id_plantilla, $nombre);
        if($campo["id"] == 0){
            $response->setContent(\Zend\Json\Json::encode(true));
        }else if($id == $campo["id"]){
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

        $campo = new \Campos\Model\Entity\Campo();
        $campo->setId($post_data['id_campo']);
        $campo->setIdTabPlantilla($post_data['id_plantilla']);
        if($tipo = $post_data['tipo']) {
            $campo->setIdTipoCampo($tipo);
            if($tipo == 1) {
                $cat_ids = split(",", $post_data['cat_ids']);
                $html = "";
                $count = count($cat_ids);
                for($i = 0; $i<$count-1; $i++) {
                    $html.=$post_data[$cat_ids[$i]];
                    if($i !== $count-2){
                        $html.="|";
                    }
                }
                $campo->setValor($html);
            }else {
                $campo->setValor($post_data['valor']);
            }
        }
        if($post_data['regla_negocio'])
            $campo->setIdReglaNegocio($post_data['regla_negocio']);
        if($post_data['repetir'])
            $campo->setIdRepetirCampo($post_data['repetir']);
        if($post_data['formato'])
            $campo->setIdFormato($post_data['formato']);
        $campo->setNombre($post_data['nombre']);
        $campo->setDescripcion($post_data['descripcion']);
        $campo->setPrefijo($post_data['prefijo']);
        $campo->setSufijo($post_data['sufijo']);
        if($repetir = $post_data['repetir']){
            if($repetir == 1){
                $campo->setRepetir($post_data['fechas']);
            }else{
                $campo->setRepetir($post_data['veces']);
            }
        }
        $campo->setActivo(true);
        if($post_data['color']){
            $campo->setColor($post_data['color']);
        }else{
            $campo->setColor("#fff");
        }

        if($campo->getId() == 0){
            $campos = $this->getCampoTable()->fetchAll($campo->getIdTabPlantilla());
            $count = count($campos);
            $campo->setOrden($count+1);
        }

        if (!$campo_id = $this->getCampoTable()->save($campo))
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        else {
            if (!$campo = $this->getCampoTable()->fetch($campo_id)) {
                $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
            } else {
                $campo = \Zend\Json\Json::encode($campo);
                $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $campo)));
            }
        }
        return $response;
    }

    public function removeAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();
        $id = $post_data['id_campo'];
        if (!$this->getCampoTable()->removeCampo($id))
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        else {
            $response->setContent(\Zend\Json\Json::encode(array('status' => true)));
        }
        return $response;
    }

    public function updateActivoAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();

        $campo = new \Campos\Model\Entity\Campo();
        $campo->setId($post_data['id_campo']);
        $campo->setActivo($post_data['activo']);

        if (!$campo_id = $this->getCampoTable()->updateActivo($campo))
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        else {
            if (!$campo = $this->getCampoTable()->fetch($campo_id)) {
                $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
            } else {
                $campo = \Zend\Json\Json::encode($campo);
                $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $campo)));
            }
        }
        return $response;
    }

    public function ordenAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();

        $id = (int) $post_data['id'];
        $id_plantilla = (int) $post_data['id_plantilla'];
        $orden = (int) $post_data['orden'];
        $action = $post_data['action'];

        if($action == 'up'){
            $new_orden = $orden-1;
        }else{
            $new_orden = $orden+1;
        }

        if ($success = $this->getCampoTable()->updateOrdenByOrden($id_plantilla, $new_orden, $orden) && $success2 = $this->getCampoTable()->updateOrdenById($id, $new_orden)){
            $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $success && $success2)));
        } else {
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        }
        return $response;
    }

    public function updateColorAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();

        $campo = new \Campos\Model\Entity\Campo();
        $campo->setId($post_data['id_campo']);
        $campo->setColor($post_data['color']);

        if (!$campo_id = $this->getCampoTable()->updateColor($campo))
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        else {
            if (!$campo = $this->getCampoTable()->fetch($campo_id)) {
                $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
            } else {
                $campo = \Zend\Json\Json::encode($campo);
                $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $campo)));
            }
        }
        return $response;
    }

}