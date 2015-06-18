<?php

namespace Reportes\Model\Entity;

class Reporte
{

  protected $_id;
  protected $_id_plantilla;
  protected $_nombre;
  protected $_descripcion;
  protected $_periodo;
  protected $_id_estado;
  protected $_estado;
  protected $_comentarios;

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
  public function getPeriodo()
  {
    return $this->_periodo;
  }

  /**
   * @param mixed $periodo
   */
  public function setPeriodo($periodo)
  {
    $this->_periodo = $periodo;
  }

  /**
   * @return mixed
   */
  public function getIdEstado()
  {
    return $this->_id_estado;
  }

  /**
   * @param mixed $id_estado
   */
  public function setIdEstado($id_estado)
  {
    $this->_id_estado = $id_estado;
  }

  /**
   * @return mixed
   */
  public function getEstado()
  {
    return $this->_estado;
  }

  /**
   * @param mixed $estado
   */
  public function setEstado($estado)
  {
    $this->_estado = $estado;
  }

  /**
   * @return mixed
   */
  public function getComentarios()
  {
    return $this->_comentarios;
  }

  /**
   * @param mixed $comentarios
   */
  public function setComentarios($comentarios)
  {
    $this->_comentarios = $comentarios;
  }

}

?>
