<?php

namespace Asistencia\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class ControlAsistenciaTable extends AbstractTableGateway
{

  protected $table = 'tab_control_asistencia';

  public function __construct(Adapter $adapter)
  {
    $this->adapter = $adapter;
  }

  public function save(Entity\ControlAsistencia $asistencia)
  {
    $data = array(
      'id_tipo_empleado' => $asistencia->getIdTipoEmpleado(),
      'id_usuario' => $asistencia->getIdUsuario(),
      'id_cat_control_asistencia' => $asistencia->getIdCatControlAsistencia(),
    );
    if (!$this->insert($data)) {
      return false;
    } else {
      return $this->getLastInsertValue();
    }
  }

  public function fetchAllByIdTipoEmpleado($id_tipo_empleado)
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
      ->join('tab_usuario', 'tab_usuario.id = tab_control_asistencia.id_usuario',
        array('usuario' => 'nombre'))
      ->join('cat_control_asistencia', 'cat_control_asistencia.id = tab_control_asistencia.id_cat_control_asistencia',
        array('permisos' => 'nombre'));;

    $where = new  Where();
    $where->equalTo('tab_control_asistencia.id_tipo_empleado', $id_tipo_empleado);
    $select->where($where);

//        echo $select->getSqlString();
    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\ControlAsistencia(array(
        'id' => $row["id"],
        'id_tipo_empleado' => $row["id_tipo_empleado"],
        'id_usuario' => $row["id_usuario"],
        'usuario' => $row["usuario"],
        'id_cat_control_asistencia' => $row["id_cat_control_asistencia"],
        'permisos' => $row["permisos"],
      ));
      $entities[] = $entity->toArray();
    }
    return $entities;
  }

  public function fetchAllByIdUsuario($id_usuario)
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
      ->join('tab_tipo_empleado', 'tab_tipo_empleado.id = tab_control_asistencia.id_tipo_empleado',
        array('tipo_empleado' => 'tipo'));

    $where = new  Where();
    $where->equalTo('tab_control_asistencia.id_usuario', $id_usuario);
    $select->where($where);

//        echo $select->getSqlString();
    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\ControlAsistencia(array(
        'id' => $row["id"],
        'id_tipo_empleado' => $row["id_tipo_empleado"],
        'id_usuario' => $row["id_usuario"],
        'tipo_empleado' => $row["tipo_empleado"],
        'id_cat_control_asistencia' => $row["id_cat_control_asistencia"],
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
      ->join('tab_usuario', 'tab_usuario.id = tab_control_asistencia.id_usuario',
        array('usuario' => 'nombre'))
      ->join('cat_control_asistencia', 'cat_control_asistencia.id = tab_control_asistencia.id_cat_control_asistencia',
        array('permisos' => 'nombre'));

    $where = new  Where();
    $where->equalTo('tab_control_asistencia.id', $id);
    $select->where($where);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    foreach ($resultSet as $row) {
      $entity = new Entity\ControlAsistencia(array(
        'id' => $row["id"],
        'id_tipo_empleado' => $row["id_tipo_empleado"],
        'id_usuario' => $row["id_usuario"],
        'usuario' => $row["usuario"],
        'id_cat_control_asistencia' => $row["id_cat_control_asistencia"],
        'permisos' => $row["permisos"],
      ));
      $entity = $entity->toArray();
    }

    if (isset($entity)) {
      return $entity;
    } else {
      return 0;
    }

  }

  public function remove($id)
  {
    return $this->delete(array('id' => (int)$id));
  }

}