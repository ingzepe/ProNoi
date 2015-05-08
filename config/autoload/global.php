<?php
/**
 * Created by IntelliJ IDEA.
 * User: Armando Reyna
 * Date: 16/04/2015
 * Time: 09:13 AM
 */
return array(
//    'db' => array(
//        'driver'         => 'Pdo',
//        'dsn'            => 'mysql:dbname=pronoi;host=localhost',
//        'driver_options' => array(
//            PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''
//        ),
//    ),
    'db' => array(
        'driver'    => 'pdo',
        'dsn'       => 'sqlsrv:database=pronoi;Server=AIR-DELL',
        'driver_options' => array(
            PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''
        ),
    ),
    'service_manager' => array(
        'factories' => array(
            'Zend\Db\Adapter\Adapter'
            => 'Zend\Db\Adapter\AdapterServiceFactory',
        ),
    ),
);