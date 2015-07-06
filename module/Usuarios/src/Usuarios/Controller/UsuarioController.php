<?php

namespace Usuarios\Controller;

use Application\Model\Application;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class UsuarioController extends AbstractActionController
{

  protected $_usuarioTable;
  protected $_rolUsuarioTable;

  public function getUsuarioTable()
  {
    if (!$this->_usuarioTable) {
      $sm = $this->getServiceLocator();
      $this->_usuarioTable = $sm->get('Usuarios\Model\UsuarioTable');
    }
    return $this->_usuarioTable;
  }

  public function getRolUsuarioTable()
  {
    if (!$this->_rolUsuarioTable) {
      $sm = $this->getServiceLocator();
      $this->_rolUsuarioTable = $sm->get('Usuarios\Model\RolUsuarioTable');
    }
    return $this->_rolUsuarioTable;
  }

  public function indexAction()
  {
    if ($this->getServiceLocator()->get('AuthService')->hasIdentity()) {
      $id = $this->params()->fromQuery('id');
      $id_empleado = $this->params()->fromQuery('id_empleado');
      $empleado = $this->params()->fromQuery('nombre');
      return new ViewModel(array(
        'id' => $id,
        'id_empleado' => $id_empleado,
        'empleado' => $empleado,
      ));
    } else {
      return $this->redirect()->toRoute('login');
    }
  }

  public function fetchAllAction()
  {
    $this->layout('layout/json');
    $response = $this->getResponse();

    $usuarios = $this->getUsuarioTable()->fetchAll();
    $count = count($usuarios);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $usuarios = \Zend\Json\Json::encode($usuarios);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $usuarios)));
    }
    return $response;
  }

  public function fetchAllByIdRolUsuarioAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id_rol_usuario = $post_data['id_rol_usuario'];
    $ids = array(Application::ROL_ADMINISTRADOR, $id_rol_usuario);
    $usuarios = $this->getUsuarioTable()->fetchAllByIdRolesUsuario($ids);
    $count = count($usuarios);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $usuarios = \Zend\Json\Json::encode($usuarios);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $usuarios)));
    }
    return $response;
  }

  public function fetchAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_usuario'];
    if (!$usuario = $this->getUsuarioTable()->fetch($id)) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $usuario = \Zend\Json\Json::encode($usuario);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $usuario)));
    }
    return $response;
  }

  public function checkNameAction()
  {
    $this->layout('layout/json');
    $request = $this->getRequest();
    $response = $this->getResponse();
    $post_data = $request->getPost();
    $id = $post_data['id_usuario'];
    $nombre = $post_data['nombre'];
    $usuario = $this->getUsuarioTable()->fetchByName($nombre);
    if ($usuario["id"] == 0) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else if ($id == $usuario["id"]) {
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
    $id = $post_data['id_usuario'];
    $id_mitrol = $post_data['id_mitrol'];
    $usuario = $this->getUsuarioTable()->fetchByIdMitrol($id_mitrol);
    if ($usuario["id"] == 0) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else if ($id == $usuario["id"]) {
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
    $id = $post_data['id_usuario'];
    $id_rh = $post_data['id_rh'];
    $usuario = $this->getUsuarioTable()->fetchByIdRH($id_rh);
    if ($usuario["id"] == 0) {
      $response->setContent(\Zend\Json\Json::encode(true));
    } else if ($id == $usuario["id"]) {
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

    $usuario = new \Usuarios\Model\Entity\Usuario();
    $usuario->setId($post_data['id_usuario_update']);
    $usuario->setIdEmpleado($post_data['id_empleado']);
    $usuario->setIdRolUsuario($post_data['id_rol_usuario_update']);
    $usuario->setNombre($post_data['nombre']);
    $usuario->setPassword(md5($post_data['password']));

    if (!$usuario_id = $this->getUsuarioTable()->save($usuario))
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    else {
      if (!$usuario = $this->getUsuarioTable()->fetch($usuario_id)) {
        $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
      } else {
        $usuario = \Zend\Json\Json::encode($usuario);
        $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $usuario)));
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
    $id = $post_data['id_usuario'];
    if (!$this->getUsuarioTable()->removeUsuario($id))
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
    $id_tipo_usuario = $post_data['id_tipo_usuario'];
    if (!$usuario = $this->getUsuarioTable()->fetchFirst($id_tipo_usuario)) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $usuario = \Zend\Json\Json::encode($usuario);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $usuario)));
    }
    return $response;
  }

  public function fetchAllRolesAction()
  {
    $this->layout('layout/json');
    $response = $this->getResponse();

    $roles = $this->getRolUsuarioTable()->fetchAll();
    $count = count($roles);
    if ($count < 0) {
      $response->setContent(\Zend\Json\Json::encode(array('status' => false)));
    } else {
      $roles = \Zend\Json\Json::encode($roles);
      $response->setContent(\Zend\Json\Json::encode(array('status' => true, 'data' => $roles)));
    }
    return $response;
  }

}