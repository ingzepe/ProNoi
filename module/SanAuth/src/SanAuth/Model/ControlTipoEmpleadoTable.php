<?php

namespace SanAuth\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class ControlTipoEmpleadoTable extends AbstractTableGateway
{

  protected $table = 'tab_control_tipo_empleado';

  public function __construct(Adapter $adapter)
  {
    $this->adapter = $adapter;
  }

  public function fetch($id_usuario)
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table);

    $where = new  Where();
    $where->equalTo('tab_control_tipo_empleado.id_usuario', $id_usuario) ;
    $select->where($where);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\ControlTipoEmpleado(array(
        'id' => $row["id"],
        'id_usuario' => $row["id_usuario"],
        'id_tipo_empleado' => $row["id_tipo_empleado"],
      ));
      $entities[] = $entity->toArray();
    }
    return $entities;
  }

}