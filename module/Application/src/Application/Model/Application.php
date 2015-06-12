<?php
/**
 * Created by IntelliJ IDEA.
 * User: Armando
 * Date: 11/06/2015
 * Time: 09:24 AM
 */

namespace Application\Model;

use Zend\Config\Reader\Ini;


class Application {

  const ROL_ADMINISTRADOR             = 1;
  const ROL_ADMINISTRADOR_PLANTILLAS  = 2;
  const ROL_ADMINISTRADOR_REPORTES    = 3;
  const ROL_PERSONAL_NOMINA           = 4;
  const ROL_PERSONAL_RH               = 5;

  const CONTROL_REPORTE_GENERAR       = 1;
  const CONTROL_REPORTE_CONSULTAR     = 2;

  const REPORTE_ESTADO_CALCULANDO     = 1;
  const REPORTE_ESTADO_COMPLETADO     = 2;

  const TIPO_REGLA_SQL                = 1;
  const TIPO_FREGLA_RECURSIVA         = 2;
  const TIPO_REPETIR_CAMPO_FECHA      = 1;
  const TIPO_REPETIR_CAMPO_VECES      = 2;
  const CAMPO_ACTIVO                  = 1;
  const TIPO_CAMPO_CATALOGO           = 1;
  const TIPO_CAMPO_REGLA              = 2;
  const TIPO_CAMPO_VALOR              = 3;
  const TIPO_CAMPO_DINAMICO           = 4;
  const TIPO_EXP_CAMPO                = 1;
  const TIPO_EXP_REGLA                = 2;
  const TIPO_EXP_NUMERO               = 3;
  const TIPO_EXP_OPERADOR             = 4;
  const TIPO_EXP_PUNTO                = 5;
  const TIPO_EXP_PARENT_IZQ           = 6;
  const TIPO_EXP_PARENT_DER           = 7;
  const TIPO_EXP_EMPLEADO             = 8;

}