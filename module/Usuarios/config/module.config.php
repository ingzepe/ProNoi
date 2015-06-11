<?php

return array(
    'controllers' => array(
        'invokables' => array(
            'Usuarios\Controller\Usuarios' => 'Usuarios\Controller\UsuariosController',
            'Usuarios\Controller\Usuario' => 'Usuarios\Controller\UsuarioController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'usuarios' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/usuarios',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Usuarios\Controller\Usuarios',
                        'action' => 'index',
                    ),
                ),
            ),
            'usuario' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/usuario[/:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Usuarios\Controller\Usuario',
                        'action' => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'Usuarios' => __DIR__ . '/../view',
        ),
    ),
);
