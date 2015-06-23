<?php

namespace Asistencia\Model\Entity;

class ControlAsistencia
{

  protected $_id;
  protected $_id_tipo_empleado;
  protected $_id_usuario;
  protected $_tipo_empleado;
  protected $_usuario;
  protected $_id_cat_control_asistencia;
  protected $_permisos;

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
  public function getUsuario()
  {
    return $this->_usuario;
  }

  /**
   * @param mixed $usuario
   */
  public function setUsuario($usuario)
  {
    $this->_usuario = $usuario;
  }

  /**
   * @return mixed
   */
  public function getIdCatControlAsistencia()
  {
    return $this->_id_cat_control_asistencia;
  }

  /**
   * @param mixed $id_cat_control_asistencia
   */
  public function setIdCatControlAsistencia($id_cat_control_asistencia)
  {
    $this->_id_cat_control_asistencia = $id_cat_control_asistencia;
  }

  /**
   * @return mixed
   */
  public function getPermisos()
  {
    return $this->_permisos;
  }

  /**
   * @param mixed $permisos
   */
  public function setPermisos($permisos)
  {
    $this->_permisos = $permisos;
  }
  
}

?>