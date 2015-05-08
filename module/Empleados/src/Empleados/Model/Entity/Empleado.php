<?php

namespace Empleados\Model\Entity;

class Empleado {

    //pronoi
    protected $_id;
    protected $_id_tipo_empleado;
    protected $_id_unidad;
    protected $_id_mitron;
    protected $_id_rh;
    protected $_tipo_empleado;
    protected $_unidad_negocio;
    //protec
    protected $_nombre;
    protected $_fecha_ingreso;
    protected $_horario;
    protected $_campana;
    protected $_jefe;
    protected $_sueldo_diario;
    protected $_sueldo_quincenal;


    public function __construct(array $options = null) {
        if (is_array($options)) {
            $this->setOptions($options);
        }
    }

    public function setOptions(array $options) {
        $methods = get_class_methods($this);
        foreach ($options as $key => $value) {
            $this->_data[$key] = $value;
            $method = 'set' . ucfirst($key);
            if (in_array($method, $methods)) {
                $this->$method($value);
            }
        }
        return $this;
    }

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
    public function getIdUnidad()
    {
        return $this->_id_unidad;
    }

    /**
     * @param mixed $id_unidad
     */
    public function setIdUnidad($id_unidad)
    {
        $this->_id_unidad = $id_unidad;
    }

    /**
     * @return mixed
     */
    public function getIdMitron()
    {
        return $this->_id_mitron;
    }

    /**
     * @param mixed $id_mitron
     */
    public function setIdMitron($id_mitron)
    {
        $this->_id_mitron = $id_mitron;
    }

    /**
     * @return mixed
     */
    public function getIdRh()
    {
        return $this->_id_rh;
    }

    /**
     * @param mixed $id_rh
     */
    public function setIdRh($id_rh)
    {
        $this->_id_rh = $id_rh;
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
    public function getFechaIngreso()
    {
        return $this->_fecha_ingreso;
    }

    /**
     * @param mixed $fecha_ingreso
     */
    public function setFechaIngreso($fecha_ingreso)
    {
        $this->_fecha_ingreso = $fecha_ingreso;
    }

    /**
     * @return mixed
     */
    public function getHorario()
    {
        return $this->_horario;
    }

    /**
     * @param mixed $horario
     */
    public function setHorario($horario)
    {
        $this->_horario = $horario;
    }

    /**
     * @return mixed
     */
    public function getCampana()
    {
        return $this->_campana;
    }

    /**
     * @param mixed $campana
     */
    public function setCampana($campana)
    {
        $this->_campana = $campana;
    }

    /**
     * @return mixed
     */
    public function getJefe()
    {
        return $this->_jefe;
    }

    /**
     * @param mixed $jefe
     */
    public function setJefe($jefe)
    {
        $this->_jefe = $jefe;
    }

    /**
     * @return mixed
     */
    public function getSueldoDiario()
    {
        return $this->_sueldo_diario;
    }

    /**
     * @param mixed $sueldo_diario
     */
    public function setSueldoDiario($sueldo_diario)
    {
        $this->_sueldo_diario = $sueldo_diario;
    }

    /**
     * @return mixed
     */
    public function getSueldoQuincenal()
    {
        return $this->_sueldo_quincenal;
    }

    /**
     * @param mixed $sueldo_quincenal
     */
    public function setSueldoQuincenal($sueldo_quincenal)
    {
        $this->_sueldo_quincenal = $sueldo_quincenal;
    }

}

?>
