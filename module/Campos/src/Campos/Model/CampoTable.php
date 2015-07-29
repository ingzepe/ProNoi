<?php

namespace Campos\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class CampoTable extends AbstractTableGateway
{

  protected $table = 'tab_campo';

  public function __construct(Adapter $adapter)
  {
    $this->adapter = $adapter;
  }

  public function save(Entity\Campo $campo)
  {
    $data = array(
      'id_tab_plantilla' => $campo->getIdTabPlantilla(),
      'id_tipo_campo' => $campo->getIdTipoCampo(),
      'id_regla_negocio' => $campo->getIdReglaNegocio(),
      'id_repetir_campo' => $campo->getIdRepetirCampo(),
      'id_formato' => $campo->getIdFormato(),
      'nombre' => $campo->getNombre(),
      'descripcion' => $campo->getDescripcion(),
      'prefijo' => $campo->getPrefijo(),
      'sufijo' => $campo->getSufijo(),
      'valor' => $campo->getValor(),
      'repetir' => $campo->getRepetir(),
      'activo' => $campo->getActivo(),
      'orden' => $campo->getOrden(),
      'color' => $campo->getColor(),
      'clave' => $campo->getClave(),
    );
    $id = (int)$campo->getId();
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
    ->join('cat_tipo_campo', 'cat_tipo_campo.id = tab_campo.id_tipo_campo',
      array('tipo_campo' => 'nombre'));

    $where = new  Where();
    $where->equalTo('tab_campo.id_tab_plantilla', $id_plantilla);
    $select->where($where);
    $select->order(array('orden'));

//        echo $select->getSqlString();
    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    $entities = array();
    foreach ($resultSet as $row) {
      $entity = new Entity\Campo(array(
        'id' => $row["id"],
        'id_tab_plantilla' => $row["id_tab_plantilla"],
        'id_tipo_campo' => $row["id_tipo_campo"],
        'tipo_campo' => $row["tipo_campo"],
        'id_regla_negocio' => $row["id_regla_negocio"],
        'id_repetir_campo' => $row["id_repetir_campo"],
        'id_formato' => $row["id_formato"],
        'nombre' => $row["nombre"],
        'descripcion' => $row["descripcion"],
        'prefijo' => $row["prefijo"],
        'sufijo' => $row["sufijo"],
        'valor' => $row["valor"],
        'repetir' => $row["repetir"],
        'activo' => $row["activo"],
        'orden' => $row["orden"],
        'color' => $row["color"],
        'clave' => $row["clave"] != null && $row["clave"] != 'null' ? $row["clave"] : '',
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
    ->join('cat_tipo_campo', 'cat_tipo_campo.id = tab_campo.id_tipo_campo',
      array('tipo_campo' => 'nombre'));

    $where = new  Where();
    $where->equalTo('tab_campo.id', $id);
    $select->where($where);

    $statement = $sql->prepareStatementForSqlObject($select);
    $resultSet = $statement->execute();

    foreach ($resultSet as $row) {
      $entity = new Entity\Campo(array(
        'id' => $row["id"],
        'id_tab_plantilla' => $row["id_tab_plantilla"],
        'id_tipo_campo' => $row["id_tipo_campo"],
        'id_regla_negocio' => $row["id_regla_negocio"],
        'id_repetir_campo' => $row["id_repetir_campo"],
        'id_formato' => $row["id_formato"],
        'nombre' => $row["nombre"],
        'descripcion' => $row["descripcion"],
        'prefijo' => $row["prefijo"],
        'sufijo' => $row["sufijo"],
        'valor' => $row["valor"],
        'repetir' => $row["repetir"],
        'activo' => $row["activo"],
        'orden' => $row["orden"],
        'color' => $row["color"],
        'clave' => $row["clave"],
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
      'id_tab_plantilla' => $id_plantilla,
      'nombre' => $nombre,
    ))->current();
    if (!$row) {
      $entity = new Entity\Campo(array(
        'id' => 0,
      ));
    } else {
      $entity = new Entity\Campo(array(
        'id' => $row["id"],
        'id_tab_plantilla' => $row["id_tab_plantilla"],
        'id_tipo_campo' => $row["id_tipo_campo"],
        'id_regla_negocio' => $row["id_regla_negocio"],
        'id_repetir_campo' => $row["id_repetir_campo"],
        'id_formato' => $row["id_formato"],
        'nombre' => $row["nombre"],
        'descripcion' => $row["descripcion"],
        'prefijo' => $row["prefijo"],
        'sufijo' => $row["sufijo"],
        'valor' => $row["valor"],
        'repetir' => $row["repetir"],
        'activo' => $row["activo"],
        'orden' => $row["orden"],
        'color' => $row["color"],
      ));
    }
    return $entity->toArray();
  }

  public function removeCampo($id)
  {
    return $this->delete(array('id' => (int)$id));
  }

  public function updateActivo(Entity\Campo $campo)
  {
    $data = array(
      'activo' => $campo->getActivo(),
    );
    $id = (int)$campo->getId();
    if (!$this->update($data, array('id' => $id))) {
      return false;
    } else {
      return $id;
    }
  }

  public function updateOrdenByOrden($id_plantilla, $w_orden, $set_order)
  {
    $data = array(
      'orden' => $set_order,
    );
    if (!$this->update($data, array('id_tab_plantilla' => $id_plantilla, 'orden' => $w_orden))) {
      return false;
    } else {
      return true;
    }
  }

  public function updateOrdenById($id, $set_order)
  {
    $data = array(
      'orden' => $set_order,
    );
    if (!$this->update($data, array('id' => $id))) {
      return false;
    } else {
      return true;
    }
  }

  public function updateColor(Entity\Campo $campo)
  {
    $data = array(
      'color' => $campo->getColor(),
    );
    $id = (int)$campo->getId();
    if (!$this->update($data, array('id' => $id))) {
      return false;
    } else {
      return $id;
    }
  }

}