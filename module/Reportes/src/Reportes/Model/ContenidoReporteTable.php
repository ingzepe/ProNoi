<?php

namespace Reportes\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class ContenidoReporteTable extends AbstractTableGateway {

    protected $table = 'tab_contenido_reporte';

    public function __construct(Adapter $adapter) {
        $this->adapter = $adapter;
    }

    public function saveHeader(Entity\ContenidoReporte $reporte) {
        $data = array(
            'id_reporte' => $reporte->getIdReporte(),
            'orden' => $reporte->getOrden(),
            'valor' => $reporte->getValor(),
        );
        if (!$this->insert($data)){
            return false;
        }else{
            return $this->getLastInsertValue();
        }
    }

    public function saveCampo(Entity\ContenidoReporte $reporte) {
        $data = array(
            'id_reporte' => $reporte->getIdReporte(),
            'id_empleado' => $reporte->getIdEmpleado(),
            'orden' => $reporte->getOrden(),
            'valor' => $reporte->getValor(),
        );
        if (!$this->insert($data)){
            return false;
        }else{
            return $this->getLastInsertValue();
        }
    }

    public function removeAll($id_reporte) {
        return $this->delete(array('id_reporte' => (int) $id_reporte));
    }

    public function fetchAll($id_reporte) {

        $sql = new Sql($this->adapter);
        $select = $sql->select();
        $select->from($this->table);

        $where = new  Where();
        $where->equalTo('tab_contenido_reporte.id_reporte', $id_reporte) ;
        $select->where($where);
        $select->order(array('id_empleado','orden'));

        $statement = $sql->prepareStatementForSqlObject($select);
        $resultSet = $statement->execute();

        $entities = array();
        foreach ($resultSet as $row) {
            $entity = new Entity\ContenidoReporte(array(
                'id' => $row["id"],
                'id_reporte' => $row["id_reporte"],
                'id_empleado' => $row["id_empleado"],
                'orden' => $row["orden"],
                'valor' => $row["valor"],
            ));
            $entities[] = $entity->toArray();
        }
        return $entities;
    }

}