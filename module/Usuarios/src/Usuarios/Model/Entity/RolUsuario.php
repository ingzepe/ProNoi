<?php

namespace Usuarios\Model\Entity;

class RolUsuario
{

  protected $_id;
  protected $_nombre;
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

}

?>
