<?php

return array(
    'controllers' => array(
        'invokables' => array(
            'Empleados\Controller\Empleados' => 'Empleados\Controller\EmpleadosController',
            'Empleados\Controller\Empleado' => 'Empleados\Controller\EmpleadoController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'empleados' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/empleados',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Empleados\Controller\Empleados',
                        'action' => 'index',
                    ),
                ),
            ),
            'empleado' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/empleado[/:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Empleados\Controller\Empleado',
                        'action' => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'Empleados' => __DIR__ . '/../view',
        ),
    ),
);
