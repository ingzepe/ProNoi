<?php

return array(
    'controllers' => array(
        'invokables' => array(
            'Plantillas\Controller\Plantillas' => 'Plantillas\Controller\PlantillasController',
            'Plantillas\Controller\Plantilla' => 'Plantillas\Controller\PlantillaController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'plantillas' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/plantillas',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Plantillas\Controller\Plantillas',
                        'action' => 'index',
                    ),
                ),
            ),
            'plantilla' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/plantilla[/:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Plantillas\Controller\Plantilla',
                        'action' => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'Plantillas' => __DIR__ . '/../view',
        ),
    ),
);
