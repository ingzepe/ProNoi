<?php

namespace Empleados\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class TipoEmpleadoTable extends AbstractTableGateway
{

  protected $table = 'tab_tipo_empleado';

  public function __construct(Adapter $adapter)
  {
    $this->adapter = $adapter;
  }

  public function save(Entity\TipoEmpleado $tipoEmpleado)
  {
    $data = array(
      'id_unidad' => $tipoEmpleado->getIdUnidad(),
      'tipo' => $tipoEmpleado->getTipo(),
      'descripcion' => $tipoEmpleado->getDescripcion(),
    );
    $id = (int)$tipoEmpleado->getId();
    if ($id == 0) {
      if (!$this->insert($data)) {
        return false;
      } else {
        return $this->getLastInsertValue();
      }
    } else {
      if (!$this->update($data, array('id' => $id))) {
        return false;
      } else {
        return $id;
      }
    }
  }

  public function fetchAll()
  {

    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\Empleado(array(
        'id' => $row["id"],
        'id_unidad' => $row["id_unidad"],
        'tipo' => $row["tipo"],
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
    $where->equalTo('tab_tipo_empleado.id', $id);
    $select->where($where);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    foreach ($resultSet as $row) {
      $entity = new Entity\Empleado(array(
        'id' => $row["id"],
        'id_unidad' => $row["id_unidad"],
        'tipo' => $row["tipo"],
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

  public function fetchByTipo($tipo)
  {
    $row = $this->select(array('tipo' => $tipo))->current();
    if (!$row) {
      $entity = new Entity\Empleado(array(
        'id' => 0,
      ));
    } else {
      $entity = new Entity\Empleado(array(
        'id' => $row["id"],
        'id_unidad' => $row["id_unidad"],
        'tipo' => $row["tipo"],
        'descripcion' => $row["descripcion"],
      ));
    }
    return $entity->toArray();
  }

  public function removeEmpleado($id)
  {
    return $this->delete(array('id' => (int)$id));
  }

}