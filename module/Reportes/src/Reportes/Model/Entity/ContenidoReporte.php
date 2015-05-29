<?php

namespace Reportes\Model\Entity;

class ContenidoReporte {

    protected $_id;
    protected $_id_reporte;
    protected $_id_empleado;
    protected $_orden;
    protected $_valor;

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
    public function getIdReporte()
    {
        return $this->_id_reporte;
    }

    /**
     * @param mixed $id_reporte
     */
    public function setIdReporte($id_reporte)
    {
        $this->_id_reporte = $id_reporte;
    }

    /**
     * @return mixed
     */
    public function getIdEmpleado()
    {
        return $this->_id_empleado;
    }

    /**
     * @param mixed $id_empleado
     */
    public function setIdEmpleado($id_empleado)
    {
        $this->_id_empleado = $id_empleado;
    }

    /**
     * @return mixed
     */
    public function getOrden()
    {
        return $this->_orden;
    }

    /**
     * @param mixed $orden
     */
    public function setOrden($orden)
    {
        $this->_orden = $orden;
    }

    /**
     * @return mixed
     */
    public function getValor()
    {
        return $this->_valor;
    }

    /**
     * @param mixed $valor
     */
    public function setValor($valor)
    {
        $this->_valor = $valor;
    }

}

?>
