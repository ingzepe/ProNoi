<?php

namespace SanAuth\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class ControlReporteTable extends AbstractTableGateway
{

  protected $table = 'tab_control_reporte';

  public function __construct(Adapter $adapter)
  {
    $this->adapter = $adapter;
  }

  public function save(Entity\ControlReporte $control) {
    $data = array(
      'id_plantilla' => $control->getIdPlantilla(),
      'id_usuario_responsable' => $control->getIdUsuarioResponsable(),
      'id_tipo_empleado_responsable' => $control->getIdTipoEmpleadoResponsable(),
      'id_cat_control_reporte' => $control->getIdCatControlReporte(),
    );
    if (!$this->insert($data)){
      return false;
    }else{
      return $this->getLastInsertValue();
    }
  }

  public function fetchAllByIdPlantilla($id_plantilla)
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
      ->join('tab_usuario', 'tab_usuario.id = tab_control_reporte.id_usuario_responsable',
        array('usuario_responsable' => 'nombre'), 'LEFT')
      ->join('tab_tipo_empleado', 'tab_tipo_empleado.id = tab_control_reporte.id_tipo_empleado_responsable',
        array('tipo_empleado_responsable' => 'tipo'), 'LEFT')
      ->join('cat_control_reporte', 'cat_control_reporte.id = tab_control_reporte.id_cat_control_reporte',
        array('permisos' => 'nombre'));

    $where = new  Where();
    $where->equalTo('tab_control_reporte.id_plantilla', $id_plantilla) ;
    $select->where($where);

//    echo $select->getSqlString();
    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\ControlReporte(array(
        'id' => $row["id"],
        'id_usuario_responsable' => $row["id_usuario_responsable"],
        'id_tipo_empleado_responsable' => $row["id_tipo_empleado_responsable"],
        'id_cat_control_reporte' => $row["id_cat_control_reporte"],
        'usuario_responsable' => $row["usuario_responsable"],
        'tipo_empleado_responsable' => $row["tipo_empleado_responsable"],
        'permisos' => $row["permisos"],
      ));
      $entities[] = $entity->toArray();
    }
    return $entities;
  }

  public function fetchAllByIdUsuarioAndTipoEmpleado($id_usuario_responsable, $id_tipo_empleado_responsable)
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table);

    $select->where(array('id_usuario_responsable'=>$id_usuario_responsable, 'id_tipo_empleado_responsable'=>$id_tipo_empleado_responsable), 'OR');

//    echo $select->getSqlString();
    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\ControlReporte(array(
        'id' => $row["id"],
        'id_plantilla' => $row["id_plantilla"],
        'id_usuario_responsable' => $row["id_usuario_responsable"],
        'id_tipo_empleado_responsable' => $row["id_tipo_empleado_responsable"],
        'id_cat_control_reporte' => $row["id_cat_control_reporte"],
      ));
      $entities[] = $entity->toArray();
    }
    return $entities;
  }

  public function fetchByIdPlantillaAndIdUsuario($id_plantilla, $id_usuario_responsable)
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table);

    $select->where(array('id_plantilla'=>$id_plantilla, 'id_usuario_responsable'=>$id_usuario_responsable));

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\ControlReporte(array(
        'id' => $row["id"],
        'id_plantilla' => $row["id_plantilla"],
        'id_usuario_responsable' => $row["id_usuario_responsable"],
        'id_tipo_empleado_responsable' => $row["id_tipo_empleado_responsable"],
        'id_cat_control_reporte' => $row["id_cat_control_reporte"],
      ));
      $entities[] = $entity->toArray();
    }
    return $entities;
  }

  public function fetchByIdPlantillaAndTipoEmpleado($id_plantilla, $id_tipo_empleado_responsable)
  {
    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table);

    $select->where(array('id_plantilla'=>$id_plantilla, 'id_tipo_empleado_responsable'=>$id_tipo_empleado_responsable));

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\ControlReporte(array(
        'id' => $row["id"],
        'id_plantilla' => $row["id_plantilla"],
        'id_usuario_responsable' => $row["id_usuario_responsable"],
        'id_tipo_empleado_responsable' => $row["id_tipo_empleado_responsable"],
        'id_cat_control_reporte' => $row["id_cat_control_reporte"],
      ));
      $entities[] = $entity->toArray();
    }
    return $entities;
  }

  public function remove($id) {
    return $this->delete(array('id' => (int) $id));
  }

}