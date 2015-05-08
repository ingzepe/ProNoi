USE [master]
GO
/****** Object:  Database [pronoi]    Script Date: 05/08/2015 15:14:01 ******/
CREATE DATABASE [pronoi] ON  PRIMARY 
( NAME = N'pronoi', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\pronoi.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'pronoi_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\pronoi_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [pronoi] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pronoi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pronoi] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [pronoi] SET ANSI_NULLS OFF
GO
ALTER DATABASE [pronoi] SET ANSI_PADDING OFF
GO
ALTER DATABASE [pronoi] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [pronoi] SET ARITHABORT OFF
GO
ALTER DATABASE [pronoi] SET AUTO_CLOSE ON
GO
ALTER DATABASE [pronoi] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [pronoi] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [pronoi] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [pronoi] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [pronoi] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [pronoi] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [pronoi] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [pronoi] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [pronoi] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [pronoi] SET  ENABLE_BROKER
GO
ALTER DATABASE [pronoi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [pronoi] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [pronoi] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [pronoi] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [pronoi] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [pronoi] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [pronoi] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [pronoi] SET  READ_WRITE
GO
ALTER DATABASE [pronoi] SET RECOVERY SIMPLE
GO
ALTER DATABASE [pronoi] SET  MULTI_USER
GO
ALTER DATABASE [pronoi] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [pronoi] SET DB_CHAINING OFF
GO
USE [pronoi]
GO
/****** Object:  User [dev]    Script Date: 05/08/2015 15:14:01 ******/
CREATE USER [dev] FOR LOGIN [dev] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tab_contenido_reporte]    Script Date: 05/08/2015 15:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_contenido_reporte](
	[id] [int] NOT NULL,
	[id_reporte] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_campo] [int] NOT NULL,
	[valor] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tab_contenido_reporte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cat_tipo_reporte]    Script Date: 05/08/2015 15:14:02 ******/
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
/****** Object:  Table [dbo].[cat_tipo_regla]    Script Date: 05/08/2015 15:14:02 ******/
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
/****** Object:  Table [dbo].[cat_tipo_campo]    Script Date: 05/08/2015 15:14:02 ******/
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
/****** Object:  Table [dbo].[cat_rol_usuario]    Script Date: 05/08/2015 15:14:02 ******/
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
/****** Object:  Table [dbo].[cat_repetir_campo]    Script Date: 05/08/2015 15:14:02 ******/
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
/****** Object:  Table [dbo].[cat_regla_salida]    Script Date: 05/08/2015 15:14:02 ******/
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
/****** Object:  Table [dbo].[cat_formato]    Script Date: 05/08/2015 15:14:02 ******/
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
/****** Object:  Table [dbo].[tab_unidad_negocio]    Script Date: 05/08/2015 15:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_unidad_negocio](
	[id] [int] NOT NULL,
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
/****** Object:  Table [dbo].[tab_tipo_empleado]    Script Date: 05/08/2015 15:14:02 ******/
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
	[sueldo_base] [int] NULL,
 CONSTRAINT [PK_tab_tipo_empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_usuario]    Script Date: 05/08/2015 15:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_usuario](
	[id] [int] NOT NULL,
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
/****** Object:  Table [dbo].[tab_plantilla]    Script Date: 05/08/2015 15:14:02 ******/
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
/****** Object:  Table [dbo].[tab_empleado]    Script Date: 05/08/2015 15:14:02 ******/
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
	[id_mitron] [int] NOT NULL,
	[id_rh] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[fecha_ingreso] [varchar](12) NULL,
	[horario] [varchar](12) NULL,
	[campana] [varchar](50) NULL,
	[jefe] [varchar](100) NULL,
	[sueldo_diario] [money] NULL,
	[sueldo_quincenal] [money] NULL,
 CONSTRAINT [PK_tab_empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_campo]    Script Date: 05/08/2015 15:14:02 ******/
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
/****** Object:  Table [dbo].[tab_reporte]    Script Date: 05/08/2015 15:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_reporte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_plantilla] [int] NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[periodo] [varchar](23) NOT NULL,
 CONSTRAINT [PK_tab_reporte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_regla_negocio]    Script Date: 05/08/2015 15:14:02 ******/
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
/****** Object:  ForeignKey [FK_tab_tipo_empleado_id]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_tipo_empleado]  WITH CHECK ADD  CONSTRAINT [FK_tab_tipo_empleado_id] FOREIGN KEY([id_unidad])
REFERENCES [dbo].[tab_unidad_negocio] ([id])
GO
ALTER TABLE [dbo].[tab_tipo_empleado] CHECK CONSTRAINT [FK_tab_tipo_empleado_id]
GO
/****** Object:  ForeignKey [FK_tab_usuario_id_rol_usuario]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_usuario]  WITH CHECK ADD  CONSTRAINT [FK_tab_usuario_id_rol_usuario] FOREIGN KEY([id_rol_usuario])
REFERENCES [dbo].[cat_rol_usuario] ([id])
GO
ALTER TABLE [dbo].[tab_usuario] CHECK CONSTRAINT [FK_tab_usuario_id_rol_usuario]
GO
/****** Object:  ForeignKey [FK_tab_plantilla_id_tipo_empleado]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_plantilla]  WITH CHECK ADD  CONSTRAINT [FK_tab_plantilla_id_tipo_empleado] FOREIGN KEY([id_tipo_empleado])
REFERENCES [dbo].[tab_tipo_empleado] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tab_plantilla] CHECK CONSTRAINT [FK_tab_plantilla_id_tipo_empleado]
GO
/****** Object:  ForeignKey [FK_tab_empleado_id_tipo_empleado]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_empleado]  WITH NOCHECK ADD  CONSTRAINT [FK_tab_empleado_id_tipo_empleado] FOREIGN KEY([id_tipo_empleado])
REFERENCES [dbo].[tab_tipo_empleado] ([id])
GO
ALTER TABLE [dbo].[tab_empleado] CHECK CONSTRAINT [FK_tab_empleado_id_tipo_empleado]
GO
/****** Object:  ForeignKey [FK_tab_empleado_id_unidad]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_empleado]  WITH NOCHECK ADD  CONSTRAINT [FK_tab_empleado_id_unidad] FOREIGN KEY([id_unidad])
REFERENCES [dbo].[tab_unidad_negocio] ([id])
GO
ALTER TABLE [dbo].[tab_empleado] CHECK CONSTRAINT [FK_tab_empleado_id_unidad]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_formato]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_campo]  WITH CHECK ADD  CONSTRAINT [FK_tab_campo_id_formato] FOREIGN KEY([id_formato])
REFERENCES [dbo].[cat_formato] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tab_campo] CHECK CONSTRAINT [FK_tab_campo_id_formato]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_repetir_campo]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_campo]  WITH CHECK ADD  CONSTRAINT [FK_tab_campo_id_repetir_campo] FOREIGN KEY([id_repetir_campo])
REFERENCES [dbo].[cat_repetir_campo] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tab_campo] CHECK CONSTRAINT [FK_tab_campo_id_repetir_campo]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_tab_plantilla]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_campo]  WITH CHECK ADD  CONSTRAINT [FK_tab_campo_id_tab_plantilla] FOREIGN KEY([id_tab_plantilla])
REFERENCES [dbo].[tab_plantilla] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tab_campo] CHECK CONSTRAINT [FK_tab_campo_id_tab_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_campo_id_tipo_campo]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_campo]  WITH CHECK ADD  CONSTRAINT [FK_tab_campo_id_tipo_campo] FOREIGN KEY([id_tipo_campo])
REFERENCES [dbo].[cat_tipo_campo] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tab_campo] CHECK CONSTRAINT [FK_tab_campo_id_tipo_campo]
GO
/****** Object:  ForeignKey [FK_tab_reporte_id_plantilla]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_reporte]  WITH CHECK ADD  CONSTRAINT [FK_tab_reporte_id_plantilla] FOREIGN KEY([id_plantilla])
REFERENCES [dbo].[tab_plantilla] ([id])
GO
ALTER TABLE [dbo].[tab_reporte] CHECK CONSTRAINT [FK_tab_reporte_id_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_regla_negocio_id_plantilla]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_regla_negocio]  WITH CHECK ADD  CONSTRAINT [FK_tab_regla_negocio_id_plantilla] FOREIGN KEY([id_plantilla])
REFERENCES [dbo].[tab_plantilla] ([id])
GO
ALTER TABLE [dbo].[tab_regla_negocio] CHECK CONSTRAINT [FK_tab_regla_negocio_id_plantilla]
GO
/****** Object:  ForeignKey [FK_tab_regla_negocio_id_salida]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_regla_negocio]  WITH CHECK ADD  CONSTRAINT [FK_tab_regla_negocio_id_salida] FOREIGN KEY([id_salida])
REFERENCES [dbo].[cat_regla_salida] ([id])
GO
ALTER TABLE [dbo].[tab_regla_negocio] CHECK CONSTRAINT [FK_tab_regla_negocio_id_salida]
GO
/****** Object:  ForeignKey [FK_tab_regla_negocio_id_tipo_regla]    Script Date: 05/08/2015 15:14:02 ******/
ALTER TABLE [dbo].[tab_regla_negocio]  WITH CHECK ADD  CONSTRAINT [FK_tab_regla_negocio_id_tipo_regla] FOREIGN KEY([id_tipo_regla])
REFERENCES [dbo].[cat_tipo_regla] ([id])
GO
ALTER TABLE [dbo].[tab_regla_negocio] CHECK CONSTRAINT [FK_tab_regla_negocio_id_tipo_regla]
GO
