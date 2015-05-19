CREATE TABLE cat_formato ( 
    id INT IDENTITY NOT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    descripcion VARCHAR(50) NULL, 
    CONSTRAINT PK_cat_formato PRIMARY KEY (id)
)
GO
CREATE TABLE cat_regla_salida ( 
    id INT IDENTITY NOT NULL, 
    nombre VARCHAR(50) NULL, 
    descripcion VARCHAR(100) NULL, 
    CONSTRAINT PK_cat_regla_salida PRIMARY KEY (id)
)
GO
CREATE TABLE cat_repetir_campo ( 
    id INT NOT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    descripcion VARCHAR(50) NOT NULL, 
    CONSTRAINT PK_cat_repetir_campo PRIMARY KEY (id)
)
GO
CREATE TABLE cat_rol_usuario ( 
    id INT NOT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    descripcion VARCHAR(50) NOT NULL, 
    CONSTRAINT PK_cat_rol_usuario PRIMARY KEY (id)
)
GO
CREATE TABLE cat_tipo_campo ( 
    id INT NOT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    descripcion VARCHAR(50) NOT NULL, 
    CONSTRAINT PK_cat_tipo_campo PRIMARY KEY (id)
)
GO
CREATE TABLE cat_tipo_regla ( 
    id INT IDENTITY NOT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    descripcion VARCHAR(50) NOT NULL, 
    CONSTRAINT PK_cat_tipo_regla PRIMARY KEY (id)
)
GO
CREATE TABLE cat_tipo_reporte ( 
    id INT NOT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    descripcion VARCHAR(50) NOT NULL, 
    CONSTRAINT PK_cat_tipo_report PRIMARY KEY (id)
)
GO
CREATE TABLE tab_campo ( 
    id INT IDENTITY NOT NULL, 
    id_tab_plantilla INT NOT NULL, 
    id_tipo_campo INT NOT NULL, 
    id_cat_campo INT NULL, 
    id_regla_negocio INT NULL, 
    id_repetir_campo INT NULL, 
    id_formato INT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    descripcion VARCHAR(50) NULL, 
    prefijo VARCHAR(20) NULL, 
    sufijo VARCHAR(20) NULL, 
    valor VARCHAR(200) NULL, 
    repetir VARCHAR(100) NULL, 
    activo BIT NULL, 
    orden INT NULL, 
    color VARCHAR(10) NULL, 
    CONSTRAINT PK_tab_campo PRIMARY KEY (id), 
    CONSTRAINT FK_tab_campo_id_tab_plantilla FOREIGN KEY (id_tab_plantilla) REFERENCES tab_plantilla(id) ON DELETE CASCADE ON UPDATE NO ACTION, 
    CONSTRAINT FK_tab_campo_id_tipo_campo FOREIGN KEY (id_tipo_campo) REFERENCES cat_tipo_campo(id) ON DELETE CASCADE ON UPDATE NO ACTION, 
    CONSTRAINT FK_tab_campo_id_repetir_campo FOREIGN KEY (id_repetir_campo) REFERENCES cat_repetir_campo(id) ON DELETE CASCADE ON UPDATE NO ACTION, 
    CONSTRAINT FK_tab_campo_id_formato FOREIGN KEY (id_formato) REFERENCES cat_formato(id) ON DELETE CASCADE ON UPDATE NO ACTION
)
GO
CREATE TABLE tab_contenido_reporte ( 
    id INT NOT NULL, 
    id_reporte INT NOT NULL, 
    id_empleado INT NOT NULL, 
    id_campo INT NOT NULL, 
    valor VARCHAR(200) NOT NULL, 
    CONSTRAINT PK_tab_contenido_reporte PRIMARY KEY (id)
)
GO
CREATE TABLE tab_empleado ( 
    id INT IDENTITY NOT NULL, 
    id_tipo_empleado INT NOT NULL, 
    id_unidad INT NOT NULL, 
    id_mitrol INT NOT NULL, 
    id_rh INT NOT NULL, 
    nombre VARCHAR(100) NULL, 
    fecha_ingreso VARCHAR(12) NULL, 
    horario VARCHAR(12) NULL, 
    campana VARCHAR(50) NULL, 
    jefe VARCHAR(100) NULL, 
    sueldo_diario MONEY NULL, 
    CONSTRAINT PK_tab_empleado PRIMARY KEY (id), 
    CONSTRAINT FK_tab_empleado_id_unidad FOREIGN KEY (id_unidad) REFERENCES tab_unidad_negocio(id) ON DELETE NO ACTION ON UPDATE NO ACTION, 
    CONSTRAINT FK_tab_empleado_id_tipo_empleado FOREIGN KEY (id_tipo_empleado) REFERENCES tab_tipo_empleado(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
GO
CREATE TABLE tab_plantilla ( 
    id INT IDENTITY NOT NULL, 
    id_tipo_empleado INT NOT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    descripcion VARCHAR(200) NOT NULL, 
    CONSTRAINT PK_tab_plantilla PRIMARY KEY (id), 
    CONSTRAINT FK_tab_plantilla_id_tipo_empleado FOREIGN KEY (id_tipo_empleado) REFERENCES tab_tipo_empleado(id) ON DELETE CASCADE ON UPDATE NO ACTION
)
GO
CREATE TABLE tab_regla_negocio ( 
    id INT IDENTITY NOT NULL, 
    id_tipo_regla INT NOT NULL, 
    id_plantilla INT NOT NULL, 
    id_salida INT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    descripcion VARCHAR(50) NOT NULL, 
    operacion TEXT NOT NULL, 
    db VARCHAR(50) NULL, 
    CONSTRAINT PK_tab_regla_negocio PRIMARY KEY (id), 
    CONSTRAINT FK_tab_regla_negocio_id_tipo_regla FOREIGN KEY (id_tipo_regla) REFERENCES cat_tipo_regla(id) ON DELETE NO ACTION ON UPDATE NO ACTION, 
    CONSTRAINT FK_tab_regla_negocio_id_plantilla FOREIGN KEY (id_plantilla) REFERENCES tab_plantilla(id) ON DELETE NO ACTION ON UPDATE NO ACTION, 
    CONSTRAINT FK_tab_regla_negocio_id_salida FOREIGN KEY (id_salida) REFERENCES cat_regla_salida(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
GO
CREATE TABLE tab_reporte ( 
    id INT IDENTITY NOT NULL, 
    id_plantilla INT NOT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    descripcion VARCHAR(50) NOT NULL, 
    periodo VARCHAR(23) NOT NULL, 
    CONSTRAINT PK_tab_reporte PRIMARY KEY (id), 
    CONSTRAINT FK_tab_reporte_id_plantilla FOREIGN KEY (id_plantilla) REFERENCES tab_plantilla(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
GO
CREATE TABLE tab_tipo_empleado ( 
    id INT IDENTITY NOT NULL, 
    id_unidad INT NOT NULL, 
    tipo VARCHAR(35) NULL, 
    descripcion VARCHAR(50) NULL, 
    sueldo_base INT NULL, 
    CONSTRAINT PK_tab_tipo_empleado PRIMARY KEY (id), 
    CONSTRAINT FK_tab_tipo_empleado_id FOREIGN KEY (id_unidad) REFERENCES tab_unidad_negocio(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
GO
CREATE TABLE tab_unidad_negocio ( 
    id INT NOT NULL, 
    nombre VARCHAR(30) NOT NULL, 
    descripcion VARCHAR(50) NULL, 
    imagen VARCHAR(30) NULL, 
    CONSTRAINT PK_tab_unidad_negocio PRIMARY KEY (id)
)
GO
CREATE TABLE tab_usuario ( 
    id INT NOT NULL, 
    id_empleado INT NOT NULL, 
    id_rol_usuario INT NOT NULL, 
    nombre VARCHAR(35) NOT NULL, 
    password VARCHAR(35) NOT NULL, 
    CONSTRAINT PK_tab_usuario PRIMARY KEY (id), 
    CONSTRAINT FK_tab_usuario_id_rol_usuario FOREIGN KEY (id_rol_usuario) REFERENCES cat_rol_usuario(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)