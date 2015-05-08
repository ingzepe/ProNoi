<?php

namespace Reglas\Model\Entity;

class Regla {

    protected $_id;
    protected $_id_tipo_regla;
    protected $_id_plantilla;
    protected $_id_salida;
    protected $_nombre;
    protected $_descripcion;
    protected $_operacion;
    protected $_tipo_regla;
    protected $_db;

    public function __construct(array $options = null) {
        if (is_array($options)) {
            $this->setOptions($options);
        }
    }

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
    public function getIdTipoRegla()
    {
        return $this->_id_tipo_regla;
    }

    /**
     * @param mixed $id_tipo_regla
     */
    public function setIdTipoRegla($id_tipo_regla)
    {
        $this->_id_tipo_regla = $id_tipo_regla;
    }

    /**
     * @return mixed
     */
    public function getIdPlantilla()
    {
        return $this->_id_plantilla;
    }

    /**
     * @param mixed $id_plantilla
     */
    public function setIdPlantilla($id_plantilla)
    {
        $this->_id_plantilla = $id_plantilla;
    }

    /**
     * @return mixed
     */
    public function getIdSalida()
    {
        return $this->_id_salida;
    }

    /**
     * @param mixed $id_salida
     */
    public function setIdSalida($id_salida)
    {
        $this->_id_salida = $id_salida;
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
    public function getOperacion()
    {
        return $this->_operacion;
    }

    /**
     * @param mixed $operacion
     */
    public function setOperacion($operacion)
    {
        $this->_operacion = $operacion;
    }

    /**
     * @return mixed
     */
    public function getTipoRegla()
    {
        return $this->_tipo_regla;
    }

    /**
     * @param mixed $tipo_regla
     */
    public function setTipoRegla($tipo_regla)
    {
        $this->_tipo_regla = $tipo_regla;
    }

    /**
     * @return mixed
     */
    public function getDb()
    {
        return $this->_db;
    }

    /**
     * @param mixed $db
     */
    public function setDb($db)
    {
        $this->_db = $db;
    }

}

?>
