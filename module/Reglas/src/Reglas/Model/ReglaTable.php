<?php

namespace Reglas\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class ReglaTable extends AbstractTableGateway
{

  protected $table = 'tab_regla_negocio';

  public function __construct(Adapter $adapter)
  {
    $this->adapter = $adapter;
  }

  public function save(Entity\Regla $regla)
  {
    $data = array(
        'id_tipo_regla' => $regla->getIdTipoRegla(),
        'id_plantilla' => $regla->getIdPlantilla(),
        'id_salida' => $regla->getIdSalida(),
        'nombre' => $regla->getNombre(),
        'descripcion' => $regla->getDescripcion(),
        'operacion' => $regla->getOperacion(),
        'db' => $regla->getDb(),
    );
    $id = (int)$regla->getId();
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

  public function fetchAll($id_plantilla)
  {

    $sql = new Sql($this->adapter);
    $select = $sql->select();
    $select->from($this->table)
        ->join('cat_tipo_regla', 'cat_tipo_regla.id = tab_regla_negocio.id_tipo_regla',
            array('tipo_regla' => 'nombre'));

    $where = new  Where();
    $where->equalTo('tab_regla_negocio.id_plantilla', $id_plantilla);
    $select->where($where);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\Regla(array(
          'id' => $row["id"],
          'id_tipo_regla' => $row["id_tipo_regla"],
          'id_plantilla' => $row["id_plantilla"],
          'id_salida' => $row["id_salida"],
          'tipo_regla' => $row["tipo_regla"],
          'nombre' => $row["nombre"],
          'descripcion' => $row["descripcion"],
          'operacion' => $row["operacion"],
          'db' => $row["db"],
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
        ->join('cat_tipo_regla', 'cat_tipo_regla.id = tab_regla_negocio.id_tipo_regla',
            array('tipo_regla' => 'nombre'));

    $where = new  Where();
    $where->equalTo('tab_regla_negocio.id', $id);
    $select->where($where);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    foreach ($resultSet as $row) {
      $entity = new Entity\Regla(array(
          'id' => $row["id"],
          'id_tipo_regla' => $row["id_tipo_regla"],
          'id_plantilla' => $row["id_plantilla"],
          'id_salida' => $row["id_salida"],
          'tipo_regla' => $row["tipo_regla"],
          'nombre' => $row["nombre"],
          'descripcion' => $row["descripcion"],
          'operacion' => $row["operacion"],
          'db' => $row["db"],
      ));
      $entity = $entity->toArray();
    }
    if (isset($entity)) {
      return $entity;
    } else {
      return 0;
    }
  }

  public function fetchByPlantillaIdAndName($id_plantilla, $nombre)
  {
    $row = $this->select(array(
        'id_plantilla' => $id_plantilla,
        'nombre' => $nombre,
    ))->current();
    if (!$row) {
      $entity = new Entity\Regla(array(
          'id' => 0,
      ));
    } else {
      $entity = new Entity\Regla(array(
          'id' => $row["id"],
          'id_tipo_regla' => $row["id_tipo_regla"],
          'id_plantilla' => $row["id_plantilla"],
          'id_salida' => $row["id_salida"],
          'nombre' => $row["nombre"],
          'descripcion' => $row["descripcion"],
          'operacion' => $row["operacion"],
          'db' => $row["db"],
      ));
    }
    return $entity->toArray();
  }

  public function removeRegla($id)
  {
    return $this->delete(array('id' => (int)$id));
  }

  public function executeSQL($db, $query)
  {

    error_reporting(0);

    if ($db == "mitrol") {
      $server = "AIR-DELL";
      $user = "dev";
      $pass = "d3v";
    } else {
      $server = "AIR-DELL";
      $user = "dev";
      $pass = "d3v";
    }

    $connection = odbc_connect("Driver={SQL Server Native Client 10.0};Server=$server;Database=$db;", $user, $pass);
    $error = odbc_errormsg();

    if (!$error) {
      $result = odbc_exec($connection, $query);
      $error = odbc_errormsg();
      if (!$error) {
        $colNames = array();
        $colName = odbc_num_fields($result);
        for ($j = 1; $j <= $colName; $j++) {
          $colNames[] = odbc_field_name($result, $j);
        }
        $rows = array();
        while (odbc_fetch_row($result)) {
          $cols = array();
          for ($i = 1; $i <= odbc_num_fields($result); $i++) {
            $cols[] = odbc_result($result, $i);
          }
          $rows[] = $cols;
        }
        odbc_close($connection);
        return array('success' => true, 'cols' => $colNames, 'rows' => $rows);
      } else {
        return array('success' => false, 'message' => "Error al generar ejecutar el script sql:</br>" . $query . "</br>" . $error);
      }
    } else {
      return array('success' => false, 'message' => "Error al generar la conexión a la base de datos:</br>" . $query . "</br>" . $error);
    }
  }

  public function empleadoAsistencia($id_empleado, $inicio, $fin){

    error_reporting(0);

    $db = "mitrol";
    $server = "AIR-DELL";
    $user = "dev";
    $pass = "d3v";

    $inicio = "'".$inicio." 00:00:00'";
    $fin = "'".$fin." 23:59:59'";

    $query = "select
              DATEPART(YEAR, date) as anio,
              DATEPART(MONTH, date) as mes,
              DATEPART(DAY, date) as dia,
              MIN(date) as min
              from log where id_operador = $id_empleado and date between $inicio and $fin
              GROUP BY
              DATEPART(YEAR, date),
              DATEPART(MONTH, date),
              DATEPART(DAY, date)";

    $connection = odbc_connect("Driver={SQL Server Native Client 10.0};Server=$server;Database=$db;", $user, $pass);
    $error = odbc_errormsg();

    if (!$error) {
      $result = odbc_exec($connection, $query);
      $error = odbc_errormsg();
      if (!$error) {
        $rows = array();
        while (odbc_fetch_row($result)) {
          $cols = array();
          for ($i = 1; $i <= odbc_num_fields($result); $i++) {
            $cols[] = odbc_result($result, $i);
          }
          $rows[] = $cols;
        }
        odbc_close($connection);

        return array('success' => true, 'asistencias' => $rows);
      } else {
        return array('success' => false, 'message' => "Error al generar ejecutar el script sql:</br>" . $query . "</br>" . $error);
      }
    } else {
      return array('success' => false, 'message' => "Error al generar la conexión a la base de datos:</br>" . $query . "</br>" . $error);
    }
  }

}