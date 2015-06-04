<?php

namespace SanAuth;

use Zend\ModuleManager\Feature\AutoloaderProviderInterface;

use Zend\Authentication\AuthenticationService;
use Zend\Authentication\Adapter\DbTable as DbTableAuthAdapter;

class Module implements AutoloaderProviderInterface
{

  public function getAutoloaderConfig()
  {
    return array(
      'Zend\Loader\ClassMapAutoloader' => array(
        __DIR__ . '/autoload_classmap.php',
      ),
      'Zend\Loader\StandardAutoloader' => array(
        'namespaces' => array(
          // if we're in a namespace deeper than one level we need to fix the \ in the path
          __NAMESPACE__ => __DIR__ . '/src/' . str_replace('\\', '/', __NAMESPACE__),
        ),
      ),
    );
  }

  public function getConfig()
  {
    return include __DIR__ . '/config/module.config.php';
  }

  public function getServiceConfig()
  {
    return array(
      'factories' => array(
        'SanAuth\Model\MyAuthStorage' => function ($sm) {
          return new \SanAuth\Model\MyAuthStorage('zf_tutorial');
        },
        'AuthService' => function ($sm) {
          $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
          $dbTableAuthAdapter = new DbTableAuthAdapter($dbAdapter, "tab_usuario", "nombre", "password");
          $authService = new AuthenticationService();
          $authService->setAdapter($dbTableAuthAdapter);
          $authService->setStorage($sm->get('SanAuth\Model\MyAuthStorage'));
          return $authService;
        },
        'SanAuth\Model\UsuarioTable' => function($sm) {
          $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
          $table = new Model\UsuarioTable($dbAdapter);
          return $table;
        },
        'SanAuth\Model\ControlTipoEmpleadoTable' => function($sm) {
          $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
          $table = new Model\ControlTipoEmpleadoTable($dbAdapter);
          return $table;
        },
      ),
    );
  }

}
