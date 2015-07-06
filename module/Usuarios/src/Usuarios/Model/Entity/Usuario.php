<?php

namespace Usuarios\Model\Entity;

class Usuario
{

  protected $_id;
  protected $_id_empleado;
  protected $_id_rol_usuario;
  protected $_nombre;
  protected $_empleado;
  protected $_rol;
  protected $_password;

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
  public function getIdRolUsuario()
  {
    return $this->_id_rol_usuario;
  }

  /**
   * @param mixed $id_rol_usuario
   */
  public function setIdRolUsuario($id_rol_usuario)
  {
    $this->_id_rol_usuario = $id_rol_usuario;
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
  public function getEmpleado()
  {
    return $this->_empleado;
  }

  /**
   * @param mixed $empleado
   */
  public function setEmpleado($empleado)
  {
    $this->_empleado = $empleado;
  }

  /**
   * @return mixed
   */
  public function getRol()
  {
    return $this->_rol;
  }

  /**
   * @param mixed $rol
   */
  public function setRol($rol)
  {
    $this->_rol = $rol;
  }

  /**
   * @return mixed
   */
  public function getPassword()
  {
    return $this->_password;
  }

  /**
   * @param mixed $password
   */
  public function setPassword($password)
  {
    $this->_password = $password;
  }

}

?>
