<?php

return array(
    'controllers' => array(
        'invokables' => array(
            'Reportes\Controller\Reportes' => 'Reportes\Controller\ReportesController',
            'Reportes\Controller\Reporte' => 'Reportes\Controller\ReporteController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'reportes' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/reportes',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Reportes\Controller\Reportes',
                        'action' => 'index',
                    ),
                ),
            ),
            'reporte' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/reporte[/:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Reportes\Controller\Reporte',
                        'action' => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'Reportes' => __DIR__ . '/../view',
        ),
    ),
);
