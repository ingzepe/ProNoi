<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2015 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

return array(
  'router' => array(
    'routes' => array(
      'home' => array(
        'type' => 'Zend\Mvc\Router\Http\Literal',
        'options' => array(
          'route' => '/',
          'defaults' => array(
//                        'controller' => 'Application\Controller\Index',
            'controller' => 'Inicio\Controller\Inicio',
            'action' => 'index',
          ),
        ),
      ),
      // The following is a route to simplify getting started creating
      // new controllers and actions without needing to create a new
      // module. Simply drop new controllers in, and you can access them
      // using the path /application/:controller/:action
      'application' => array(
        'type' => 'Literal',
        'options' => array(
          'route' => '/application',
          'defaults' => array(
            '__NAMESPACE__' => 'Application\Controller',
            'controller' => 'Index',
            'action' => 'index',
          ),
        ),
        'may_terminate' => true,
        'child_routes' => array(
          'default' => array(
            'type' => 'Segment',
            'options' => array(
              'route' => '/[:controller[/:action]]',
              'constraints' => array(
                'controller' => '[a-zA-Z][a-zA-Z0-9_-]*',
                'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
              ),
              'defaults' => array(),
            ),
          ),
        ),
      ),
    ),
  ),
  'navigation' => array(
    'default' => array(
      array(
        'label' => 'Inicio',
        'route' => 'inicio',
        'class' => 'icon_house',
        'id' => 'homeBC',
        'pages' => array(
          array(
            'label' => 'Plantillas',
            'route' => 'plantillas',
            'class' => 'icon_table',
            'id' => 'plantillasBC',
            'pages' => array(
              array(
                'label' => 'Nueva Plantilla',
                'route' => 'plantilla',
                'class' => 'icon_table',
                'id' => 'plantillaBC',
                'pages' => array(
                  array(
                    'label' => 'Nuevo Campo',
                    'route' => 'campo',
                    'class' => 'icon_tag',
                    'id' => 'campoBC',
                  ),
                  array(
                    'label' => 'Reglas de Negocio',
                    'route' => 'reglas',
                    'class' => 'icon_cogs',
                    'id' => 'reglasBC',
                    'pages' => array(
                      array(
                        'label' => 'Nueva Regla de Negocio',
                        'route' => 'regla',
                        'class' => 'icon_cog',
                        'id' => 'reglaBC'
                      ),
                    ),
                  ),
                  array(
                    'label' => 'Reportes',
                    'route' => 'reportes',
                    'class' => 'icon_documents_alt',
                    'id' => 'reportesBC',
                    'pages' => array(
                      array(
                        'label' => 'Nuevo Reporte',
                        'route' => 'reporte',
                        'class' => 'icon_documents_alt',
                        'id' => 'reporteBC'
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          array(
            'label' => 'Empleados',
            'route' => 'empleados',
            'class' => 'icon_group',
            'id' => 'empleadosBC',
            'pages' => array(
              array(
                'label' => 'Nuevo Empleado',
                'route' => 'empleado',
                'class' => 'icon_profile',
                'id' => 'empleadoBC'
              ),
            ),
          ),
        ),
      ),
    ),
  ),
  'service_manager' => array(
    'abstract_factories' => array(
      'Zend\Cache\Service\StorageCacheAbstractServiceFactory',
      'Zend\Log\LoggerAbstractServiceFactory',
    ),
    'aliases' => array(
      'translator' => 'MvcTranslator',
    ),
    'factories' => array(
      'navigation' => 'Zend\Navigation\Service\DefaultNavigationFactory',
      'Zend\Log' => function ($sm) {
        $log = new Zend\Log\Logger();
        $writer = new Zend\Log\Writer\Stream('pronoi.log');
        $log->addWriter($writer);
        return $log;
      },
    ),
  ),
  'translator' => array(
    'locale' => 'en_US',
    'translation_file_patterns' => array(
      array(
        'type' => 'gettext',
        'base_dir' => __DIR__ . '/../language',
        'pattern' => '%s.mo',
      ),
    ),
  ),
  'controllers' => array(
    'invokables' => array(
      'Application\Controller\Index' => 'Application\Controller\IndexController'
    ),
  ),
  'view_manager' => array(
    'display_not_found_reason' => true,
    'display_exceptions' => true,
    'doctype' => 'HTML5',
    'not_found_template' => 'error/404',
    'exception_template' => 'error/index',
    'template_map' => array(
      'layout/layout' => __DIR__ . '/../view/layout/layout.phtml',
      'application/index/index' => __DIR__ . '/../view/application/index/index.phtml',
      'error/404' => __DIR__ . '/../view/error/404.phtml',
      'error/index' => __DIR__ . '/../view/error/index.phtml',
    ),
    'template_path_stack' => array(
      __DIR__ . '/../view',
    ),
  ),
  // Placeholder for console routes
  'console' => array(
    'router' => array(
      'routes' => array(),
    ),
  ),
);
