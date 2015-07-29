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

//    echo $id_tipo_empleado;

    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
      ->join('tab_tipo_empleado', 'tab_tipo_empleado.id = tab_empleado.id_tipo_empleado',
        array('tipo_empleado' => 'tipo'))
      ->join('tab_unidad_negocio', 'tab_unidad_negocio.id = tab_tipo_empleado.id_unidad',
        array('unidad_negocio' => 'nombre'));

//    $select->from($this->table);

    $where = new Where();
    $where->equalTo('tab_empleado.id_tipo_empleado', $id_tipo_empleado);
    $where2 = new Where();
    $where2->equalTo('tab_empleado.activo', 'True');
    $where3 = new Where();
    $where3->isNotNull('tab_empleado.id_rh');
    $select->where(array($where, $where2, $where3));

//    $where = new Where();
//    $where->isNotNull('tab_empleado.id_mitrol');
//    $select->where($where);

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

    $where = new Where();
    $where->equalTo('tab_empleado.activo', 'True');
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

  public function fetch($id)
  {

    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
      ->join('tab_tipo_empleado', 'tab_tipo_empleado.id = tab_empleado.id_tipo_empleado',
        array('tipo_empleado' => 'tipo'))
      ->join('tab_unidad_negocio', 'tab_unidad_negocio.id = tab_tipo_empleado.id_unidad',
        array('unidad_negocio' => 'nombre'));

    $where = new Where();
    $where->equalTo('tab_empleado.activo', 'True');
    $select->where($where);
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
    $row = $this->select(array('nombre' => $nombre,'activo' => 'True'))->current();
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
    $row = $this->select(array('id_mitrol' => $id_mitrol,'activo' => 'True'))->current();
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
    $row = $this->select(array('id_rh' => $id_rh,'activo' => 'True'))->current();
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

//  public function removeEmpleado($id)
//  {
//    return $this->delete(array('id' => (int)$id));
//  }

  public function removeEmpleado($id)
  {
    $data = array(
      'activo' => 'False',
    );
    if (!$this->update($data, array('id' => $id))) {
      return false;
    } else {
      return $id;
    }
  }

}