<?php

return array(
    'controllers' => array(
        'invokables' => array(
            'Campos\Controller\Campos' => 'Campos\Controller\CamposController',
            'Campos\Controller\Campo' => 'Campos\Controller\CampoController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'campos' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/campos',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Campos\Controller\Campos',
                        'action' => 'index',
                    ),
                ),
            ),
            'campo' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/campo[/:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Campos\Controller\Campo',
                        'action' => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'Campos' => __DIR__ . '/../view',
        ),
    ),
);
