<?php

namespace Reportes\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class ReporteTable extends AbstractTableGateway {

    protected $table = 'tab_reporte';

    public function __construct(Adapter $adapter) {
        $this->adapter = $adapter;
    }

    public function save(Entity\Reporte $reporte) {
        $data = array(
            'id_plantilla' => $reporte->getIdPlantilla(),
            'nombre' => $reporte->getNombre(),
            'descripcion' => $reporte->getDescripcion(),
            'periodo' => $reporte->getPeriodo(),
        );
        $id = (int) $reporte->getId();
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

    public function fetchAll($id_plantilla) {

        $sql = new Sql($this->adapter);
        $select = $sql->select();
        $select->from($this->table);

        $where = new  Where();
        $where->equalTo('tab_reporte.id_plantilla', $id_plantilla) ;
        $select->where($where);

        $statement = $sql->prepareStatementForSqlObject($select);
        $resultSet = $statement->execute();

        $entities = array();
        foreach ($resultSet as $row) {
            $entity = new Entity\Reporte(array(
                'id' => $row["id"],
                'id_plantilla' => $row["id_plantilla"],
                'nombre' => $row["nombre"],
                'descripcion' => $row["descripcion"],
                'periodo' => $row["periodo"],
            ));
            $entities[] = $entity->toArray();
        }
        return $entities;
    }

    public function fetch($id) {

        $sql = new Sql($this->adapter);
        $select = $sql->select();
        $select->from($this->table);

        $where = new  Where();
        $where->equalTo('tab_reporte.id', $id) ;
        $select->where($where);

        $statement = $sql->prepareStatementForSqlObject($select);
        $resultSet = $statement->execute();

        foreach ($resultSet as $row) {
            $entity = new Entity\Reporte(array(
                'id' => $row["id"],
                'id_plantilla' => $row["id_plantilla"],
                'nombre' => $row["nombre"],
                'descripcion' => $row["descripcion"],
                'periodo' => $row["periodo"],
            ));
            $entity = $entity->toArray();
        }
        if(isset($entity)){
            return $entity;
        }else{
            return 0;
        }
    }

    public function fetchByPlantillaIdAndName($id_plantilla, $nombre) {
        $row = $this->select(array(
            'id_plantilla' => $id_plantilla,
            'nombre' => $nombre,
        ))->current();
        if (!$row){
            $entity = new Entity\Reporte(array(
                'id' => 0,
            ));
        }else{
            $entity = new Entity\Reporte(array(
                'id' => $row["id"],
                'id_plantilla' => $row["id_plantilla"],
                'nombre' => $row["nombre"],
                'descripcion' => $row["descripcion"],
                'periodo' => $row["periodo"],
            ));
        }
        return $entity->toArray();
    }

    public function removeReporte($id) {
        return $this->delete(array('id' => (int) $id));
    }

}