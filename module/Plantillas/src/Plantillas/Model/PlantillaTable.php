<?php

namespace Plantillas\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class PlantillaTable extends AbstractTableGateway {

    protected $table = 'tab_plantilla';

    public function __construct(Adapter $adapter) {
        $this->adapter = $adapter;
    }

    public function save(Entity\Plantilla $plantilla) {
        $data = array(
            'id_tipo_empleado' => $plantilla->getIdTipoEmpleado(),
            'nombre' => $plantilla->getNombre(),
            'descripcion' => $plantilla->getDescripcion(),
        );
        $id = (int) $plantilla->getId();
        if ($id == 0) {
            if (!$this->insert($data)){
                return false;
            }else{
                return $this->getLastInsertValue();
            }
        }else{
            if (!$this->update($data, array('id' => $id))){
                return false;
            }else{
                return $id;
            }
        }
    }

    public function fetchAll() {

        $sql = new Sql($this->adapter);
        $select = $sql->select();
        $select->from($this->table)
            ->join('tab_tipo_empleado', 'tab_tipo_empleado.id = tab_plantilla.id_tipo_empleado',
                array('tipo_empleado' => 'tipo'))
            ->join('tab_unidad_negocio', 'tab_unidad_negocio.id = tab_tipo_empleado.id_unidad',
                array('id_unidad_negocio' => 'id', 'unidad_negocio' => 'nombre'));

//        echo $select->getSqlString();
        $statement = $sql->prepareStatementForSqlObject($select);
        $resultSet = $statement->execute();

        $entities = array();
        foreach ($resultSet as $row) {
            $entity = new Entity\Plantilla(array(
                'id' => $row["id"],
                'id_tipo_empleado' => $row["id_tipo_empleado"],
                'tipo_empleado' => $row["tipo_empleado"],
                'nombre' => $row["nombre"],
                'descripcion' => $row["descripcion"],
                'id_unidad_negocio' => $row["id_unidad_negocio"],
                'unidad_negocio' => $row["unidad_negocio"],
            ));
            $entities[] = $entity->toArray();
        }
        return $entities;
    }

    public function fetch($id) {

        $sql = new Sql($this->adapter);
        $select = $sql->select();
        $select->from($this->table)
            ->join('tab_tipo_empleado', 'tab_tipo_empleado.id = tab_plantilla.id_tipo_empleado',
                array('tipo_empleado' => 'tipo'))
            ->join('tab_unidad_negocio', 'tab_unidad_negocio.id = tab_tipo_empleado.id_unidad',
                array('id_unidad_negocio' => 'id', 'unidad_negocio' => 'nombre'));

        $where = new  Where();
        $where->equalTo('tab_plantilla.id', $id) ;
        $select->where($where);

        $statement = $sql->prepareStatementForSqlObject($select);
        $resultSet = $statement->execute();

        foreach ($resultSet as $row) {
            $entity = new Entity\Plantilla(array(
                'id' => $row["id"],
                'id_tipo_empleado' => $row["id_tipo_empleado"],
                'tipo_empleado' => $row["tipo_empleado"],
                'nombre' => $row["nombre"],
                'descripcion' => $row["descripcion"],
                'id_unidad_negocio' => $row["id_unidad_negocio"],
                'unidad_negocio' => $row["unidad_negocio"],
            ));
            $entity = $entity->toArray();
        }

        if(isset($entity)){
            return $entity;
        }else{
            return 0;
        }

    }

    public function fetchByName($nombre) {
        $row = $this->select(array('nombre' => $nombre))->current();
        if (!$row){
            $entity = new Entity\Plantilla(array(
                'id' => 0,
            ));
        }else{
            $entity = new Entity\Plantilla(array(
                'id' => $row["id"],
                'id_tipo_empleado' => $row["id_tipo_empleado"],
                'nombre' => $row["nombre"],
                'descripcion' => $row["descripcion"],
            ));
        }
        return $entity->toArray();
    }

    public function removePlantilla($id) {
        return $this->delete(array('id' => (int) $id));
    }

}