<?php
/**
 * Created by IntelliJ IDEA.
 * User: Armando Reyna
 * Date: 16/04/2015
 * Time: 09:13 AM
 */

$reader = new Zend\Config\Reader\Ini();
$config = $reader->fromFile('config/autoload/config.ini');
$environment = $config['environment'];
$config = $config[$environment];

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
        'dsn'       => 'sqlsrv:database='.$config['pronoi']['db'].';Server='.$config['pronoi']['server'],
        'username' => $config['pronoi']['user'],
        'password' => $config['pronoi']['pass'],
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