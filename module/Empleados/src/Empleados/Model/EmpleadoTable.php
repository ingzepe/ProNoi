<?php

namespace Empleados\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class EmpleadoTable extends AbstractTableGateway
{

  protected $table = 'tab_empleado';

  public function __construct(Adapter $adapter)
  {
    $this->adapter = $adapter;
  }

  public function save(Entity\Empleado $empleado)
  {
    $data = array(
      'id_tipo_empleado' => $empleado->getIdTipoEmpleado(),
      'id_unidad' => $empleado->getIdUnidad(),
      'id_mitrol' => $empleado->getIdmitrol(),
      'id_rh' => $empleado->getIdRh(),
      'nombre' => $empleado->getNombre(),
      'fecha_ingreso' => $empleado->getFechaIngreso(),
      'horario' => $empleado->getHorario(),
      'campana' => $empleado->getCampana(),
      'jefe' => $empleado->getJefe(),
      'sueldo_diario' => $empleado->getSueldoDiario(),
    );
    $id = (int)$empleado->getId();
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

  public function fetchAllByIdTipoEmpleado($id_tipo_empleado)
  {

    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
      ->join('tab_tipo_empleado', 'tab_tipo_empleado.id = tab_empleado.id_tipo_empleado',
        array('tipo_empleado' => 'tipo'))
      ->join('tab_unidad_negocio', 'tab_unidad_negocio.id = tab_tipo_empleado.id_unidad',
        array('unidad_negocio' => 'nombre'));

    $where = new Where();
    $where->equalTo('tab_empleado.id_tipo_empleado', $id_tipo_empleado);
    $select->where($where);
    $where = new Where();
    $where->in('tab_empleado.id_mitrol', [144, 153, 161, 162, 235, 236, 242, 245, 246, 247, 250, 266, 272, 281, 291, 292, 293]);
    $select->where($where);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\Empleado(array(
        'id' => $row["id"],
        'id_tipo_empleado' => $row["id_tipo_empleado"],
        'id_unidad' => $row["id_unidad"],
        'id_mitrol' => $row["id_mitrol"],
        'id_rh' => $row["id_rh"],
        'tipo_empleado' => $row["tipo_empleado"],
        'unidad_negocio' => $row["unidad_negocio"],
        'nombre' => $row["nombre"],
        'fecha_ingreso' => $row["fecha_ingreso"],
        'horario' => $row["horario"],
        'campana' => $row["campana"],
        'jefe' => $row["jefe"],
        'sueldo_diario' => $row["sueldo_diario"],
      ));
      $entities[] = $entity->toArray();
    }
    return $entities;
  }

  public function fetchAll()
  {

    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
      ->join('tab_tipo_empleado', 'tab_tipo_empleado.id = tab_empleado.id_tipo_empleado',
        array('tipo_empleado' => 'tipo'))
      ->join('tab_unidad_negocio', 'tab_unidad_negocio.id = tab_tipo_empleado.id_unidad',
        array('unidad_negocio' => 'nombre'));

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\Empleado(array(
        'id' => $row["id"],
        'id_tipo_empleado' => $row["id_tipo_empleado"],
        'id_unidad' => $row["id_unidad"],
        'id_mitrol' => $row["id_mitrol"],
        'id_rh' => $row["id_rh"],
        'tipo_empleado' => $row["tipo_empleado"],
        'unidad_negocio' => $row["unidad_negocio"],
        'nombre' => $row["nombre"],
        'fecha_ingreso' => $row["fecha_ingreso"],
        'horario' => $row["horario"],
        'campana' => $row["campana"],
        'jefe' => $row["jefe"],
        'sueldo_diario' => $row["sueldo_diario"],
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
      ->join('tab_tipo_empleado', 'tab_tipo_empleado.id = tab_empleado.id_tipo_empleado',
        array('tipo_empleado' => 'tipo'))
      ->join('tab_unidad_negocio', 'tab_unidad_negocio.id = tab_tipo_empleado.id_unidad',
        array('unidad_negocio' => 'nombre'));

    $where = new  Where();
    $where->equalTo('tab_empleado.id', $id);
    $select->where($where);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    foreach ($resultSet as $row) {
      $entity = new Entity\Empleado(array(
        'id' => $row["id"],
        'id_tipo_empleado' => $row["id_tipo_empleado"],
        'id_unidad' => $row["id_unidad"],
        'id_mitrol' => $row["id_mitrol"],
        'id_rh' => $row["id_rh"],
        'nombre' => $row["nombre"],
        'fecha_ingreso' => $row["fecha_ingreso"],
        'horario' => $row["horario"],
        'campana' => $row["campana"],
        'jefe' => $row["jefe"],
        'sueldo_diario' => $row["sueldo_diario"],
        'tipo_empleado' => $row["tipo_empleado"],
        'unidad_negocio' => $row["unidad_negocio"],
      ));
      $entity = $entity->toArray();
    }

    if (isset($entity)) {
      return $entity;
    } else {
      return 0;
    }

  }

  public function fetchByName($nombre)
  {
    $row = $this->select(array('nombre' => $nombre))->current();
    if (!$row) {
      $entity = new Entity\Empleado(array(
        'id' => 0,
      ));
    } else {
      $entity = new Entity\Empleado(array(
        'id' => $row["id"],
        'id_tipo_empleado' => $row["id_tipo_empleado"],
        'id_unidad' => $row["id_unidad"],
        'id_mitrol' => $row["id_mitrol"],
        'id_rh' => $row["id_rh"],
        'nombre' => $row["nombre"],
        'fecha_ingreso' => $row["fecha_ingreso"],
      ));
    }
    return $entity->toArray();
  }

  public function fetchByIdMitrol($id_mitrol)
  {
    $row = $this->select(array('id_mitrol' => $id_mitrol))->current();
    if (!$row) {
      $entity = new Entity\Empleado(array(
        'id' => 0,
      ));
    } else {
      $entity = new Entity\Empleado(array(
        'id' => $row["id"],
        'id_tipo_empleado' => $row["id_tipo_empleado"],
        'id_unidad' => $row["id_unidad"],
        'id_mitrol' => $row["id_mitrol"],
        'id_rh' => $row["id_rh"],
        'nombre' => $row["nombre"],
        'fecha_ingreso' => $row["fecha_ingreso"],
      ));
    }
    return $entity->toArray();
  }

  public function fetchByIdRH($id_rh)
  {
    $row = $this->select(array('id_rh' => $id_rh))->current();
    if (!$row) {
      $entity = new Entity\Empleado(array(
        'id' => 0,
      ));
    } else {
      $entity = new Entity\Empleado(array(
        'id' => $row["id"],
        'id_tipo_empleado' => $row["id_tipo_empleado"],
        'id_unidad' => $row["id_unidad"],
        'id_mitrol' => $row["id_mitrol"],
        'id_rh' => $row["id_rh"],
        'nombre' => $row["nombre"],
        'fecha_ingreso' => $row["fecha_ingreso"],
      ));
    }
    return $entity->toArray();
  }

  public function removeEmpleado($id)
  {
    return $this->delete(array('id' => (int)$id));
  }

}