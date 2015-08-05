<?php

return array(
    'controllers' => array(
        'invokables' => array(
            'Demos\Controller\Demos' => 'Demos\Controller\DemosController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'demos' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/demos[/:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Demos\Controller\Demos',
                        'action' => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'Demos' => __DIR__ . '/../view',
        ),
    ),
);
