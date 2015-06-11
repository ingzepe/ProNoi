<?php

namespace SanAuth\Model\Entity;

class ControlReporte
{

  protected $_id;
  protected $_id_plantilla;
  protected $_id_usuario_responsable;
  protected $_id_tipo_empleado_responsable;
  protected $_id_cat_control_reporte;
  protected $_usuario_responsable;
  protected $_tipo_empleado_responsable;
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
  public function getIdUsuarioResponsable()
  {
    return $this->_id_usuario_responsable;
  }

  /**
   * @param mixed $id_usuario_responsable
   */
  public function setIdUsuarioResponsable($id_usuario_responsable)
  {
    $this->_id_usuario_responsable = $id_usuario_responsable;
  }

  /**
   * @return mixed
   */
  public function getIdTipoEmpleadoResponsable()
  {
    return $this->_id_tipo_empleado_responsable;
  }

  /**
   * @param mixed $id_tipo_empleado_responsable
   */
  public function setIdTipoEmpleadoResponsable($id_tipo_empleado_responsable)
  {
    $this->_id_tipo_empleado_responsable = $id_tipo_empleado_responsable;
  }

  /**
   * @return mixed
   */
  public function getIdCatControlReporte()
  {
    return $this->_id_cat_control_reporte;
  }

  /**
   * @param mixed $id_cat_control_reporte
   */
  public function setIdCatControlReporte($id_cat_control_reporte)
  {
    $this->_id_cat_control_reporte = $id_cat_control_reporte;
  }

  /**
   * @return mixed
   */
  public function getUsuarioResponsable()
  {
    return $this->_usuario_responsable;
  }

  /**
   * @param mixed $usuario_responsable
   */
  public function setUsuarioResponsable($usuario_responsable)
  {
    $this->_usuario_responsable = $usuario_responsable;
  }

  /**
   * @return mixed
   */
  public function getTipoEmpleadoResponsable()
  {
    return $this->_tipo_empleado_responsable;
  }

  /**
   * @param mixed $tipo_empleado_responsable
   */
  public function setTipoEmpleadoResponsable($tipo_empleado_responsable)
  {
    $this->_tipo_empleado_responsable = $tipo_empleado_responsable;
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
