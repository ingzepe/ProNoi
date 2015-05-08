<?php

namespace Inicio;

class Module {

    public function getAutoloaderConfig() {
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

    public function getConfig() {
        return include __DIR__ . '/config/module.config.php';
    }

    public function getServiceConfig() {
        return array(
            'factories' => array(
                'Inicio\Model\StickyNotesTable' => function($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $table = new Model\StickyNotesTable($dbAdapter);
                    return $table;
                },
            ),
        );
    }

    public function getIdentity()
    {
        return array(
            'service_manager' => array(
                'aliases' => array(
                    'Zend\Authentication\AuthenticationService' => 'my_auth_service',
                ),
                'invokables' => array(
                    'my_auth_service' => 'Zend\Authentication\AuthenticationService',
                ),
            ),
        );
    }

}
