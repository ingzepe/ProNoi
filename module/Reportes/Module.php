<?php

namespace Reportes;

class Module
{

  public function getAutoloaderConfig()
  {
    return array(
      'Zend\Loader\ClassMapAutoloader' => array(
        __DIR__ . '/autoload_classmap.php',
      ),
      'Zend\Loader\StandardAutoloader' => array(
        'namespaces' => array(
          __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
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
        'Reportes\Model\ReporteTable' => function ($sm) {
          $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
          $table = new Model\ReporteTable($dbAdapter);
          return $table;
        },
        'Reportes\Model\ContenidoReporteTable' => function ($sm) {
          $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
          $table = new Model\ContenidoReporteTable($dbAdapter);
          return $table;
        },
        'SanAuth\Model\ControlReporteTable' => function ($sm) {
          $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
          $table = new \SanAuth\Model\ControlReporteTable($dbAdapter);
          return $table;
        },
      ),
    );
  }

}
