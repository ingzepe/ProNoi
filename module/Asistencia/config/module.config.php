<?php

return array(
    'controllers' => array(
        'invokables' => array(
            'Asistencia\Controller\Asistencia' => 'Asistencia\Controller\AsistenciaController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'asistencia' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/asistencia[/:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Asistencia\Controller\Asistencia',
                        'action' => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'Asistencia' => __DIR__ . '/../view',
        ),
    ),
);
