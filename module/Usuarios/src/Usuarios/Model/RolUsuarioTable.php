<?php

namespace Usuarios\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class RolUsuarioTable extends AbstractTableGateway
{

  protected $table = 'cat_rol_usuario';

  public function __construct(Adapter $adapter)
  {
    $this->adapter = $adapter;
  }

  public function fetchAll()
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table);

//        echo $select->getSqlString();
    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\RolUsuario(array(
        'id' => $row["id"],
        'nombre' => $row["nombre"],
        'descripcion' => $row["descripcion"],
      ));
      $entities[] = $entity->toArray();
    }
    return $entities;
  }

  public function fetch($id)
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table);

    $where = new  Where();
    $where->equalTo('cat_rol_usuario.id', $id);
    $select->where($where);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    foreach ($resultSet as $row) {
      $entity = new Entity\RolUsuario(array(
        'id' => $row["id"],
        'nombre' => $row["nombre"],
        'descripcion' => $row["descripcion"],
      ));
      $entity = $entity->toArray();
    }

    if (isset($entity)) {
      return $entity;
    } else {
      return 0;
    }

  }

}