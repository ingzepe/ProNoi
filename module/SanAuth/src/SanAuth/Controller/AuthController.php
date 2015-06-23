<?php

namespace SanAuth\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\Form\Annotation\AnnotationBuilder;
use Zend\Session\Container;
use SanAuth\Model\User;

class AuthController extends AbstractActionController
{
  protected $form;
  protected $storage;
  protected $authservice;
  protected $_usuarioTable;

  public function getAuthService()
  {
    if (!$this->authservice) {
      $this->authservice = $this->getServiceLocator()
        ->get('AuthService');
    }

    return $this->authservice;
  }

  public function getSessionStorage()
  {
    if (!$this->storage) {
      $this->storage = $this->getServiceLocator()
        ->get('SanAuth\Model\MyAuthStorage');
    }

    return $this->storage;
  }

  public function getForm()
  {
    if (!$this->form) {
      $user = new User();
      $builder = new AnnotationBuilder();
      $this->form = $builder->createForm($user);
    }

    return $this->form;
  }

  public function loginAction()
  {
    //if already login, redirect to success page
    if ($this->getAuthService()->hasIdentity()) {
      return $this->redirect()->toRoute('success');
    }

    $form = $this->getForm();

    return array(
      'form' => $form,
      'messages' => $this->flashmessenger()->getMessages()
    );
  }

  public function authenticateAction()
  {
    $form = $this->getForm();
    $redirect = 'login';

    $request = $this->getRequest();
    if ($request->isPost()) {
      $form->setData($request->getPost());
      if ($form->isValid()) {
        //check authentication...
        $password = $request->getPost('password');
        $password = md5($password);
        $this->getAuthService()->getAdapter()
          ->setIdentity($request->getPost('username'))
          ->setCredential($password);

        $result = $this->getAuthService()->authenticate();
        foreach ($result->getMessages() as $message) {
          //save message temporary into flashmessenger
          $this->flashmessenger()->addMessage($message);
        }

        if ($result->isValid()) {
          $redirect = 'success';
          //check if it has rememberMe :
          if ($request->getPost('rememberme') == 1) {
            $this->getSessionStorage()
              ->setRememberMe(1);
            //set storage again
            $this->getAuthService()->setStorage($this->getSessionStorage());
          }

          $usuario = $request->getPost('username');
          $user = $this->getUsuarioTable()->fetchByName($usuario);

          $this->getAuthService()->setStorage($this->getSessionStorage());
          $this->getAuthService()->getStorage()->write($usuario);
          $container = new Container('user');
//          $container->user = $this->getServiceLocator()->get('AuthService')->getStorage()->read();
          $container->user = $user;
        }
      }
    }

    return $this->redirect()->toRoute($redirect);
  }

  public function logoutAction()
  {
    if ($this->getAuthService()->hasIdentity()) {
      $this->getSessionStorage()->forgetMe();
      $this->getAuthService()->clearIdentity();
      $this->flashmessenger()->addMessage("You've been logged out");
      $session_user = new Container('username');
      $session_user->getManager()->getStorage()->clear();
    }

    return $this->redirect()->toRoute('login');
  }

  public function getUsuarioTable()
  {
    if (!$this->_usuarioTable) {
      $sm = $this->getServiceLocator();
      $this->_usuarioTable = $sm->get('Usuarios\Model\UsuarioTable');
    }
    return $this->_usuarioTable;
  }



}
