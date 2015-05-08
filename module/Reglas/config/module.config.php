<?php

return array(
    'controllers' => array(
        'invokables' => array(
            'Reglas\Controller\Reglas' => 'Reglas\Controller\ReglasController',
            'Reglas\Controller\Regla' => 'Reglas\Controller\ReglaController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'reglas' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/reglas',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Reglas\Controller\Reglas',
                        'action' => 'index',
                    ),
                ),
            ),
            'regla' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/regla[/:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Reglas\Controller\Regla',
                        'action' => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'Reglas' => __DIR__ . '/../view',
        ),
    ),
);
