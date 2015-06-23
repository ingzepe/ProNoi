<?php

namespace Asistencia\Model\Entity;

class Asistencia
{

  protected $_id;
  protected $_id_empleado;
  protected $_id_cat_asistencia;
  protected $_fecha;
  protected $_asistencia;

  public function __construct(array $options = null)
  {
    if (is_array($options)) {
      $this->setOptions($options);
    }
  }

  public function setOptions(array $options)
  {
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
  public function getIdCatAsistencia()
  {
    return $this->_id_cat_asistencia;
  }

  /**
   * @param mixed $id_cat_asistencia
   */
  public function setIdCatAsistencia($id_cat_asistencia)
  {
    $this->_id_cat_asistencia = $id_cat_asistencia;
  }

  /**
   * @return mixed
   */
  public function getFecha()
  {
    return $this->_fecha;
  }

  /**
   * @param mixed $fecha
   */
  public function setFecha($fecha)
  {
    $this->_fecha = $fecha;
  }

  /**
   * @return mixed
   */
  public function getAsistencia()
  {
    return $this->_asistencia;
  }

  /**
   * @param mixed $asistencia
   */
  public function setAsistencia($asistencia)
  {
    $this->_asistencia = $asistencia;
  }

}

?>
