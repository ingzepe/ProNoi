<?php

namespace Reglas\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class ReglaController extends AbstractActionController {

    protected $_reglaTable;

    public function getReglaTable() {
        if (!$this->_reglaTable) {
            $sm = $this->getServiceLocator();
            $this->_reglaTable = $sm->get('Reglas\Model\ReglaTable');
        }
        return $this->_reglaTable;
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
//        $id_plantilla = $this->params()->fromQuery('id_plantilla');
        $reglas = $this->getReglaTable()->fetchAll($id_plantilla);
        $count = count($reglas);
        if ($count < 0) {
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        } else {
            $reglas = \Zend\Json\Json::encode($reglas);
            $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $reglas)));
        }
        return $response;
    }

    public function fetchAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();
        $id = $post_data['id_regla'];
        if (!$regla = $this->getReglaTable()->fetch($id)) {
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        } else {
            $regla = \Zend\Json\Json::encode($regla);
            $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $regla)));
        }
        return $response;
    }

    public function checkNameAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();
        $id = $post_data['id_regla'];
        $id_plantilla = $post_data['id_plantilla'];
        $nombre = $post_data['nombre'];
        $regla = $this->getReglaTable()->fetchByPlantillaIdAndName($id_plantilla, $nombre);
        if($regla["id"] == 0){
            $response->setContent(\Zend\Json\Json::encode(true));
        }else if($id == $regla["id"]){
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

        $regla = new \Reglas\Model\Entity\Regla();
        $regla->setId($post_data['id_regla']);
        $regla->setIdTipoRegla($post_data['tipo_regla']);
        $regla->setIdPlantilla($post_data['id_plantilla']);
        $regla->setNombre($post_data['nombre']);
        $regla->setDescripcion($post_data['descripcion']);
        $regla->setDb($post_data['db']);

        if($post_data['sql']){
            $regla->setIdSalida($post_data['salida']);
            $regla->setOperacion($post_data['sql']);
        }else{
            $regla->setOperacion($post_data['operacion']);
        }

        if (!$regla_id = $this->getReglaTable()->save($regla))
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        else {
            if (!$regla = $this->getReglaTable()->fetch($regla_id)) {
                $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
            } else {
                $regla = \Zend\Json\Json::encode($regla);
                $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $regla)));
            }
        }
        return $response;
    }

    public function removeAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();
        $id = $post_data['id_regla'];
        if (!$this->getReglaTable()->removeRegla($id))
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        else {
            $response->setContent(\Zend\Json\Json::encode(array('status' => true)));
        }
        return $response;
    }

    public function sqlAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();
        $db = $post_data['db'];
        $query = $post_data['sql'];
//        $db = $this->params()->fromQuery('db');
//        $query = $this->params()->fromQuery('sql');
        if (!$result = $this->getReglaTable()->executeSQL($db, $query)) {
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        } else {
            $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $result)));
        }
        return $response;
    }

    public function empleadoAsistenciaMitrolAction() {
        $this->layout( 'layout/json' );
        $request = $this->getRequest();
        $response = $this->getResponse();
        $post_data = $request->getPost();
        $id_empleado = $post_data['id_empleado'];
        $inicio = $post_data['inicio'];
        $fin = $post_data['fin'];
//        $db = $this->params()->fromQuery('db');
//        $query = $this->params()->fromQuery('sql');
        if (!$result = $this->getReglaTable()->empleadoAsistenciaMitrol($id_empleado, $inicio, $fin)) {
            $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
        } else {
            $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $result)));
        }
        return $response;
    }

}