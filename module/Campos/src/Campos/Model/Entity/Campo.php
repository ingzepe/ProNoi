<?php

namespace Campos\Model\Entity;

class Campo {

    protected $_id;
    protected $_id_tab_plantilla;
    protected $_id_tipo_campo;
    protected $_tipo;
    protected $_id_regla_negocio;
    protected $_id_repetir_campo;
    protected $_id_formato;
    protected $_nombre;
    protected $_descripcion;
    protected $_prefijo;
    protected $_sufijo;
    protected $_formato;
    protected $_valor;
    protected $_repetir;
    protected $_activo;
    protected $_orden;
    protected $_color;

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
    public function getIdTabPlantilla()
    {
        return $this->_id_tab_plantilla;
    }

    /**
     * @param mixed $id_tab_plantilla
     */
    public function setIdTabPlantilla($id_tab_plantilla)
    {
        $this->_id_tab_plantilla = $id_tab_plantilla;
    }

    /**
     * @return mixed
     */
    public function getIdTipoCampo()
    {
        return $this->_id_tipo_campo;
    }

    /**
     * @param mixed $id_tipo_campo
     */
    public function setIdTipoCampo($id_tipo_campo)
    {
        $this->_id_tipo_campo = $id_tipo_campo;
    }

    /**
     * @return mixed
     */
    public function getTipo()
    {
        return $this->_tipo;
    }

    /**
     * @param mixed $tipo
     */
    public function setTipo($tipo)
    {
        $this->_tipo = $tipo;
    }

    /**
     * @return mixed
     */
    public function getIdReglaNegocio()
    {
        return $this->_id_regla_negocio;
    }

    /**
     * @param mixed $id_regla_negocio
     */
    public function setIdReglaNegocio($id_regla_negocio)
    {
        $this->_id_regla_negocio = $id_regla_negocio;
    }

    /**
     * @return mixed
     */
    public function getIdRepetirCampo()
    {
        return $this->_id_repetir_campo;
    }

    /**
     * @param mixed $id_repetir_campo
     */
    public function setIdRepetirCampo($id_repetir_campo)
    {
        $this->_id_repetir_campo = $id_repetir_campo;
    }

    /**
     * @return mixed
     */
    public function getIdFormato()
    {
        return $this->_id_formato;
    }

    /**
     * @param mixed $id_formato
     */
    public function setIdFormato($id_formato)
    {
        $this->_id_formato = $id_formato;
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
    public function getPrefijo()
    {
        return $this->_prefijo;
    }

    /**
     * @param mixed $prefijo
     */
    public function setPrefijo($prefijo)
    {
        $this->_prefijo = $prefijo;
    }

    /**
     * @return mixed
     */
    public function getSufijo()
    {
        return $this->_sufijo;
    }

    /**
     * @param mixed $sufijo
     */
    public function setSufijo($sufijo)
    {
        $this->_sufijo = $sufijo;
    }

    /**
     * @return mixed
     */
    public function getFormato()
    {
        return $this->_formato;
    }

    /**
     * @param mixed $formato
     */
    public function setFormato($formato)
    {
        $this->_formato = $formato;
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

    /**
     * @return mixed
     */
    public function getRepetir()
    {
        return $this->_repetir;
    }

    /**
     * @param mixed $repetir
     */
    public function setRepetir($repetir)
    {
        $this->_repetir = $repetir;
    }

    /**
     * @return mixed
     */
    public function getActivo()
    {
        return $this->_activo;
    }

    /**
     * @param mixed $activo
     */
    public function setActivo($activo)
    {
        $this->_activo = $activo;
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
    public function getColor()
    {
        return $this->_color;
    }

    /**
     * @param mixed $color
     */
    public function setColor($color)
    {
        $this->_color = $color;
    }

}

?>
