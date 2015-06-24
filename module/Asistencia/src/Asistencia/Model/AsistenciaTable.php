<?php

namespace Asistencia\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class AsistenciaTable extends AbstractTableGateway
{

  protected $table = 'tab_asistencia';

  public function __construct(Adapter $adapter)
  {
    $this->adapter = $adapter;
  }

  public function save(Entity\Asistencia $asistencia)
  {
    $data = array(
      'id_empleado' => $asistencia->getIdEmpleado(),
      'id_cat_asistencia' => (int)$asistencia->getIdCatAsistencia(),
      'fecha' => $asistencia->getFecha(),
    );
    if (!$this->insert($data)) {
      return false;
    } else {
      return $this->getLastInsertValue();
    }
  }

  public function fetchAll()
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
      ->join('cat_asistencia', 'cat_asistencia.id = tab_asistencia.id_cat_asistencia',
        array('nombre' => 'asistencia'));

//        echo $select->getSqlString();
    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\Asistencia(array(
        'id' => $row["id"],
        'id_empleado' => $row["id_empleado"],
        'id_cat_asistencia' => $row["id_cat_asistencia"],
        'fecha' => $row["fecha"],
        'asistencia' => $row["asistencia"],
      ));
      $entities[] = $entity->toArray();
    }
    return $entities;
  }

  public function fetch($id)
  {

    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
    ->join('cat_asistencia', 'cat_asistencia.id = tab_asistencia.id_cat_asistencia',
      array('nombre' => 'asistencia'));

    $where = new  Where();
    $where->equalTo('tab_asistencia.id', $id);
    $select->where($where);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    foreach ($resultSet as $row) {
      $entity = new Entity\Asistencia(array(
        'id' => $row["id"],
        'id_empleado' => $row["id_empleado"],
        'id_cat_asistencia' => $row["id_cat_asistencia"],
        'fecha' => $row["fecha"],
        'asistencia' => $row["asistencia"],
      ));
      $entity = $entity->toArray();
    }

    if (isset($entity)) {
      return $entity;
    } else {
      return 0;
    }

  }

  public function removeAsistencia(Entity\Asistencia $asistencia)
  {
    return $this->delete(array(
      'id_empleado' => (int)$asistencia->getIdEmpleado(),
      'fecha' => $asistencia->getFecha()
    ));
  }

  public function fetchAllByIdEmpleadoAndPeriodo($id_empleado, $inicio, $fin)
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
      ->join('cat_asistencia', 'cat_asistencia.id = tab_asistencia.id_cat_asistencia',
        array('asistencia' => 'nombre'));

    $where1 = new Where();
    $where1->between('tab_asistencia.fecha', $inicio, $fin);
    $select->where($where1);

    $where2 = new Where();
    $where2->equalTo('tab_asistencia.id_empleado', $id_empleado);
    $select->where(array($where2));

    $select->order(array('fecha'));

//        echo $select->getSqlString();
    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\Asistencia(array(
        'id' => $row["id"],
        'id_empleado' => $row["id_empleado"],
        'id_cat_asistencia' => $row["id_cat_asistencia"],
        'fecha' => $row["fecha"],
        'asistencia' => $row["asistencia"],
      ));
      $entities[] = $entity->toArray();
    }
    return $entities;
  }

}