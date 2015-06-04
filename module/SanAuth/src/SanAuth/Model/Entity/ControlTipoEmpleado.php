<?php

namespace SanAuth\Model\Entity;

class ControlTipoEmpleado
{

  protected $_id;
  protected $_id_usuario;
  protected $_id_tipo_empleado;

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
  public function getIdUsuario()
  {
    return $this->_id_usuario;
  }

  /**
   * @param mixed $id_usuario
   */
  public function setIdUsuario($id_usuario)
  {
    $this->_id_usuario = $id_usuario;
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

}

?>
