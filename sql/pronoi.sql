USE [pronoi]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_formato]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_campo] DROP CONSTRAINT [FK_tab_campo_id_formato]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_repetir_campo]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_campo] DROP CONSTRAINT [FK_tab_campo_id_repetir_campo]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_tab_plantilla]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_campo] DROP CONSTRAINT [FK_tab_campo_id_tab_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_tipo_campo]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_campo] DROP CONSTRAINT [FK_tab_campo_id_tipo_campo]
GO
/****** Object:  ForeignKey [FK_tab_contenido_reporte_id_reporte]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_contenido_reporte] DROP CONSTRAINT [FK_tab_contenido_reporte_id_reporte]
GO
/****** Object:  ForeignKey [FK_tab_control_reporte_id_cat_control_reporte]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_control_reporte] DROP CONSTRAINT [FK_tab_control_reporte_id_cat_control_reporte]
GO
/****** Object:  ForeignKey [FK_tab_control_reporte_id_plantilla]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_control_reporte] DROP CONSTRAINT [FK_tab_control_reporte_id_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_control_reporte_id_tipo_empleado]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_control_reporte] DROP CONSTRAINT [FK_tab_control_reporte_id_tipo_empleado]
GO
/****** Object:  ForeignKey [FK_tab_control_reporte_id_usuario]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_control_reporte] DROP CONSTRAINT [FK_tab_control_reporte_id_usuario]
GO
/****** Object:  ForeignKey [FK_tab_empleado_id_tipo_empleado]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_empleado] DROP CONSTRAINT [FK_tab_empleado_id_tipo_empleado]
GO
/****** Object:  ForeignKey [FK_tab_empleado_id_unidad]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_empleado] DROP CONSTRAINT [FK_tab_empleado_id_unidad]
GO
/****** Object:  ForeignKey [FK_tab_plantilla_id_tipo_empleado]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_plantilla] DROP CONSTRAINT [FK_tab_plantilla_id_tipo_empleado]
GO
/****** Object:  ForeignKey [FK_tab_regla_negocio_id_plantilla]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_regla_negocio] DROP CONSTRAINT [FK_tab_regla_negocio_id_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_regla_negocio_id_salida]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_regla_negocio] DROP CONSTRAINT [FK_tab_regla_negocio_id_salida]
GO
/****** Object:  ForeignKey [FK_tab_regla_negocio_id_tipo_regla]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_regla_negocio] DROP CONSTRAINT [FK_tab_regla_negocio_id_tipo_regla]
GO
/****** Object:  ForeignKey [FK_tab_reporte_id_estado]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_reporte] DROP CONSTRAINT [FK_tab_reporte_id_estado]
GO
/****** Object:  ForeignKey [FK_tab_reporte_id_plantilla]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_reporte] DROP CONSTRAINT [FK_tab_reporte_id_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_tipo_empleado_id]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_tipo_empleado] DROP CONSTRAINT [FK_tab_tipo_empleado_id]
GO
/****** Object:  ForeignKey [FK_tab_usuario_id_empleado]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_usuario] DROP CONSTRAINT [FK_tab_usuario_id_empleado]
GO
/****** Object:  ForeignKey [FK_tab_usuario_id_rol_usuario]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_usuario] DROP CONSTRAINT [FK_tab_usuario_id_rol_usuario]
GO
/****** Object:  Table [dbo].[tab_contenido_reporte]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_contenido_reporte] DROP CONSTRAINT [FK_tab_contenido_reporte_id_reporte]
GO
DROP TABLE [dbo].[tab_contenido_reporte]
GO
/****** Object:  Table [dbo].[tab_control_reporte]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_control_reporte] DROP CONSTRAINT [FK_tab_control_reporte_id_cat_control_reporte]
GO
ALTER TABLE [dbo].[tab_control_reporte] DROP CONSTRAINT [FK_tab_control_reporte_id_plantilla]
GO
ALTER TABLE [dbo].[tab_control_reporte] DROP CONSTRAINT [FK_tab_control_reporte_id_tipo_empleado]
GO
ALTER TABLE [dbo].[tab_control_reporte] DROP CONSTRAINT [FK_tab_control_reporte_id_usuario]
GO
DROP TABLE [dbo].[tab_control_reporte]
GO
/****** Object:  Table [dbo].[tab_regla_negocio]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_regla_negocio] DROP CONSTRAINT [FK_tab_regla_negocio_id_plantilla]
GO
ALTER TABLE [dbo].[tab_regla_negocio] DROP CONSTRAINT [FK_tab_regla_negocio_id_salida]
GO
ALTER TABLE [dbo].[tab_regla_negocio] DROP CONSTRAINT [FK_tab_regla_negocio_id_tipo_regla]
GO
DROP TABLE [dbo].[tab_regla_negocio]
GO
/****** Object:  Table [dbo].[tab_reporte]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_reporte] DROP CONSTRAINT [FK_tab_reporte_id_estado]
GO
ALTER TABLE [dbo].[tab_reporte] DROP CONSTRAINT [FK_tab_reporte_id_plantilla]
GO
ALTER TABLE [dbo].[tab_reporte] DROP CONSTRAINT [DF_tab_reporte_id_estado]
GO
DROP TABLE [dbo].[tab_reporte]
GO
/****** Object:  Table [dbo].[tab_usuario]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_usuario] DROP CONSTRAINT [FK_tab_usuario_id_empleado]
GO
ALTER TABLE [dbo].[tab_usuario] DROP CONSTRAINT [FK_tab_usuario_id_rol_usuario]
GO
DROP TABLE [dbo].[tab_usuario]
GO
/****** Object:  Table [dbo].[tab_campo]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_campo] DROP CONSTRAINT [FK_tab_campo_id_formato]
GO
ALTER TABLE [dbo].[tab_campo] DROP CONSTRAINT [FK_tab_campo_id_repetir_campo]
GO
ALTER TABLE [dbo].[tab_campo] DROP CONSTRAINT [FK_tab_campo_id_tab_plantilla]
GO
ALTER TABLE [dbo].[tab_campo] DROP CONSTRAINT [FK_tab_campo_id_tipo_campo]
GO
DROP TABLE [dbo].[tab_campo]
GO
/****** Object:  Table [dbo].[tab_empleado]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_empleado] DROP CONSTRAINT [FK_tab_empleado_id_tipo_empleado]
GO
ALTER TABLE [dbo].[tab_empleado] DROP CONSTRAINT [FK_tab_empleado_id_unidad]
GO
ALTER TABLE [dbo].[tab_empleado] DROP CONSTRAINT [DF_tab_empleado_activo]
GO
DROP TABLE [dbo].[tab_empleado]
GO
/****** Object:  Table [dbo].[tab_plantilla]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_plantilla] DROP CONSTRAINT [FK_tab_plantilla_id_tipo_empleado]
GO
DROP TABLE [dbo].[tab_plantilla]
GO
/****** Object:  Table [dbo].[tab_tipo_empleado]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_tipo_empleado] DROP CONSTRAINT [FK_tab_tipo_empleado_id]
GO
DROP TABLE [dbo].[tab_tipo_empleado]
GO
/****** Object:  Table [dbo].[tab_unidad_negocio]    Script Date: 06/16/2015 21:09:05 ******/
DROP TABLE [dbo].[tab_unidad_negocio]
GO
/****** Object:  Table [dbo].[cat_control_reporte]    Script Date: 06/16/2015 21:09:04 ******/
DROP TABLE [dbo].[cat_control_reporte]
GO
/****** Object:  Table [dbo].[cat_estado_reporte]    Script Date: 06/16/2015 21:09:04 ******/
DROP TABLE [dbo].[cat_estado_reporte]
GO
/****** Object:  Table [dbo].[cat_formato]    Script Date: 06/16/2015 21:09:04 ******/
DROP TABLE [dbo].[cat_formato]
GO
/****** Object:  Table [dbo].[cat_regla_salida]    Script Date: 06/16/2015 21:09:04 ******/
DROP TABLE [dbo].[cat_regla_salida]
GO
/****** Object:  Table [dbo].[cat_repetir_campo]    Script Date: 06/16/2015 21:09:04 ******/
DROP TABLE [dbo].[cat_repetir_campo]
GO
/****** Object:  Table [dbo].[cat_rol_usuario]    Script Date: 06/16/2015 21:09:04 ******/
DROP TABLE [dbo].[cat_rol_usuario]
GO
/****** Object:  Table [dbo].[cat_tipo_campo]    Script Date: 06/16/2015 21:09:04 ******/
DROP TABLE [dbo].[cat_tipo_campo]
GO
/****** Object:  Table [dbo].[cat_tipo_regla]    Script Date: 06/16/2015 21:09:04 ******/
DROP TABLE [dbo].[cat_tipo_regla]
GO
/****** Object:  Table [dbo].[cat_tipo_reporte]    Script Date: 06/16/2015 21:09:04 ******/
DROP TABLE [dbo].[cat_tipo_reporte]
GO
/****** Object:  Table [dbo].[cat_tipo_reporte]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_tipo_reporte](
	[id] [int] NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cat_tipo_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cat_tipo_regla]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_tipo_regla](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cat_tipo_regla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cat_tipo_regla] ON
INSERT [dbo].[cat_tipo_regla] ([id], [nombre], [descripcion]) VALUES (1, N'SQL', N'SQL')
INSERT [dbo].[cat_tipo_regla] ([id], [nombre], [descripcion]) VALUES (2, N'Recursiva', N'Recursiva')
SET IDENTITY_INSERT [dbo].[cat_tipo_regla] OFF
/****** Object:  Table [dbo].[cat_tipo_campo]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_tipo_campo](
	[id] [int] NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cat_tipo_campo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[cat_tipo_campo] ([id], [nombre], [descripcion]) VALUES (1, N'Catálogo', N'Catálogo')
INSERT [dbo].[cat_tipo_campo] ([id], [nombre], [descripcion]) VALUES (2, N'Regla de Negocio', N'Regla de Negocio')
INSERT [dbo].[cat_tipo_campo] ([id], [nombre], [descripcion]) VALUES (3, N'Valor', N'Valor')
INSERT [dbo].[cat_tipo_campo] ([id], [nombre], [descripcion]) VALUES (4, N'Dinámico', N'Dinámico')
/****** Object:  Table [dbo].[cat_rol_usuario]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_rol_usuario](
	[id] [int] NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cat_rol_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[cat_rol_usuario] ([id], [nombre], [descripcion]) VALUES (1, N'Administrador', N'Administrador')
INSERT [dbo].[cat_rol_usuario] ([id], [nombre], [descripcion]) VALUES (2, N'Administrador de Plantillas', N'Genera plantillas, campos y reglas de negocio')
INSERT [dbo].[cat_rol_usuario] ([id], [nombre], [descripcion]) VALUES (3, N'Administrador de Reportes', N'Permite configurar y ejecutar reportes')
INSERT [dbo].[cat_rol_usuario] ([id], [nombre], [descripcion]) VALUES (4, N'Personal Nomina', N'Solo puede consultar reportes completados')
INSERT [dbo].[cat_rol_usuario] ([id], [nombre], [descripcion]) VALUES (5, N'Personal RH', N'Permite administrar empleados')
/****** Object:  Table [dbo].[cat_repetir_campo]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_repetir_campo](
	[id] [int] NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cat_repetir_campo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[cat_repetir_campo] ([id], [nombre], [descripcion]) VALUES (1, N'Fecha', N'Fecha')
INSERT [dbo].[cat_repetir_campo] ([id], [nombre], [descripcion]) VALUES (2, N'Veces', N'Veces')
/****** Object:  Table [dbo].[cat_regla_salida]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_regla_salida](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_cat_regla_salida] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cat_regla_salida] ON
INSERT [dbo].[cat_regla_salida] ([id], [nombre], [descripcion]) VALUES (1, N'Número', N'Número')
INSERT [dbo].[cat_regla_salida] ([id], [nombre], [descripcion]) VALUES (2, N'Texto', N'Texto')
INSERT [dbo].[cat_regla_salida] ([id], [nombre], [descripcion]) VALUES (3, N'Fecha', N'Fecha')
SET IDENTITY_INSERT [dbo].[cat_regla_salida] OFF
/****** Object:  Table [dbo].[cat_formato]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_formato](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_cat_formato] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cat_formato] ON
INSERT [dbo].[cat_formato] ([id], [nombre], [descripcion]) VALUES (1, N'Texto', N'Texto')
INSERT [dbo].[cat_formato] ([id], [nombre], [descripcion]) VALUES (2, N'Número', N'Número')
INSERT [dbo].[cat_formato] ([id], [nombre], [descripcion]) VALUES (3, N'Moneda', N'Moneda')
INSERT [dbo].[cat_formato] ([id], [nombre], [descripcion]) VALUES (4, N'Fecha', N'Fecha')
SET IDENTITY_INSERT [dbo].[cat_formato] OFF
/****** Object:  Table [dbo].[cat_estado_reporte]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_estado_reporte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cat_estado_reporte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cat_estado_reporte] ON
INSERT [dbo].[cat_estado_reporte] ([id], [nombre], [descripcion]) VALUES (1, N'Calculando', N'Calculando')
INSERT [dbo].[cat_estado_reporte] ([id], [nombre], [descripcion]) VALUES (2, N'Completado', N'Completado')
SET IDENTITY_INSERT [dbo].[cat_estado_reporte] OFF
/****** Object:  Table [dbo].[cat_control_reporte]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_control_reporte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cat_control_reporte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cat_control_reporte] ON
INSERT [dbo].[cat_control_reporte] ([id], [nombre], [descripcion]) VALUES (1, N'Generar', N'Generar reporte, configurar y ejecutar')
INSERT [dbo].[cat_control_reporte] ([id], [nombre], [descripcion]) VALUES (2, N'Consultar', N'Consultar reporte')
SET IDENTITY_INSERT [dbo].[cat_control_reporte] OFF
/****** Object:  Table [dbo].[tab_unidad_negocio]    Script Date: 06/16/2015 21:09:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_unidad_negocio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[imagen] [varchar](30) NULL,
 CONSTRAINT [PK_tab_unidad_negocio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tab_unidad_negocio] ON
INSERT [dbo].[tab_unidad_negocio] ([id], [nombre], [descripcion], [imagen]) VALUES (1, N'Club de Asistencia', N'Club de Asistencia', NULL)
INSERT [dbo].[tab_unidad_negocio] ([id], [nombre], [descripcion], [imagen]) VALUES (2, N'Proventel', N'Proventel', NULL)
INSERT [dbo].[tab_unidad_negocio] ([id], [nombre], [descripcion], [imagen]) VALUES (3, N'Protec', N'Protec', NULL)
SET IDENTITY_INSERT [dbo].[tab_unidad_negocio] OFF
/****** Object:  Table [dbo].[tab_tipo_empleado]    Script Date: 06/16/2015 21:09:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_tipo_empleado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_unidad] [int] NOT NULL,
	[tipo] [varchar](35) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_tab_tipo_empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tab_tipo_empleado] ON
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (1, 1, N'Operador Telefónico', N'Operador Telefónico')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (2, 1, N'Supervisor', N'Supervisor')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (3, 1, N'Monitor', N'Monitor')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (4, 1, N'Analista de Calidad', N'Analista de Calidad')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (5, 1, N'Operador Telefónico Bilingüe', N'Operador Telefónico Bilingüe')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (6, 1, N'Team Leader', N'Team Leader')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (7, 1, N'Retención', N'Retención')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (8, 1, N'Ventas', N'Ventas')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (9, 1, N'Profesora', N'Profesora')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (10, 1, N'Bilingüe', N'Bilingüe')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (12, 1, N'Ventas Bilingüe', N'Ventas Bilingüe')
INSERT [dbo].[tab_tipo_empleado] ([id], [id_unidad], [tipo], [descripcion]) VALUES (13, 3, N'TI', N'TI')
SET IDENTITY_INSERT [dbo].[tab_tipo_empleado] OFF
/****** Object:  Table [dbo].[tab_plantilla]    Script Date: 06/16/2015 21:09:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_plantilla](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_tipo_empleado] [int] NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tab_plantilla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tab_plantilla] ON
INSERT [dbo].[tab_plantilla] ([id], [id_tipo_empleado], [nombre], [descripcion]) VALUES (113, 1, N'Plantilla Incidencias', N'Plantilla Incidencias')
INSERT [dbo].[tab_plantilla] ([id], [id_tipo_empleado], [nombre], [descripcion]) VALUES (119, 1, N'Plantilla Bonos', N'Plantilla Bonos')
SET IDENTITY_INSERT [dbo].[tab_plantilla] OFF
/****** Object:  Table [dbo].[tab_empleado]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_empleado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_tipo_empleado] [int] NOT NULL,
	[id_unidad] [int] NOT NULL,
	[id_mitrol] [int] NULL,
	[id_rh] [int] NULL,
	[nombre] [varchar](100) NULL,
	[fecha_ingreso] [datetime] NULL,
	[horario] [varchar](12) NULL,
	[campana] [varchar](200) NULL,
	[jefe] [varchar](100) NULL,
	[sueldo_diario] [money] NULL,
	[activo] [bit] NULL CONSTRAINT [DF_tab_empleado_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_tab_empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tab_empleado] ON
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (1, 1, 1, NULL, 92, N'BECERRA SALAZAR FRANCISCO JAVIER', NULL, N'09:00-18:00', N'Liverpool', NULL, 146.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (2, 1, 1, 3090, 322, N'RIVERA SANTIAGO JOSEFINA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (3, 1, 1, 236, 518, N'MARTINEZ MORENO MARIA ALEJANDRA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (4, 1, 1, 767, 524, N'PEREZ FRAUSTO GABRIELA MATILDE', NULL, N'09:00-18:00', N'Coppel', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (5, 1, 1, 860, 556, N'HERNANDEZ NAVARRETE MARINA', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 150.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (6, 1, 1, 312, 559, N'MARTINEZ RAMOS MARISOL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (7, 2, 1, 2046, 723, N'SANCHEZ MIRANDA VERONICA CASTULA', NULL, N'09:00-18:00', N'Liverpool', NULL, 293.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (8, 1, 1, 521, 922, N'SANTIAGO VARELA AMIRA GUADALUPE', NULL, N'09:00-18:00', N'Coppel', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (9, 2, 1, 339, 962, N'FUENTES HERNANDEZ BIANCA LLUVIA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 293.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (10, 1, 1, 313, 1006, N'GALINDO VERGARA ROCIO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (11, 3, 1, 303, 1007, N'GARCIA MARTINEZ JORGE ARMANDO', NULL, N'09:00-18:00', N'WFM', NULL, 150.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (12, 2, 1, NULL, 1027, N'ORTIZ MOSCOSA NOEMI CONCEPCION', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 293.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (13, 2, 1, NULL, 1063, N'SANCHEZ SANCHEZ JORGE', NULL, N'09:00-18:00', N'Todas las campañas', NULL, 293.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (14, 1, 1, NULL, 1128, N'HIDALGO GARNICA WALTHER ARTURO', NULL, N'09:00-18:00', N'Coppel', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (15, 2, 1, 389, 1130, N'RAMIREZ RUEDA JOSEFINA', NULL, N'09:00-18:00', N'H&B', NULL, 293.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (16, 4, 1, 340, 1193, N'ROMERO HERNANDEZ JORGE', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (17, 2, 1, 338, 2464, N'NIETO SANCHEZ JESUS ISMAEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 360.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (18, 1, 1, 337, 2503, N'JACINTO GALINDO RAFAEL IRAN', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (19, 1, 1, 343, 2615, N'ALVARADO BAUTISTA IVAN RICARDO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (20, 2, 1, 341, 2633, N'AGUILAR SALINAS LAURA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (21, 1, 1, 324, 2805, N'CARRERA HERNANDEZ MARIA DEL ROSARIO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (22, 1, 1, 320, 2951, N'LICEA MERCADO ANGELICA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (23, 1, 1, 346, 3078, N'AGUILAR PEREZ CESAR MIGUEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (24, 1, 1, 928, 3228, N'LOPEZ VENEGAS NAYADE NAYEELI', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (25, 2, 1, 476, 3326, N'BARCENAS HERNANDEZ ROMAN', NULL, N'09:00-18:00', N'Mesa Ae Control', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (26, 1, 1, 392, 3541, N'UGARTECHEA SAAVEDRA ROBERTO', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (27, 2, 1, 162, 3558, N'CAMACHO GONZALEZ MARIO ALBERTO', NULL, N'09:00-18:00', N'C&A', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (28, 1, 1, 334, 3559, N'LOPEZ ESPINOSA MARIA DEL CARMEN', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (29, 1, 1, 235, 3673, N'CARRANZA DE LA CRUZ LUIS ARMANDO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (30, 1, 1, 492, 3755, N'LOPEZ SOTO MARIA DE LA LUZ GUAD', NULL, N'09:00-18:00', N'Nocturno 1', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (31, 5, 1, 342, 3836, N'ESCOBAR CERON ARMANDO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 150.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (32, 1, 1, 656, 3885, N'LOPEZ HERNANDEZ PEDRO', NULL, N'09:00-18:00', N'Liverpool', NULL, 150.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (33, 2, 1, 161, 3922, N'BARRIENTOS FLORES MARIA DE LOURDES', NULL, N'09:00-18:00', N'C&A', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (34, 1, 1, 332, 3986, N'NAVARRO ORTEGA BERTHA MARISELA', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (35, 1, 1, 327, 4022, N'LARA RUIZ EMMANUEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (36, 2, 1, 445, 4052, N'ALARCON FRAGOSO GENARO', NULL, N'09:00-18:00', NULL, NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (37, 5, 1, 245, 4175, N'GONZALEZ CHIM DANIEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (38, 1, 1, 574, 4177, N'TAPIA LUGO J MARIO ADAN', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (39, 1, 1, 329, 4185, N'CHAVEZ REYES OSCAR FRANCISCO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (40, 1, 1, 859, 4346, N'SIERRA GUZMAN ANABEL', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (41, 2, 1, 553, 4421, N'AGUIRRE HERRERA ARTURO', NULL, N'09:00-18:00', N'Axtel', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (42, 1, 1, 380, 4423, N'ZARAGOZA MOLINA GABRIEL', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (43, 1, 1, 217, 4453, N'OSORIO PACHECO PAULINA', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (44, 1, 1, 315, 4456, N'ROJAS BAUTISTA ANTONIO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (45, 5, 1, 291, 4516, N'CHAVEZ OROZCO ANEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (46, 1, 1, NULL, 4578, N'RETANA ROSAS LUIS ALBERTO', NULL, N'09:00-18:00', N'WFM', NULL, 116.1600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (47, 6, 1, 1140, 4617, N'VILLARREAL RODRIGUEZ MARTHA ANGELICA', NULL, N'09:00-18:00', N'R. Axtel', NULL, 166.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (48, 1, 1, 564, 4685, N'MARTINEZ CHAVEZ LILIANA', NULL, N'09:00-18:00', N'Nocturno 1', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (49, 2, 1, 554, 4714, N'LEON ALVARADO JOSE DANIEL', NULL, N'09:00-18:00', N'Axtel', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (50, 1, 1, 540, 4755, N'PALACIOS GONZALEZ MARIA TERESA', NULL, N'09:00-18:00', N'Axtel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (51, 6, 1, 806, 4783, N'SANCHEZ BARRAGAN YESENIA', NULL, N'09:00-18:00', N'R. Axtel', NULL, 173.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (52, 5, 1, 1199, 4847, N'PEREZ FONSECA LOURDES YOLANDA', NULL, N'09:00-18:00', N'Ambulancias', NULL, 76.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (53, 5, 1, 924, 4869, N'HERRERA SANCHEZ JAVIER', NULL, N'09:00-18:00', N'Nocturno 1', NULL, 266.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (54, 1, 1, 934, 4964, N'DIAZ DOMINGUEZ GLORIA HAYDEE', NULL, N'09:00-18:00', N'Nocturno 1', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (55, 6, 1, 742, 4984, N'SALAZAR RAMIREZ ALFONSO', NULL, N'09:00-18:00', N'R. C&A', NULL, 173.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (56, 2, 1, 347, 5074, N'RANGEL PACHECO CESAR', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (57, 1, 1, 393, 5127, N'HERNANDEZ DE LA CRUZ DULCE MARIA', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (58, 1, 1, 281, 5163, N'GARCIA ARELLANO GERMAN', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (59, 1, 1, 537, 5212, N'TUFIÑO CAMACHO MIGUEL ANGEL', NULL, N'09:00-18:00', N'Coppel', NULL, 150.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (60, 2, 1, 152, 5302, N'MIRALRIO RAZO HUGO ENRIQUE', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (61, 2, 1, 740, 5335, N'MORALES VILLAFUERTE MARIO CESAR', NULL, N'09:00-18:00', N'R. C&A', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (62, 1, 1, 698, 5344, N'ROJO NIÑO CESAR IGNACIO', NULL, N'09:00-18:00', N'ACE', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (63, 2, 1, 938, 5377, N'MERINO MEDINA ISRAEL ALEJANDRO', NULL, N'09:00-18:00', N'ACE', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (64, 1, 1, 1194, 5394, N'TRUJILLO CRUZ ERICK GIOVANNY', NULL, N'09:00-18:00', N'Ambulancias', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (65, 1, 1, 434, 5424, N'VAZQUEZ GUTIERREZ IVAN ALEJANDRO', NULL, N'09:00-18:00', N'Coppel', NULL, 250.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (66, 1, 1, 539, 5492, N'FLORES SANTOS GERARDO RUBIEL', NULL, N'09:00-18:00', N'Axtel', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (67, 1, 1, 491, 5525, N'BAUTISTA MOLINERO MIGUEL ANGEL', NULL, N'09:00-18:00', N'Nocturno 1', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (68, 1, 1, 335, 5583, N'ARIAS TORRES MIGUEL ANGEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (69, 7, 1, 790, 5646, N'RAMOS AMBRIZ LETICIA', NULL, N'09:00-18:00', N'Axtel RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (70, 8, 1, NULL, 5664, N'SALGADO HURTADO SERGIO', NULL, N'09:00-18:00', N'R. Axtel', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (71, 7, 1, 805, 5669, N'LUNA APARICIO LUIS DANIEL', NULL, N'09:00-18:00', N'R. Axtel', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (72, 1, 1, 683, 5742, N'NAVARRO ZUÑIGA MIGUEL ANGEL', NULL, N'09:00-18:00', N'Coppel', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (73, 1, 1, 561, 5795, N'FLORES HERNANDEZ JOSE RODOLFO', NULL, N'09:00-18:00', N'H&B', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (74, 1, 1, 512, 5799, N'SAN AGUSTIN OAXACA OSCAR MARIO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (75, 1, 1, 394, 5830, N'GARCIA TENOPALA ARMANDO', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (76, 5, 1, 321, 5984, N'ALVAREZ SOSA CARLOS ENRIQUE', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (77, 1, 1, 694, 5986, N'MARIN CHAVEZ JOSE CARLOS', NULL, N'09:00-18:00', N'Ambulancias', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (78, 7, 1, 620, 5993, N'GONZALEZ MEJORADA YADIRA', NULL, N'09:00-18:00', N'Axtel RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (79, 5, 1, 333, 6015, N'OROZCO SOTO MARIA CRISTINA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (80, 5, 1, 246, 6017, N'ESPINOSA LUCAS ARMANDO DIEGO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (81, 5, 1, 247, 6048, N'DIAZ MONDRAGON ELIZABETH', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (82, 5, 1, 304, 6066, N'ROJAS ALLENDE JESUS ALBERTO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (83, 5, 1, 303, 6068, N'GARCIA MARTINEZ JESSICA FABIOLA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (84, 1, 1, 372, 6091, N'MARTINEZ VILLEGAS REBECA ALEJANDRA', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (85, 1, 1, 819, 6110, N'SEGURA BADILLO FABIOLA', NULL, N'09:00-18:00', N'Liverpool', NULL, 76.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (86, 1, 1, 465, 6192, N'FLORES URRUTIA MARIA EUGENIA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (87, 1, 1, 571, 6285, N'OLVERA ACEVEDO IRENE ROSALIA', NULL, N'09:00-18:00', N'Qualitas/GBM', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (88, 5, 1, 365, 6373, N'IBARRA VAZQUEZ LAURA EUNICE', NULL, N'09:00-18:00', N'WFM', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (89, 5, 1, 519, 6584, N'MOLINA HERNANDEZ MARIA LETICIA', NULL, N'09:00-18:00', N'Coppel', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (90, 5, 1, 869, 6595, N'HERRERA CORTE SERGIO ARTURO', NULL, N'09:00-18:00', N'Liverpool', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (91, 1, 1, 517, 6617, N'SANTIAGO VARGAS VANIA YUNUHEN', NULL, N'09:00-18:00', N'Coppel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (92, 2, 1, 607, 6826, N'VALLEJO MELGOZA SAVY EVELYN', NULL, N'09:00-18:00', N'TOAAS LAS CAMPAÑAS', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (93, 1, 1, 272, 6920, N'ISLAS HERNANDEZ JULIAN', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (94, 2, 1, 632, 6927, N'OLIVA CEREZO HECTOR ARIEL', NULL, N'09:00-18:00', N'R. Axtel', NULL, 233.3300, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (95, 1, 1, 373, 6982, N'ALVARADO SANCHEZ PABLO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (96, 6, 1, 741, 7054, N'ANGELES NOLASCO JESSICA IVETTE', NULL, N'09:00-18:00', N'R. C&A', NULL, 166.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (97, 1, 1, 293, 7091, N'  ELIZABETH', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (98, 1, 1, 487, 7127, N'DOMINGUEZ ENCISO RUBEN OMAR', NULL, N'09:00-18:00', N'Super Aliviane/ Nomimass/ C&A Empleados/Mujeres Tlalnepantla/Mex Gas', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (99, 5, 1, 454, 7135, N'SANCHEZ HERNANDEZ DOLORES PAMELA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (100, 1, 1, 384, 7225, N'CORIA HERNANDEZ CHRISTIAN HERNAN', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (101, 1, 1, 1048, 7248, N'DIAZ MARTINEZ ROSARIO', NULL, N'09:00-18:00', N'Nocturno 1', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (102, 1, 1, 242, 7255, N'RAMIREZ TELLEZ MAYUMI MADAY', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (103, 5, 1, 534, 7271, N'NEGRETE RAMIREZ JUANA MARGARITA', NULL, N'09:00-18:00', N'Coppel', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (104, 5, 1, 306, 7300, N'LUCAS MAURICIO MARIA DEL CARMEN', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (105, 1, 1, 376, 7331, N'RAMIREZ LEAL PATRICIA', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (106, 1, 1, 250, 7332, N'SANCHEZ NAVARRETE CARLOS', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (107, 7, 1, 724, 7360, N'MOLINAR SANDOVAL MAXIMILIANO', NULL, N'09:00-18:00', N'C&A RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (108, 7, 1, 734, 7483, N'GONZALEZ MORENO JOSE FRANCISCO', NULL, N'09:00-18:00', N'C&A RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (109, 5, 1, 361, 7502, N'SANCHEZ GUADARRAMA LOURDES', NULL, N'09:00-18:00', N'Liverpool', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (110, 1, 1, 516, 7509, N'CORTES MORENO EDUARDO GABRIEL', NULL, N'09:00-18:00', N'Coppel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (111, 5, 1, 455, 7511, N'SOTO ROJAS JHASUA', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 266.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (112, 1, 1, 550, 7512, N'ORTEGA MARTINEZ ALFREDO', NULL, N'09:00-18:00', N'H&B', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (113, 1, 1, 486, 7514, N'PAZ HERNANDEZ GIOVANNI', NULL, N'09:00-18:00', N'Super Aliviane/ Nomimass/ C&A Empleados/Mujeres Tlalnepantla/Mex Gas', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (114, 5, 1, 1015, 7580, N'SANCHEZ COLORADO JUAN ALBERTO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (115, 7, 1, 798, 7688, N'VELASCO SANCHEZ SANDRA', NULL, N'09:00-18:00', N'Axtel RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (116, 7, 1, 778, 7706, N'FERNANDEZ RAMOS ROSA MARIA', NULL, N'09:00-18:00', N'Axtel RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (117, 7, 1, 779, 7767, N'FLORES DOMINGUEZ GERARDO', NULL, N'09:00-18:00', N'Axtel RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (118, 1, 1, 416, 7827, N'MONROY MENDOZA ERICK', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (119, 7, 1, 722, 7836, N'GONZALEZ LUNA SILVIA ARACELI', NULL, N'09:00-18:00', N'C&A RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (120, 7, 1, 883, 7916, N'SOLARES LUNA MAYRA', NULL, N'09:00-18:00', N'C&A RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (121, 7, 1, 782, 7953, N'GODINEZ HERREJON MARIA ESTHER', NULL, N'09:00-18:00', N'Axtel RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (122, 1, 1, 426, 8034, N'TERRAZAS VAZQUEZ ALDO GERMAN', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (123, 1, 1, 423, 8035, N'ESPINOSA MERCADO JORGE ALBERTO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (124, 1, 1, 1204, 8113, N'SANTILLAN VILLANUEVA LUIS JAVIER', NULL, N'09:00-18:00', N'H&B', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (125, 1, 1, 695, 8252, N'VALLEJO MELGOZA KAREN SAMANTHA', NULL, N'09:00-18:00', N'Nocturno 1', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (126, 5, 1, 456, 8293, N'ARAIZA ORIARD GLORIA DEL CARMEN', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (127, 1, 1, 864, 8324, N'PEREZ ROJAS ANTONIO', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (128, 1, 1, 459, 8332, N'SOLIS SOTO OSVALDO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (129, 5, 1, 532, 8476, N'RODRIGUEZ RAMIREZ LUIS FERNADO', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (130, 7, 1, 733, 8751, N'GARCIA YAÑEZ ERIKA ROCIO', NULL, N'09:00-18:00', N'C&A RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (131, 1, 1, 689, 8800, N'GONZALEZ SILVA JESSICA', NULL, N'09:00-18:00', N'Coppel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (132, 1, 1, 468, 8865, N'CARRERA ROJAS JOSE ISRAEL', NULL, N'09:00-18:00', N'Qualitas/GBM', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (133, 5, 1, 471, 8936, N'REYES MARTINEZ MARIA LUISA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (134, 1, 1, 469, 8937, N'LOMBARDO GOMEZ ESTHER MARGARITA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (135, 5, 1, 837, 9099, N'CORONA ROBLES MARIA GABRIELA', NULL, N'09:00-18:00', N'Liverpool', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (136, 1, 1, NULL, 9152, N'MORENO JUAREZ FABIOLA', NULL, N'09:00-18:00', N'WFM', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (137, 5, 1, 873, 9154, N'ANDRADE HERNANDEZ FELIPE', NULL, N'09:00-18:00', N'Liverpool', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (138, 5, 1, 1196, 9166, N'TORRES RIVERA JORGE LUIS', NULL, N'09:00-18:00', N'Nocturno 1', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (139, 5, 1, 594, 9316, N'GUTIERREZ REZA ANGELICA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (140, 5, 1, 874, 9317, N'GARAY MORENO JAVIER ISAIAS', NULL, N'09:00-18:00', N'Nocturno 1', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (141, 5, 1, 587, 9394, N'HORMIGA REYNOSO EDITH', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (142, 7, 1, 785, 9474, N'HERNANDEZ HUERTA ANDRE AARON', NULL, N'09:00-18:00', N'Axtel RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (143, 7, 1, 783, 9541, N'GOMEZ MARIA DE LOS ANGELES', NULL, N'09:00-18:00', N'Axtel RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (144, 1, 1, 609, 9558, N'ALBAÑIL VARGAS GRETEL', NULL, N'09:00-18:00', N'Axtel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (145, 1, 1, 835, 9715, N'SERNA VIEYRA RAUL', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (146, 9, 1, NULL, 9743, N'MARQUEZ MARQUEZ SANDRA LUCIA', NULL, N'09:00-18:00', N'Asesoria Escolar', NULL, 200.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (147, 1, 1, 1205, 9920, N'BERNAL BIZARRO MARIA AIDA', NULL, N'09:00-18:00', N'H&B', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (148, 5, 1, 676, 9923, N'YAÑEZ GUTIERREZ CARLOS FERNANDO', NULL, N'09:00-18:00', N'Nocturno 2', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (149, 1, 1, 752, 10081, N'RAMIREZ ROSAS GABRIEL', NULL, N'09:00-18:00', N'Ambulancias', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (150, 1, 1, 759, 10111, N'RODRIGUEZ AYALA OSCAR EDGAR', NULL, N'09:00-18:00', N'Axtel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (151, 1, 1, 880, 10413, N'DEL CASTILLO GUTIERREZ  BRISA GUADALUPE', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (152, 5, 1, 966, 10628, N'HERNANDEZ CAMACHO VICTOR ', NULL, N'09:00-18:00', N'Liverpool', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (153, 5, 1, 992, 10674, N'MARCIAL GONZALEZ GUILLERMO OLAV', NULL, N'09:00-18:00', N'Liverpool', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (154, 1, 1, 982, 10723, N'DOMINGUEZ SANCHEZ MARICELA', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (155, 5, 1, 995, 10767, N'PEREZ MARTINEZ LAURA', NULL, N'09:00-18:00', N'Axtel', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (156, 7, 1, NULL, 11089, N'LOPEZ RAMOS LUIS ANGEL', NULL, N'09:00-18:00', N'Axtel RRT', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (157, 1, 1, 1176, 11112, N'GONZALEZ PEREZ LUIS IVAN', NULL, N'09:00-18:00', N'Coppel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (158, 7, 1, 1232, 11349, N'GARCIA MIRANDA DIANA ', NULL, N'09:00-18:00', N'C&A RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (159, 7, 1, 1233, 11350, N'MUÑOZ LOZANO RAFAEL ANTONIO ', NULL, N'09:00-18:00', N'C&A RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (160, 1, 1, 1242, 11352, N'ALCANTARA HERNANDEZ VICTOR', NULL, N'09:00-18:00', N'H&B', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (161, 5, 1, 1307, 11446, N'PEREZ OLVERA ISMAEL ', NULL, N'09:00-18:00', N'Liverpool', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (162, 1, 1, 1272, 11449, N'OROZCO MATAMOROS MARVIN ANTONIO ', NULL, N'09:00-18:00', N'H&B', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (163, 1, 1, 1283, 11450, N'TORRES RIVERA MARIANA ', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (164, 7, 1, 1273, 11454, N'CASTRO SAN AGUSTIN ROCIO ', NULL, N'09:00-18:00', N'Axtel RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (165, 1, 1, 1313, 11532, N'GAITAN RIVERA FREDDY ARMANDO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (166, 1, 1, 1353, 11730, N'CERVANTES HERNANDEZ LUIS DANIEL', NULL, N'09:00-18:00', N'Coppel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (167, 1, 1, 1354, 11731, N'CRISOSTOMO GODINEZ EVIR', NULL, N'09:00-18:00', N'Coppel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (168, 7, 1, 1367, 11805, N'FLORES MIRANDA JADE', NULL, N'09:00-18:00', N'C&A RRT', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (169, 12, 1, 1422, 11807, N'VILLEDA IGLESIAS JEAN CARLOS', NULL, N'09:00-18:00', N'Coppel', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (170, 1, 1, 1464, 12070, N'PAULINO CUAMANI TAMARA AMAIRANI', NULL, N'09:00-18:00', N'Liverpool', NULL, 121.9400, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (171, 1, 1, 1467, 12073, N'GONZALEZ PEÑA PATRICIA', NULL, N'09:00-18:00', N'Coppel', NULL, 121.9400, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (172, 1, 1, 1462, 12075, N'MENDOZA SALAZAR KAREN HAYDEE', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 121.9400, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (173, 1, 1, 1492, 12159, N'ANGULO MENDOZA GUSTAVO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (174, 1, 1, 1490, 12161, N'CRUZ GONZALEZ ELEAZAR', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (175, 1, 1, 1488, 12165, N'ROJO NAVA CRISTIAN', NULL, N'09:00-18:00', N'Axtel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (176, 1, 1, 1518, 12232, N'LOPEZ MARTINEZ MARIA ALEJANDRA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (177, 1, 1, 1551, 12276, N'GUERRA CHAPULA LAURA LUISA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (178, 1, 1, 1562, 12334, N'ORTEGA PATRICIO CRUZ IGNACIO ', NULL, N'09:00-18:00', N'Qualitas/GBM', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (179, 1, 1, 1573, 12348, N'HERNANDEZ MERA GABRIELA ', NULL, N'09:00-18:00', N'Liverpool', NULL, 121.9400, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (180, 1, 1, 1575, 12370, N'LORA CABALLERO DIEGO EFREN ', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (181, 1, 1, 1259, 12436, N'SANCHEZ MARTINEZ MARIA EDITH', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (182, 1, 1, 1616, 12452, N'FARFAN ORTIZ IVAN JOSUE', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (183, 1, 1, 1614, 12484, N'SUAREZ VELAZQUEZ CESAR URIEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (184, 1, 1, 1635, 12486, N'VAZQUEZ CONTRERAS ROCIO', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (185, 1, 1, 1623, 12488, N'IBARRA ANTONIO JOSE OMAR', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (186, 5, 1, 1660, 12541, N'CORTES MACEDONIO JOSE LUIS', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (187, 5, 1, 1672, 12583, N'SERNA BALLESTEROS JOSE CARLOS', NULL, N'09:00-18:00', N'Liverpool', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (188, 1, 1, 1669, 12617, N'JUAREZ ALVAREZ CHRISTIAN GABRIEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (189, 1, 1, 1668, 12618, N'GALVEZ PEREZ ALFONSO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (190, 5, 1, 1697, 12620, N'ALCANTARA SANCHEZ CLAUDIA AMAIRANI', NULL, N'09:00-18:00', N'ACE', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (191, 1, 1, 1662, 12622, N'CENTENO LUGO LUIS MANUEL', NULL, N'09:00-18:00', N'H&B', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (192, 1, 1, 1681, 12666, N'MONROY PEREZ MARTHA PATRICIA', NULL, N'09:00-18:00', N'H&B', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (193, 1, 1, 1699, 12722, N'LANDEROS GARCIA JORGE ALFREDO ', NULL, N'09:00-18:00', N'Qualitas/GBM', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (194, 1, 1, 1703, 12740, N'RENTERIA MENDEZ OSCAR', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (195, 1, 1, 1700, 12741, N'FLORES FERRUSQUIA LUIS DANIEL ', NULL, N'09:00-18:00', N'Qualitas/GBM', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (196, 1, 1, 1712, 12743, N'FERNANDEZ MARTINEZ CINTHYA JAZMIN ', NULL, N'09:00-18:00', N'H&B', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (197, 1, 1, 1715, 12744, N'TORIBIO ELGUERA VICENTE HERIBERTO ', NULL, N'09:00-18:00', N'Axtel', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (198, 1, 1, 1723, 12745, N'SANCHEZ GARCIA ABIGAIL ', NULL, N'09:00-18:00', N'Liverpool', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (199, 1, 1, 1728, 12785, N'MOSQUEDA LEYVA MARCO ANTONIO ', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (200, 1, 1, 1727, 12786, N'MORALES ALVAREZ LESSLY VANESSA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (201, 1, 1, 1719, 12787, N'ESTRADA ORTIZ RAFAEL DAMIÁN ', NULL, N'09:00-18:00', N'Coppel', NULL, 116.6700, 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (202, 5, 1, 1726, 12789, N'PEREZ POLITO ANA KAREN ', NULL, N'09:00-18:00', N'Liverpool', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (203, 5, 1, 1757, 12881, N'ROSAS BECERRIL CARLOS ALBERTO', NULL, N'09:00-18:00', N'LIVERPOOL', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (204, 1, 1, 1755, 12884, N'SOTO RUBIO SAMUEL ABRAHAM', NULL, N'09:00-18:00', N'LIVERPOOL', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (205, 1, 1, 1752, 12886, N'PEREZ VERA MYRNA LETICIA', NULL, N'09:00-18:00', N'ASIGNACION ', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (206, 5, 1, 1759, 12890, N'RANGEL GARCIA ANA RUT', NULL, N'09:00-18:00', N'LIVERPOOL', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (207, 1, 1, 1776, 12946, N'AGUILAR GARCIA HUMBERTO', NULL, N'09:00-18:00', N'LIVERPOOL', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (208, 5, 1, 1779, 12947, N'GONZALEZ RIVERA MARISOL', NULL, N'09:00-18:00', N'LIVERPOOL', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (209, 1, 1, 1803, 12988, N'VAZQUEZ BETANCOURT FREDY', NULL, N'09:00-18:00', N'ASIGNACION ', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (210, 1, 1, 1798, 13040, N'MEDINA HERNANDEZ DAVID CESAR ', NULL, N'09:00-18:00', N'LIVERPOOL', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (211, 1, 1, 1805, 13043, N'NUÑEZ SANDOVAL SYLVIA ', NULL, N'09:00-18:00', N'ASIGNACION ', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (212, 1, 1, 1809, 13059, N'PESQUEIRA DEL RIO FRANCISCO JAVIER', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (213, 1, 1, 1846, 13078, N'GUTIERREZ PEREZ LUCIA CANDIDA', NULL, N'09:00-18:00', N'ASIGNACION ', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (214, 1, 1, 1835, 13121, N'MENDEZ MARTINEZ EDUARDO', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (215, 7, 1, 1832, 13123, N'RODRIGUEZ MORALES XIMENA', NULL, N'09:00-18:00', N'RETENCION C&A', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (216, 7, 1, 1833, 13124, N'CANCINO CORTES CONSUELO', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (217, 1, 1, 1852, 13125, N'LAZCANO DURIEL JUAN ALEJANDRO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (218, 1, 1, 1858, 13176, N'MILLAN IZASMENDI JORGE', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL ', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (219, 1, 1, 1857, 13177, N'GOMEZ GARCIA PATRICIA', NULL, N'09:00-18:00', N'ASISTENCIA AXTEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (220, 1, 1, 1838, 13178, N'HEREDIA PALMA AMPARO AYLIN', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL ', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (221, 1, 1, 1859, 13179, N'VILLALBA ESPINOZA REBECA', NULL, N'09:00-18:00', N'ASISTENCIA QUALITAS', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (222, 5, 1, 1853, 13184, N'OCAMPO GARDUÑO SUNI ARELI', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (223, 1, 1, 1864, 13225, N'VERA SOTO MAIRA SUSANA', NULL, N'09:00-18:00', N'COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (224, 1, 1, NULL, 13227, N'TORRES VILLAFAN DIEGO', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (225, 1, 1, 1863, 13229, N'FLORES MENDOZA VICTOR MANUEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (226, 1, 1, 1868, 13256, N'NERI SALAZAR HECTOR RICARDO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (227, 1, 1, 1870, 13257, N'ROJAS LOPEZ VERONICA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (228, 1, 1, 1865, 13261, N'GARCIA GOMEZ EVELYN ROSARIO', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (229, 1, 1, 1901, 13336, N'NAVARRETE DEL PRADO FRANCISCO JAVIER', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (230, 1, 1, 1909, 13382, N'GALLO GARCIA JORGE', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (231, 1, 1, 1892, 13387, N'MORALES LUNA DEMETRIO EDUARDO', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (232, 1, 1, 1962, 13536, N'BARRERA TRUJILLO ANAHID', NULL, N'09:00-18:00', N'ASISTENCIA H&B', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (233, 1, 1, 1965, 13538, N'LEW MATA ANTONIA CARMEN', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (234, 7, 1, 1971, 13541, N'PEREZ ARGUETA ALFREDO', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (235, 1, 1, 1960, 13542, N'CORIA REYNOSO BELEM', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (236, 1, 1, 1963, 13544, N'RAMIREZ SANCHEZ MONTSERRAT', NULL, N'09:00-18:00', N'ASISTENCIA QUALITAS', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (237, 1, 1, 1969, 13545, N'RESILLAS REBOLLAR ALEXIS IVAN', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (238, 1, 1, 1961, 13547, N'GUERRERO LEON SAID ALEJANDRO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (239, 1, 1, 1967, 13548, N'VEGA RODRIGUEZ JOSELIN FERNANDA', NULL, N'09:00-18:00', N'ASISTENCIA H&B', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (240, 1, 1, 1975, 13598, N'NOVOA GONZALEZ IZEL', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (241, 1, 1, 2102, 13619, N'BALLESTEROS VALDES HECTOR JAVIER', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (242, 1, 1, 1999, 13636, N'BALLESTEROS LOPEZ ANGELICA YAZMIN', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (243, 1, 1, 2004, 13640, N'GARCIA ARCE DULCE ALEJANDRA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (244, 1, 1, 2023, 13683, N'CASTILLO ZAMORA YANIRED', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (245, 7, 1, 2005, 13685, N'ARMENTA REYES LUIS ANTONIO', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (246, 1, 1, 2028, 13686, N'ROJAS VIVEROS GERARDO ROGELIO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (247, 1, 1, 2027, 13731, N'VAZQUEZ PALOMO MARIA DE LOURDES', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (248, 1, 1, 2030, 13732, N'LOZANO UGALDE RAMSES OSVALDO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (249, 1, 1, 2036, 13767, N'ZAMORA GARCIA PATRICIA ALEJANDRA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (250, 7, 1, NULL, 13768, N'DONIS CHICO MERCEDES KARINA', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (251, 1, 1, 2037, 13770, N'HERNANDEZ ALVAREZ ALMA DOLORES', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (252, 1, 1, 2058, 13831, N'LECHUGA ORTEGA CASSANDRA', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (253, 7, 1, 2055, 13887, N'HUERTA BALBUENA ENRIQUE', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (254, 1, 1, 2052, 13890, N'MONTESINOS RUIZ ABEL', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (255, 7, 1, 2057, 13896, N'BUCIO ROSAS ANGELICA MARIA', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (256, 1, 1, 2050, 13897, N'GOMEZ MONTENEGRO JONATHAN', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (257, 7, 1, 2062, 13943, N'RESENDIZ CAMPOS CITLALI BERENICE', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (258, 1, 1, NULL, 13949, N'MORALES LUNA CAROLINA', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (259, 1, 1, 2114, 13951, N'VELAZQUEZ VAZQUEZ CRISTIAN EMMANUEL', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (260, 1, 1, 2098, 13952, N'FLORES BRAVO JOSE GUSTAVO', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (261, 1, 1, 2115, 14000, N'PEÑA CASTILLO MARIA DE LOURDES', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (262, 1, 1, 2118, 14002, N'OAXACA CEBALLOS BARBARA', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (263, 2, 1, 2232, 14051, N'ORTIZ RUIZ RICARDO OMAR', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 233.3333, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (264, 7, 1, 2117, 14055, N'LUGO SILVA EDGAR EDUARDO', NULL, N'09:00-18:00', N'RETENCION C&A', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (265, 1, 1, 2148, 14099, N'NUÑEZ RUEDA JUAN FRANCISCO', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (266, 1, 1, 2156, 14105, N'ALVARADO GARCIA KARLA VERONICA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (267, 1, 1, NULL, 14110, N'ROBLES PEREZ GUADALUPE GABRIEL', NULL, N'09:00-18:00', N'ASISTENCIA QUALITAS', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (268, 7, 1, 2146, 14135, N'LOZA DOMINGUEZ ERICK RAUL', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (269, 7, 1, 2147, 14136, N'FRAGOSO LEDO FERMIN', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (270, 7, 1, 2144, 14138, N'VARGAS RODRIGUEZ DIEGO FRANCISCO', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (271, 1, 1, 2210, 14168, N'MARTINEZ RIVERA OSCAR', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (272, 1, 1, 2209, 14169, N'GALICIA MENDOZA ERICK URIEL', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (273, 1, 1, 2158, 14172, N'PALACIOS ROSALES JOSE LUIS', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (274, 1, 1, 2162, 14173, N'RODRIGUEZ ALAZAÑEZ KARLA', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (275, 1, 1, 2196, 14199, N'URIBE SANDOVAL YESSICA LILIAN', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (276, 1, 1, 2199, 14200, N'MENDEZ  BAUTISTA VIANEY', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (277, 1, 1, 2216, 14224, N'NIEVES OLVERA CELIA SUSANA', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6600, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (278, 1, 1, 2217, 14225, N'MEDINA GONZALEZ AZALIA ZURISADAI', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (279, 1, 1, 2219, 14276, N'FLORES CAMARIN KAREN AHILUT', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL ', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (280, 1, 1, 2240, 14277, N'VALENCIA GUTIERREZ IVAN', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL ', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (281, 1, 1, 2239, 14281, N'MARTINEZ LOPEZ ARMANDO', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL ', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (282, 1, 1, 2221, 14282, N'GARCIA ARELLANO KARINA', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL ', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (283, 1, 1, 2233, 14314, N'RANGEL GARCIA LAURA YESENIA', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (284, 1, 1, 2230, 14315, N'CINCO HERNANDEZ DANIEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (285, 1, 1, 2256, 14316, N'PEYROT MONDRAGON GUSTAVO', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (286, 1, 1, 2228, 14317, N'GOMEZ HERNANDEZ BRENDA GISELA', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (287, 1, 1, 2227, 14319, N'SANDOVAL REYNOSO NADIA ALEJANDRA', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (288, 1, 1, 2241, 14320, N'ESPINOZA HERNANDEZ DULCE SARAI', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (289, 1, 1, 2246, 14358, N'CORTES DONATO CARLOS OMAR', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (290, 1, 1, 2247, 14359, N'LECHUGA VELAZQUEZ DELIA AZENETH', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (291, 1, 1, 2245, 14361, N'CASTRO VALDEZ SILVIA ADRIANA', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (292, 1, 1, 2259, 14406, N'PORTILLO OLIVER NELLY', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (293, 1, 1, 2266, 14407, N'RUIZ CORONEL ERICK DAVID', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (294, 1, 1, 2258, 14410, N'MEDINA HERNANDEZ MARIANA', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (295, 1, 1, 2265, 14411, N'CASTILLO SALGADO BRENDA', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (296, 1, 1, 2272, 14460, N'MERCADO DE FRANCO DAVID', NULL, N'09:00-18:00', N'ASISTENCIA H&B', NULL, 116.6700, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (297, 1, 1, 2276, 14519, N'MAURIÑO LOPEZ LEVI', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (298, 1, 1, 2286, 14520, N'GALVEZ RIOS CLAUDIA IVONNE', NULL, N'09:00-18:00', N'ASISTENCIA COPPEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (299, 1, 1, 2275, 14521, N'MONTES MANZANAREZ RAQUEL ALEJANDRA', NULL, N'09:00-18:00', N'ASISTENCIA H&B', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (300, 1, 1, 2284, 14523, N'BARRERA PINA NORMAY', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (301, 1, 1, 2277, 14525, N'OJEDA GARCIA SANDRA', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (302, 1, 1, NULL, 14526, N'GONZALEZ PEREZ VALERIA', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
GO
print 'Processed 300 total records'
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (303, 1, 1, NULL, 14527, N'MUÑOZ CELIS JORGE MIGUEL', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (304, 1, 1, NULL, 14529, N'BAUTISTA GONZALEZ JHOANA MONTSERRAT', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (305, 1, 1, NULL, 14573, N'CELIS VILCHIS MAGDA GRISSEL', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (306, 1, 1, 2297, 14574, N'HERNANDEZ RIVEROS ANA YAZMIN', NULL, N'09:00-18:00', N'ASISTENCIA LIVERPOOL', NULL, 76.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (307, 1, 1, 2293, 14577, N'AMARAL SANCHEZ NAYELI KARINA', NULL, N'09:00-18:00', N'ASISTENCIA QUALITAS', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (308, 1, 1, 2292, 14578, N'DE LA CRUZ CASILDO ELIZABETH NATALY', NULL, N'09:00-18:00', N'ASIGNACION', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (309, 7, 1, 2291, 14580, N'CRUZ OLVERA JESSICA', NULL, N'09:00-18:00', N'RETENCION AXTEL', NULL, 100.0000, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (310, 1, 1, 2299, NULL, N'TELLEZ ROMERO FRANCISCO JAVIER', NULL, N'09:00-18:00', N'ASISTENCIA AXTEL', NULL, 116.6667, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (311, 13, 3, NULL, NULL, N'ARMANDO REYNA', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (312, 13, 3, NULL, NULL, N'HAJIME TORRES', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tab_empleado] ([id], [id_tipo_empleado], [id_unidad], [id_mitrol], [id_rh], [nombre], [fecha_ingreso], [horario], [campana], [jefe], [sueldo_diario], [activo]) VALUES (313, 13, 3, NULL, NULL, N'ALBERTO BOJORQUEZ', NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tab_empleado] OFF
/****** Object:  Table [dbo].[tab_campo]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_campo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_tab_plantilla] [int] NOT NULL,
	[id_tipo_campo] [int] NOT NULL,
	[id_cat_campo] [int] NULL,
	[id_regla_negocio] [int] NULL,
	[id_repetir_campo] [int] NULL,
	[id_formato] [int] NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[prefijo] [varchar](20) NULL,
	[sufijo] [varchar](20) NULL,
	[valor] [varchar](200) NULL,
	[repetir] [varchar](100) NULL,
	[activo] [bit] NULL,
	[orden] [int] NULL,
	[color] [varchar](10) NULL,
 CONSTRAINT [PK_tab_campo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tab_campo] ON
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (12, 113, 4, NULL, NULL, NULL, 3, N'Comisiones', N'', N'', N'', N'', NULL, 1, 1, N'#ffffff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (14, 113, 4, NULL, NULL, NULL, NULL, N'Monto por días festivos', N'', N'', N'', N'0.00', NULL, 1, 4, N'#ffffff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (15, 113, 4, NULL, NULL, NULL, NULL, N'Prima Dominical', N'', N'', N'', N'0.00', NULL, 1, 5, N'#ffffff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (25, 113, 4, NULL, NULL, NULL, NULL, N'Pago por horas extra', N'', N'', N'', N'0.00', NULL, 1, 17, N'#ffffff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (26, 113, 4, NULL, NULL, NULL, NULL, N'Pagos Pendientes', N'', N'', N'', N'', NULL, 1, 18, N'#ffffff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (27, 113, 2, NULL, 26, NULL, NULL, N'Total Percepciones', N'', N'', N'', N'', NULL, 1, 19, N'#d63c27')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (28, 113, 4, NULL, NULL, NULL, NULL, N'Observaciones', N'', N'', N'', N'', NULL, 1, 20, N'#ffffff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (34, 113, 2, NULL, 17, NULL, NULL, N'Sueldo Quincenal', N'', N'', N'', N'', NULL, 1, 3, N'#26d19e')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (37, 113, 2, NULL, 42, NULL, NULL, N'Bono Final', N'Bono Final', N'', N'', N'', NULL, 1, 14, N'#78bdf0')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (49, 119, 4, NULL, NULL, NULL, NULL, N'Nota de Calidad -Nota', N'', N'', N'', N'', NULL, 1, 1, N'#345bbf')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (50, 119, 2, NULL, 35, NULL, NULL, N'Nota de calidad - Ptos', N'', N'', N'', N'', NULL, 1, 2, N'#fff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (51, 119, 2, NULL, 36, NULL, NULL, N'Responsabilidad Personal - Faltas', N'', N'', N'', N'', NULL, 1, 3, N'#fff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (52, 119, 2, NULL, 37, NULL, NULL, N'Responsabilidad Personal - Ptos', N'', N'', N'', N'', NULL, 1, 4, N'#fff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (53, 119, 2, NULL, 38, NULL, NULL, N'Puntualidad - Retardos', N'', N'', N'', N'', NULL, 1, 5, N'#fff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (54, 119, 2, NULL, 39, NULL, NULL, N'Puntualidad - Ptos', N'', N'', N'', N'', NULL, 1, 6, N'#fff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (55, 119, 1, NULL, NULL, NULL, NULL, N'Factor', N'', N'', N'', N'7|10', NULL, 1, 7, N'#fff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (56, 119, 2, NULL, 40, NULL, NULL, N'Bono Final - %', N'', N'', N'', N'', NULL, 1, 8, N'#fff')
INSERT [dbo].[tab_campo] ([id], [id_tab_plantilla], [id_tipo_campo], [id_cat_campo], [id_regla_negocio], [id_repetir_campo], [id_formato], [nombre], [descripcion], [prefijo], [sufijo], [valor], [repetir], [activo], [orden], [color]) VALUES (57, 119, 2, NULL, 41, NULL, NULL, N'Bono Final - $', N'', N'', N'', N'', NULL, 1, 9, N'#fff')
SET IDENTITY_INSERT [dbo].[tab_campo] OFF
/****** Object:  Table [dbo].[tab_usuario]    Script Date: 06/16/2015 21:09:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_rol_usuario] [int] NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[password] [varchar](35) NOT NULL,
 CONSTRAINT [PK_tab_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tab_usuario] ON
INSERT [dbo].[tab_usuario] ([id], [id_empleado], [id_rol_usuario], [nombre], [password]) VALUES (2, 311, 1, N'htorres', N'6d7c0bed8b0c5c60b5bd4c6883618629')
INSERT [dbo].[tab_usuario] ([id], [id_empleado], [id_rol_usuario], [nombre], [password]) VALUES (3, 312, 1, N'armando', N'8b7cc1137bb489ac2a23c2cfe6ed8d31')
INSERT [dbo].[tab_usuario] ([id], [id_empleado], [id_rol_usuario], [nombre], [password]) VALUES (6, 313, 1, N'abojorquez', N'593df72aba5629e6e8393b50525f215b')
INSERT [dbo].[tab_usuario] ([id], [id_empleado], [id_rol_usuario], [nombre], [password]) VALUES (7, 83, 3, N'fabiola', N'913e5cbaa14bba6764be3674f152f29e')
SET IDENTITY_INSERT [dbo].[tab_usuario] OFF
/****** Object:  Table [dbo].[tab_reporte]    Script Date: 06/16/2015 21:09:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_reporte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_plantilla] [int] NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[descripcion] [text] NOT NULL,
	[periodo] [varchar](23) NOT NULL,
	[id_estado] [int] NOT NULL CONSTRAINT [DF_tab_reporte_id_estado]  DEFAULT ((1)),
 CONSTRAINT [PK_tab_reporte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tab_reporte] ON
INSERT [dbo].[tab_reporte] ([id], [id_plantilla], [nombre], [descripcion], [periodo], [id_estado]) VALUES (1, 113, N'Reporte Mayo Primera Quincena', N'Reporte Mayo Primera Quincena', N'01/05/2015 - 15/05/2015', 2)
INSERT [dbo].[tab_reporte] ([id], [id_plantilla], [nombre], [descripcion], [periodo], [id_estado]) VALUES (5, 119, N'Reporte Bonos - Primera Quincena de Mayo', N'Reporte Bonos - Primera Quincena de Mayo', N'01/05/2015 - 15/05/2015', 2)
INSERT [dbo].[tab_reporte] ([id], [id_plantilla], [nombre], [descripcion], [periodo], [id_estado]) VALUES (6, 113, N'Reporte 01', N'Reporte 01', N'01/06/2015 - 15/06/2015', 1)
SET IDENTITY_INSERT [dbo].[tab_reporte] OFF
/****** Object:  Table [dbo].[tab_regla_negocio]    Script Date: 06/16/2015 21:09:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_regla_negocio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_tipo_regla] [int] NOT NULL,
	[id_plantilla] [int] NOT NULL,
	[id_salida] [int] NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[operacion] [text] NOT NULL,
	[db] [varchar](50) NULL,
 CONSTRAINT [PK_tab_regla_negocio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tab_regla_negocio] ON
INSERT [dbo].[tab_regla_negocio] ([id], [id_tipo_regla], [id_plantilla], [id_salida], [nombre], [descripcion], [operacion], [db]) VALUES (17, 2, 113, NULL, N'Sueldo Quincenal', N'Sueldo Quincenal', N'[{"type":6,"value":"(","label":"("},{"type":8,"value":"sueldo_diario","label":"<span class=''empleado-label''>Sueldo Diario</span>"},{"type":4,"value":"*","label":"*"},{"type":3,"value":"1","label":"1"},{"type":3,"value":"5","label":"5"},{"type":7,"value":")","label":")"},{"type":4,"value":"-","label":"-"},{"type":8,"value":"descansos","label":"<span class=''empleado-label''>Descansos en el período</span>"},{"type":4,"value":"-","label":"-"},{"type":8,"value":"faltas","label":"<span class=''empleado-label''>Faltas en el período</span>"}]', N'')
INSERT [dbo].[tab_regla_negocio] ([id], [id_tipo_regla], [id_plantilla], [id_salida], [nombre], [descripcion], [operacion], [db]) VALUES (26, 2, 113, NULL, N'Total Percepciones', N'Total Percepciones', N'[{"id_campo":"37","type":1,"value":"","label":"<span class=''campo-label''>Bono Final $</span>"},{"type":4,"value":"+","label":"+"},{"id_campo":"34","type":1,"value":"","label":"<span class=''campo-label''>Sueldo Quincenal</span>"},{"type":4,"value":"+","label":"+"},{"id_campo":"25","type":1,"value":"0.00","label":"<span class=''campo-label''>Pago por horas extra</span>"},{"type":4,"value":"+","label":"+"},{"id_campo":"26","type":1,"value":"","label":"<span class=''campo-label''>Pagos Pendientes</span>"}]', N'')
INSERT [dbo].[tab_regla_negocio] ([id], [id_tipo_regla], [id_plantilla], [id_salida], [nombre], [descripcion], [operacion], [db]) VALUES (35, 1, 119, 1, N'Nota de calidad - Ptos', N'Nota de calidad - Ptos', N'select 
	case 
		when (nota >= 90 and nota <= 100) then 40
		when (nota >= 85 and nota < 90) then 28 
		when (nota >= 80 and nota < 85) then 20 
		else 0
	end as nota
from (
	select ?nota as nota
) as a', N'pronoi')
INSERT [dbo].[tab_regla_negocio] ([id], [id_tipo_regla], [id_plantilla], [id_salida], [nombre], [descripcion], [operacion], [db]) VALUES (36, 2, 119, NULL, N'Responsabilidad Personal -Faltas', N'Responsabilidad Personal -Faltas', N'[{"type":8,"value":"faltas","label":"<span class=''empleado-label''>Faltas en el período</span>"}]', N'')
INSERT [dbo].[tab_regla_negocio] ([id], [id_tipo_regla], [id_plantilla], [id_salida], [nombre], [descripcion], [operacion], [db]) VALUES (37, 1, 119, 1, N'Responsabilidad Personal - Ptos', N'Responsabilidad Personal - Ptos', N'select 
case ?faltas
	when 0 then 30
	when 1 then 7
	else 0
end as nota', N'pronoi')
INSERT [dbo].[tab_regla_negocio] ([id], [id_tipo_regla], [id_plantilla], [id_salida], [nombre], [descripcion], [operacion], [db]) VALUES (38, 2, 119, NULL, N'Puntualidad - Retardos', N'Puntualidad - Retardos', N'[{"type":8,"value":"retardos","label":"<span class=''empleado-label''>Retardos en el período</span>"}]', N'')
INSERT [dbo].[tab_regla_negocio] ([id], [id_tipo_regla], [id_plantilla], [id_salida], [nombre], [descripcion], [operacion], [db]) VALUES (39, 2, 119, NULL, N'Puntualidad - Ptos', N'Puntualidad - Ptos', N'[{"type":3,"value":"3","label":"3"},{"type":3,"value":"0","label":"0"},{"type":4,"value":"-","label":"-"},{"type":6,"value":"(","label":"("},{"type":8,"value":"retardos","label":"<span class=''empleado-label''>Retardos en el período</span>"},{"type":4,"value":"*","label":"*"},{"type":3,"value":"4","label":"4"},{"type":7,"value":")","label":")"}]', N'')
INSERT [dbo].[tab_regla_negocio] ([id], [id_tipo_regla], [id_plantilla], [id_salida], [nombre], [descripcion], [operacion], [db]) VALUES (40, 2, 119, NULL, N'Bono Final - %', N'Bono Final - %', N'[{"id_campo":"50","type":1,"value":"","label":"<span class=''campo-label''>Nota de calidad - Ptos</span>"},{"type":4,"value":"+","label":"+"},{"id_campo":"52","type":1,"value":"","label":"<span class=''campo-label''>Responsabilidad Personal - Ptos</span>"},{"type":4,"value":"+","label":"+"},{"id_campo":"54","type":1,"value":"","label":"<span class=''campo-label''>Puntualidad - Ptos</span>"}]', N'')
INSERT [dbo].[tab_regla_negocio] ([id], [id_tipo_regla], [id_plantilla], [id_salida], [nombre], [descripcion], [operacion], [db]) VALUES (41, 2, 119, NULL, N'Bono Final - $', N'Bono Final - $', N'[{"id_campo":"56","type":1,"value":"","label":"<span class=''campo-label''>Bono Final - %</span>"},{"type":4,"value":"*","label":"*"},{"id_campo":"55","type":1,"value":"7|10","label":"<span class=''campo-label''>Factor</span>"}]', N'')
INSERT [dbo].[tab_regla_negocio] ([id], [id_tipo_regla], [id_plantilla], [id_salida], [nombre], [descripcion], [operacion], [db]) VALUES (42, 1, 113, 1, N'Bono Final', N'Bono Final', N'select valor from tab_contenido_reporte where id_reporte = 5 and id_empleado = ?id_empleado and orden = 34', N'pronoi')
SET IDENTITY_INSERT [dbo].[tab_regla_negocio] OFF
/****** Object:  Table [dbo].[tab_control_reporte]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_control_reporte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_plantilla] [int] NOT NULL,
	[id_usuario_responsable] [int] NULL,
	[id_tipo_empleado_responsable] [int] NULL,
	[id_cat_control_reporte] [int] NOT NULL,
 CONSTRAINT [PK_tab_control_reporte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tab_control_reporte] ON
INSERT [dbo].[tab_control_reporte] ([id], [id_plantilla], [id_usuario_responsable], [id_tipo_empleado_responsable], [id_cat_control_reporte]) VALUES (22, 119, 7, NULL, 1)
INSERT [dbo].[tab_control_reporte] ([id], [id_plantilla], [id_usuario_responsable], [id_tipo_empleado_responsable], [id_cat_control_reporte]) VALUES (23, 113, 7, NULL, 1)
SET IDENTITY_INSERT [dbo].[tab_control_reporte] OFF
/****** Object:  Table [dbo].[tab_contenido_reporte]    Script Date: 06/16/2015 21:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_contenido_reporte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_reporte] [int] NOT NULL,
	[id_empleado] [int] NULL,
	[orden] [int] NOT NULL,
	[valor] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tab_contenido_reporte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tab_contenido_reporte] ON
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2921, 1, NULL, 0, N'Nombre')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2922, 1, NULL, 1, N'Id Empleado Pronoi')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2923, 1, NULL, 2, N'Id Empleado RH')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2924, 1, NULL, 3, N'Id Empleado Mitrol')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2925, 1, NULL, 4, N'Fecha Ingreso')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2926, 1, NULL, 5, N'Horario')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2927, 1, NULL, 6, N'Unidad de Negocio')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2928, 1, NULL, 7, N'Puesto')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2929, 1, NULL, 8, N'Campaña')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2930, 1, NULL, 9, N'Jefe Inmediato')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2931, 1, NULL, 10, N'Sueldo Diario')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2932, 1, NULL, 11, N'1/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2933, 1, NULL, 12, N'2/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2934, 1, NULL, 13, N'3/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2935, 1, NULL, 14, N'4/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2936, 1, NULL, 15, N'5/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2937, 1, NULL, 16, N'6/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2938, 1, NULL, 17, N'7/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2939, 1, NULL, 18, N'8/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2940, 1, NULL, 19, N'9/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2941, 1, NULL, 20, N'10/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2942, 1, NULL, 21, N'11/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2943, 1, NULL, 22, N'12/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2944, 1, NULL, 23, N'13/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2945, 1, NULL, 24, N'14/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2946, 1, NULL, 25, N'15/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2947, 1, NULL, 26, N'Comisiones')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2948, 1, NULL, 27, N'Sueldo Quincenal')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2949, 1, NULL, 28, N'Monto por días festivos')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2950, 1, NULL, 29, N'Prima Dominical')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2951, 1, NULL, 30, N'Bono Final')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2952, 1, NULL, 31, N'Horas extra')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2953, 1, NULL, 32, N'Pago por horas extra')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2954, 1, NULL, 33, N'Pagos Pendientes')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2955, 1, NULL, 34, N'Total Percepciones')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2956, 1, NULL, 35, N'Observaciones')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2957, 1, 82, 0, N'AGENTE IP')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2958, 1, 82, 1, N'82')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2959, 1, 82, 2, N'36')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2960, 1, 82, 3, N'144')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2961, 1, 82, 4, N'2012-01-24 00:00:00.000')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2962, 1, 82, 5, N'09:00-18:00')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2963, 1, 82, 6, N'Club de Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2964, 1, 82, 7, N'Operador Telefónico')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2965, 1, 82, 8, N'-')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2966, 1, 82, 9, N'JAIME HERNANDEZ')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2967, 1, 82, 10, N'$ 116,66')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2968, 1, 82, 11, N'Festivo')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2969, 1, 82, 12, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2970, 1, 82, 13, N'Festivo')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2971, 1, 82, 14, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2972, 1, 82, 15, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2973, 1, 82, 16, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2974, 1, 82, 17, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2975, 1, 82, 18, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2976, 1, 82, 19, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2977, 1, 82, 20, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2978, 1, 82, 21, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2979, 1, 82, 22, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2980, 1, 82, 23, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2981, 1, 82, 24, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2982, 1, 82, 25, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2983, 1, 82, 26, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2984, 1, 82, 27, N'1741.8999999999999')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2985, 1, 82, 28, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2986, 1, 82, 29, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2987, 1, 82, 30, N'490')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2988, 1, 82, 31, N'$30.00')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2989, 1, 82, 32, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2990, 1, 82, 33, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2991, 1, 82, 34, N'2231.8999999999996')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2992, 1, 82, 35, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2993, 1, 91, 0, N'JORGE SANCHEZ')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2994, 1, 91, 1, N'91')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2995, 1, 91, 2, N'45')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2996, 1, 91, 3, N'153')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2997, 1, 91, 4, N'2012-01-24 00:00:00.000')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2998, 1, 91, 5, N'09:00-18:00')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (2999, 1, 91, 6, N'Club de Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3000, 1, 91, 7, N'Operador Telefónico')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3001, 1, 91, 8, N'-')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3002, 1, 91, 9, N'JAIME HERNANDEZ')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3003, 1, 91, 10, N'$ 116,66')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3004, 1, 91, 11, N'Festivo')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3005, 1, 91, 12, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3006, 1, 91, 13, N'Festivo')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3007, 1, 91, 14, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3008, 1, 91, 15, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3009, 1, 91, 16, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3010, 1, 91, 17, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3011, 1, 91, 18, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3012, 1, 91, 19, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3013, 1, 91, 20, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3014, 1, 91, 21, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3015, 1, 91, 22, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3016, 1, 91, 23, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3017, 1, 91, 24, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3018, 1, 91, 25, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3019, 1, 91, 26, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3020, 1, 91, 27, N'1746.8999999999999')
GO
print 'Processed 100 total records'
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3021, 1, 91, 28, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3022, 1, 91, 29, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3023, 1, 91, 30, N'322')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3024, 1, 91, 31, N'$30.00')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3025, 1, 91, 32, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3026, 1, 91, 33, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3027, 1, 91, 34, N'2068.8999999999996')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3028, 1, 91, 35, N'')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3029, 5, NULL, 0, N'Nombre')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3030, 5, NULL, 1, N'Id Empleado Pronoi')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3031, 5, NULL, 2, N'Id Empleado RH')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3032, 5, NULL, 3, N'Id Empleado Mitrol')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3033, 5, NULL, 4, N'Fecha Ingreso')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3034, 5, NULL, 5, N'Horario')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3035, 5, NULL, 6, N'Unidad de Negocio')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3036, 5, NULL, 7, N'Puesto')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3037, 5, NULL, 8, N'Campaña')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3038, 5, NULL, 9, N'Jefe Inmediato')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3039, 5, NULL, 10, N'Sueldo Diario')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3040, 5, NULL, 11, N'1/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3041, 5, NULL, 12, N'2/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3042, 5, NULL, 13, N'3/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3043, 5, NULL, 14, N'4/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3044, 5, NULL, 15, N'5/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3045, 5, NULL, 16, N'6/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3046, 5, NULL, 17, N'7/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3047, 5, NULL, 18, N'8/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3048, 5, NULL, 19, N'9/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3049, 5, NULL, 20, N'10/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3050, 5, NULL, 21, N'11/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3051, 5, NULL, 22, N'12/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3052, 5, NULL, 23, N'13/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3053, 5, NULL, 24, N'14/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3054, 5, NULL, 25, N'15/5/2015')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3055, 5, NULL, 26, N'Nota de Calidad -Nota')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3056, 5, NULL, 27, N'Nota de calidad - Ptos')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3057, 5, NULL, 28, N'Responsabilidad Personal - Faltas')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3058, 5, NULL, 29, N'Responsabilidad Personal - Ptos')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3059, 5, NULL, 30, N'Puntualidad - Retardos')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3060, 5, NULL, 31, N'Puntualidad - Ptos')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3061, 5, NULL, 32, N'Factor')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3062, 5, NULL, 33, N'Bono Final - %')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3063, 5, NULL, 34, N'Bono Final - $')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3064, 5, 82, 0, N'AGENTE IP')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3065, 5, 82, 1, N'82')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3066, 5, 82, 2, N'36')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3067, 5, 82, 3, N'144')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3068, 5, 82, 4, N'2012-01-24 00:00:00.000')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3069, 5, 82, 5, N'09:00-18:00')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3070, 5, 82, 6, N'Club de Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3071, 5, 82, 7, N'Operador Telefónico')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3072, 5, 82, 8, N'-')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3073, 5, 82, 9, N'JAIME HERNANDEZ')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3074, 5, 82, 10, N'$ 116,66')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3075, 5, 82, 11, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3076, 5, 82, 12, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3077, 5, 82, 13, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3078, 5, 82, 14, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3079, 5, 82, 15, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3080, 5, 82, 16, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3081, 5, 82, 17, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3082, 5, 82, 18, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3083, 5, 82, 19, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3084, 5, 82, 20, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3085, 5, 82, 21, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3086, 5, 82, 22, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3087, 5, 82, 23, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3088, 5, 82, 24, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3089, 5, 82, 25, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3090, 5, 82, 26, N'80')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3091, 5, 82, 27, N'20')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3092, 5, 82, 28, N'10')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3093, 5, 82, 29, N'0')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3094, 5, 82, 30, N'0')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3095, 5, 82, 31, N'30')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3096, 5, 82, 32, N'7')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3097, 5, 82, 33, N'50')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3098, 5, 82, 34, N'350')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3099, 5, 91, 0, N'JORGE SANCHEZ')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3100, 5, 91, 1, N'91')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3101, 5, 91, 2, N'45')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3102, 5, 91, 3, N'153')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3103, 5, 91, 4, N'2012-01-24 00:00:00.000')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3104, 5, 91, 5, N'09:00-18:00')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3105, 5, 91, 6, N'Club de Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3106, 5, 91, 7, N'Operador Telefónico')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3107, 5, 91, 8, N'-')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3108, 5, 91, 9, N'JAIME HERNANDEZ')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3109, 5, 91, 10, N'$ 116,66')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3110, 5, 91, 11, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3111, 5, 91, 12, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3112, 5, 91, 13, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3113, 5, 91, 14, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3114, 5, 91, 15, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3115, 5, 91, 16, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3116, 5, 91, 17, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3117, 5, 91, 18, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3118, 5, 91, 19, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3119, 5, 91, 20, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3120, 5, 91, 21, N'Asistencia')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3121, 5, 91, 22, N'Asistencia')
GO
print 'Processed 200 total records'
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3122, 5, 91, 23, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3123, 5, 91, 24, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3124, 5, 91, 25, N'Falta')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3125, 5, 91, 26, N'90')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3126, 5, 91, 27, N'40')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3127, 5, 91, 28, N'3')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3128, 5, 91, 29, N'0')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3129, 5, 91, 30, N'6')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3130, 5, 91, 31, N'6')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3131, 5, 91, 32, N'7')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3132, 5, 91, 33, N'46')
INSERT [dbo].[tab_contenido_reporte] ([id], [id_reporte], [id_empleado], [orden], [valor]) VALUES (3133, 5, 91, 34, N'322')
SET IDENTITY_INSERT [dbo].[tab_contenido_reporte] OFF
/****** Object:  ForeignKey [FK_tab_campo_id_formato]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_campo]  WITH CHECK ADD  CONSTRAINT [FK_tab_campo_id_formato] FOREIGN KEY([id_formato])
REFERENCES [dbo].[cat_formato] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tab_campo] CHECK CONSTRAINT [FK_tab_campo_id_formato]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_repetir_campo]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_campo]  WITH CHECK ADD  CONSTRAINT [FK_tab_campo_id_repetir_campo] FOREIGN KEY([id_repetir_campo])
REFERENCES [dbo].[cat_repetir_campo] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tab_campo] CHECK CONSTRAINT [FK_tab_campo_id_repetir_campo]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_tab_plantilla]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_campo]  WITH CHECK ADD  CONSTRAINT [FK_tab_campo_id_tab_plantilla] FOREIGN KEY([id_tab_plantilla])
REFERENCES [dbo].[tab_plantilla] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tab_campo] CHECK CONSTRAINT [FK_tab_campo_id_tab_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_tipo_campo]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_campo]  WITH CHECK ADD  CONSTRAINT [FK_tab_campo_id_tipo_campo] FOREIGN KEY([id_tipo_campo])
REFERENCES [dbo].[cat_tipo_campo] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tab_campo] CHECK CONSTRAINT [FK_tab_campo_id_tipo_campo]
GO
/****** Object:  ForeignKey [FK_tab_contenido_reporte_id_reporte]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_contenido_reporte]  WITH CHECK ADD  CONSTRAINT [FK_tab_contenido_reporte_id_reporte] FOREIGN KEY([id_reporte])
REFERENCES [dbo].[tab_reporte] ([id])
GO
ALTER TABLE [dbo].[tab_contenido_reporte] CHECK CONSTRAINT [FK_tab_contenido_reporte_id_reporte]
GO
/****** Object:  ForeignKey [FK_tab_control_reporte_id_cat_control_reporte]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_control_reporte]  WITH CHECK ADD  CONSTRAINT [FK_tab_control_reporte_id_cat_control_reporte] FOREIGN KEY([id_cat_control_reporte])
REFERENCES [dbo].[cat_control_reporte] ([id])
GO
ALTER TABLE [dbo].[tab_control_reporte] CHECK CONSTRAINT [FK_tab_control_reporte_id_cat_control_reporte]
GO
/****** Object:  ForeignKey [FK_tab_control_reporte_id_plantilla]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_control_reporte]  WITH CHECK ADD  CONSTRAINT [FK_tab_control_reporte_id_plantilla] FOREIGN KEY([id_plantilla])
REFERENCES [dbo].[tab_plantilla] ([id])
GO
ALTER TABLE [dbo].[tab_control_reporte] CHECK CONSTRAINT [FK_tab_control_reporte_id_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_control_reporte_id_tipo_empleado]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_control_reporte]  WITH CHECK ADD  CONSTRAINT [FK_tab_control_reporte_id_tipo_empleado] FOREIGN KEY([id_tipo_empleado_responsable])
REFERENCES [dbo].[tab_tipo_empleado] ([id])
GO
ALTER TABLE [dbo].[tab_control_reporte] CHECK CONSTRAINT [FK_tab_control_reporte_id_tipo_empleado]
GO
/****** Object:  ForeignKey [FK_tab_control_reporte_id_usuario]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_control_reporte]  WITH CHECK ADD  CONSTRAINT [FK_tab_control_reporte_id_usuario] FOREIGN KEY([id_usuario_responsable])
REFERENCES [dbo].[tab_usuario] ([id])
GO
ALTER TABLE [dbo].[tab_control_reporte] CHECK CONSTRAINT [FK_tab_control_reporte_id_usuario]
GO
/****** Object:  ForeignKey [FK_tab_empleado_id_tipo_empleado]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_empleado]  WITH NOCHECK ADD  CONSTRAINT [FK_tab_empleado_id_tipo_empleado] FOREIGN KEY([id_tipo_empleado])
REFERENCES [dbo].[tab_tipo_empleado] ([id])
GO
ALTER TABLE [dbo].[tab_empleado] CHECK CONSTRAINT [FK_tab_empleado_id_tipo_empleado]
GO
/****** Object:  ForeignKey [FK_tab_empleado_id_unidad]    Script Date: 06/16/2015 21:09:04 ******/
ALTER TABLE [dbo].[tab_empleado]  WITH CHECK ADD  CONSTRAINT [FK_tab_empleado_id_unidad] FOREIGN KEY([id_unidad])
REFERENCES [dbo].[tab_unidad_negocio] ([id])
GO
ALTER TABLE [dbo].[tab_empleado] CHECK CONSTRAINT [FK_tab_empleado_id_unidad]
GO
/****** Object:  ForeignKey [FK_tab_plantilla_id_tipo_empleado]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_plantilla]  WITH CHECK ADD  CONSTRAINT [FK_tab_plantilla_id_tipo_empleado] FOREIGN KEY([id_tipo_empleado])
REFERENCES [dbo].[tab_tipo_empleado] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tab_plantilla] CHECK CONSTRAINT [FK_tab_plantilla_id_tipo_empleado]
GO
/****** Object:  ForeignKey [FK_tab_regla_negocio_id_plantilla]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_regla_negocio]  WITH CHECK ADD  CONSTRAINT [FK_tab_regla_negocio_id_plantilla] FOREIGN KEY([id_plantilla])
REFERENCES [dbo].[tab_plantilla] ([id])
GO
ALTER TABLE [dbo].[tab_regla_negocio] CHECK CONSTRAINT [FK_tab_regla_negocio_id_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_regla_negocio_id_salida]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_regla_negocio]  WITH CHECK ADD  CONSTRAINT [FK_tab_regla_negocio_id_salida] FOREIGN KEY([id_salida])
REFERENCES [dbo].[cat_regla_salida] ([id])
GO
ALTER TABLE [dbo].[tab_regla_negocio] CHECK CONSTRAINT [FK_tab_regla_negocio_id_salida]
GO
/****** Object:  ForeignKey [FK_tab_regla_negocio_id_tipo_regla]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_regla_negocio]  WITH CHECK ADD  CONSTRAINT [FK_tab_regla_negocio_id_tipo_regla] FOREIGN KEY([id_tipo_regla])
REFERENCES [dbo].[cat_tipo_regla] ([id])
GO
ALTER TABLE [dbo].[tab_regla_negocio] CHECK CONSTRAINT [FK_tab_regla_negocio_id_tipo_regla]
GO
/****** Object:  ForeignKey [FK_tab_reporte_id_estado]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_reporte]  WITH CHECK ADD  CONSTRAINT [FK_tab_reporte_id_estado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[cat_estado_reporte] ([id])
GO
ALTER TABLE [dbo].[tab_reporte] CHECK CONSTRAINT [FK_tab_reporte_id_estado]
GO
/****** Object:  ForeignKey [FK_tab_reporte_id_plantilla]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_reporte]  WITH CHECK ADD  CONSTRAINT [FK_tab_reporte_id_plantilla] FOREIGN KEY([id_plantilla])
REFERENCES [dbo].[tab_plantilla] ([id])
GO
ALTER TABLE [dbo].[tab_reporte] CHECK CONSTRAINT [FK_tab_reporte_id_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_tipo_empleado_id]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_tipo_empleado]  WITH CHECK ADD  CONSTRAINT [FK_tab_tipo_empleado_id] FOREIGN KEY([id_unidad])
REFERENCES [dbo].[tab_unidad_negocio] ([id])
GO
ALTER TABLE [dbo].[tab_tipo_empleado] CHECK CONSTRAINT [FK_tab_tipo_empleado_id]
GO
/****** Object:  ForeignKey [FK_tab_usuario_id_empleado]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_usuario]  WITH CHECK ADD  CONSTRAINT [FK_tab_usuario_id_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[tab_empleado] ([id])
GO
ALTER TABLE [dbo].[tab_usuario] CHECK CONSTRAINT [FK_tab_usuario_id_empleado]
GO
/****** Object:  ForeignKey [FK_tab_usuario_id_rol_usuario]    Script Date: 06/16/2015 21:09:05 ******/
ALTER TABLE [dbo].[tab_usuario]  WITH CHECK ADD  CONSTRAINT [FK_tab_usuario_id_rol_usuario] FOREIGN KEY([id_rol_usuario])
REFERENCES [dbo].[cat_rol_usuario] ([id])
GO
ALTER TABLE [dbo].[tab_usuario] CHECK CONSTRAINT [FK_tab_usuario_id_rol_usuario]
GO
