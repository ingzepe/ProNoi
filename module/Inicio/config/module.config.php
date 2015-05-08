<?php

return array(
    'controllers' => array(
        'invokables' => array(
            'Inicio\Controller\Inicio' => 'Inicio\Controller\InicioController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'inicio' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/inicio[/:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Inicio\Controller\Inicio',
                        'action' => 'index',
                    ),
                ),
            ),
//            'stickynotes' => array(
//                'type' => 'segment',
//                'options' => array(
//                    'route' => '/inicio[/:action][/:id]',
//                    'constraints' => array(
//                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
//                        'id' => '[0-9]+',
//                    ),
//                    'defaults' => array(
//                        'controller' => 'Inicio\Controller\Inicio',
//                        'action' => 'index',
//                    ),
//                ),
//            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'Inicio' => __DIR__ . '/../view',
        ),
    ),
);
