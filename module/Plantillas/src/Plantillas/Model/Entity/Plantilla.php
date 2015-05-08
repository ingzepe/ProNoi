<?php

namespace Plantillas\Model\Entity;

class Plantilla {

    protected $_id;
    protected $_id_tipo_empleado;
    protected $_tipo_empleado;
    protected $_id_unidad_negocio;
    protected $_unidad_negocio;
    protected $_nombre;
    protected $_descripcion;

    public function __construct(array $options = null) {
        if (is_array($options)) {
            $this->setOptions($options);
        }
    }

//    public function __set($name, $value) {
//        $method = 'set' . $name;
//        if (!method_exists($this, $method)) {
//            throw new Exception('Invalid Method');
//        }
//        $this->$method($value);
//    }
//
//    public function __get($name) {
//        $method = 'get' . $name;
//        if (!method_exists($this, $method)) {
//            throw new Exception('Invalid Method');
//        }
//        return $this->$method();
//    }
//
//    public function setOptions(array $options) {
//        $methods = get_class_methods($this);
//        foreach ($options as $key => $value) {
//            $method = 'set' . ucfirst($key);
//            if (in_array($method, $methods)) {
//                $this->$method($value);
//            }
//        }
//        return $this;
//    }

    public function setOptions(array $options) {
        //an array of getters and setters
        $methods = get_class_methods($this);
        //loop through the options array and call setters
        foreach ($options as $key => $value) {
            //here we build an array of values as we set properties.
            $this->_data[$key] = $value;
            $method = 'set' . ucfirst($key);
            if (in_array($method, $methods)) {
                $this->$method($value);
            }
        }
        return $this;
    }

    //just return the array we built in setOptions
    public function toArray() {
        return $this->_data;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->_id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->_id = $id;
    }

    /**
     * @return mixed
     */
    public function getIdTipoEmpleado()
    {
        return $this->_id_tipo_empleado;
    }

    /**
     * @param mixed $id_tipo_empleado
     */
    public function setIdTipoEmpleado($id_tipo_empleado)
    {
        $this->_id_tipo_empleado = $id_tipo_empleado;
    }

    /**
     * @return mixed
     */
    public function getTipoEmpleado()
    {
        return $this->_tipo_empleado;
    }

    /**
     * @param mixed $tipo_empleado
     */
    public function setTipoEmpleado($tipo_empleado)
    {
        $this->_tipo_empleado = $tipo_empleado;
    }

    /**
     * @return mixed
     */
    public function getNombre()
    {
        return $this->_nombre;
    }

    /**
     * @param mixed $nombre
     */
    public function setNombre($nombre)
    {
        $this->_nombre = $nombre;
    }

    /**
     * @return mixed
     */
    public function getDescripcion()
    {
        return $this->_descripcion;
    }

    /**
     * @param mixed $descripcion
     */
    public function setDescripcion($descripcion)
    {
        $this->_descripcion = $descripcion;
    }

    /**
     * @return mixed
     */
    public function getIdUnidadNegocio()
    {
        return $this->_id_unidad_negocio;
    }

    /**
     * @param mixed $id_unidad_negocio
     */
    public function setIdUnidadNegocio($id_unidad_negocio)
    {
        $this->_id_unidad_negocio = $id_unidad_negocio;
    }

    /**
     * @return mixed
     */
    public function getUnidadNegocio()
    {
        return $this->_unidad_negocio;
    }

    /**
     * @param mixed $unidad_negocio
     */
    public function setUnidadNegocio($unidad_negocio)
    {
        $this->_unidad_negocio = $unidad_negocio;
    }

}

?>
