<?php

namespace Usuarios\Model;

use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;

class UsuarioTable extends AbstractTableGateway {

    protected $table = 'tab_usuario';

    public function __construct(Adapter $adapter) {
        $this->adapter = $adapter;
    }

    public function save(Entity\Usuario $usuario) {
        $data = array(
            'id_empleado' => $usuario->getIdEmpleado(),
            'id_rol_usuario' => $usuario->getIdRolUsuario(),
            'nombre' => $usuario->getNombre(),
            'password' => $usuario->getPassword(),
        );
        $id = (int) $usuario->getId();
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
            ->join('tab_empleado', 'tab_empleado.id = tab_usuario.id_empleado',
              array('empleado' => 'nombre'))
            ->join('cat_rol_usuario', 'cat_rol_usuario.id = tab_usuario.id_rol_usuario',
              array('rol' => 'nombre'));

//        echo $select->getSqlString();
        $statement = $sql->prepareStatementForSqlObject($select);
        $resultSet = $statement->execute();

        $entities = array();
        foreach ($resultSet as $row) {
            $entity = new Entity\Usuario(array(
                'id' => $row["id"],
                'id_rol_usuario' => $row["id_rol_usuario"],
                'nombre' => $row["nombre"],
                'empleado' => $row["empleado"],
                'rol' => $row["rol"],
            ));
            $entities[] = $entity->toArray();
        }
        return $entities;
    }

    public function fetch($id) {

        $sql = new Sql($this->adapter);
        $select = $sql->select();
        $select->from($this->table)
        ->join('tab_empleado', 'tab_empleado.id = tab_usuario.id_empleado',
          array('empleado' => 'nombre'))
        ->join('cat_rol_usuario', 'cat_rol_usuario.id = tab_usuario.id_rol_usuario',
          array('rol' => 'nombre'));

        $where = new  Where();
        $where->equalTo('tab_usuario.id', $id) ;
        $select->where($where);

        $statement = $sql->prepareStatementForSqlObject($select);
        $resultSet = $statement->execute();

        foreach ($resultSet as $row) {
            $entity = new Entity\Usuario(array(
              'id' => $row["id"],
              'id_rol_usuario' => $row["id_rol_usuario"],
              'nombre' => $row["nombre"],
              'empleado' => $row["empleado"],
              'rol' => $row["rol"],
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

        $sql = new Sql($this->adapter);
        $select = $sql->select();
        $select->from($this->table)
          ->join('tab_empleado', 'tab_empleado.id = tab_usuario.id_empleado',
            array('id_tipo_empleado' => 'id_tipo_empleado'));

        $where = new  Where();
        $where->equalTo('tab_usuario.nombre', $nombre) ;
        $select->where($where);

        $statement = $sql->prepareStatementForSqlObject($select);
        $resultSet = $statement->execute();

        foreach ($resultSet as $row) {
            $entity = new Entity\Usuario(array(
              'id' => $row["id"],
              'id_rol_usuario' => $row["id_rol_usuario"],
              'nombre' => $row["nombre"],
              'id_tipo_empleado' => $row["id_tipo_empleado"],
            ));
        }

        if(isset($entity)){
            return $entity->toArray();
        }else{
            return 0;
        }

    }

    public function removeUsuario($id) {
        return $this->delete(array('id' => (int) $id));
    }

    public function fetchAllByIdRolesUsuario($ids) {

        $sql = new Sql($this->adapter);
        $select = $sql->select();
        $select->from($this->table);

        $where = new  Where();
        $where->in('tab_usuario.id_rol_usuario', $ids);
        $select->where($where);

        $statement = $sql->prepareStatementForSqlObject($select);
        $resultSet = $statement->execute();

        $entities = array();
        foreach ($resultSet as $row) {
            $entity = new Entity\Usuario(array(
              'id' => $row["id"],
              'id_rol_usuario' => $row["id_rol_usuario"],
              'nombre' => $row["nombre"],
            ));
            $entities[] = $entity->toArray();
        }
        return $entities;
    }

}