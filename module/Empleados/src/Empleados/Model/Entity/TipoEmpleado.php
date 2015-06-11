<?php

namespace Empleados\Model\Entity;

class TipoEmpleado
{

  //pronoi
  protected $_id;
  protected $_id_unidad;
  protected $_tipo;
  protected $_descripcion;

  public function __construct(array $options = null)
  {
    if (is_array($options)) {
      $this->setOptions($options);
    }
  }

  public function setOptions(array $options)
  {
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

  public function toArray()
  {
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

}

?>
