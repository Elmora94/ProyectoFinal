USE [master]
GO

/****** Nombre: Juan A. De oleo M. Matricula:16-SIIN-1-149 Seccion:0541  ******/

/****** Nombre: Felix J.Beltre V. Matricula:16-SIIN-1-146 Seccion:0541  ******/

/****** Nombre: Richard. Mora Matricula:17-EIIN-1-176 Seccion:0541  ******/

CREATE DATABASE [Heladosbon] ON  PRIMARY 
( NAME = N'Heladosbon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Heladosbon.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Heladosbon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Heladosbon_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Heladosbon] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Heladosbon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Heladosbon] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Heladosbon] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Heladosbon] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Heladosbon] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Heladosbon] SET ARITHABORT OFF
GO
ALTER DATABASE [Heladosbon] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Heladosbon] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Heladosbon] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Heladosbon] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Heladosbon] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Heladosbon] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Heladosbon] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Heladosbon] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Heladosbon] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Heladosbon] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Heladosbon] SET  ENABLE_BROKER
GO
ALTER DATABASE [Heladosbon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Heladosbon] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Heladosbon] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Heladosbon] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Heladosbon] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Heladosbon] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Heladosbon] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Heladosbon] SET  READ_WRITE
GO
ALTER DATABASE [Heladosbon] SET RECOVERY FULL
GO
ALTER DATABASE [Heladosbon] SET  MULTI_USER
GO
ALTER DATABASE [Heladosbon] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Heladosbon] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Heladosbon', N'ON'
GO
USE [Heladosbon]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 04/08/2018 17:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Empleado] [int] NULL,
	[Caja] [int] NULL,
	[Producto] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Venta] ([Empleado], [Caja], [Producto]) VALUES (1, 2, 10)
INSERT [dbo].[Venta] ([Empleado], [Caja], [Producto]) VALUES (2, 4, 9)
INSERT [dbo].[Venta] ([Empleado], [Caja], [Producto]) VALUES (3, 6, 8)
INSERT [dbo].[Venta] ([Empleado], [Caja], [Producto]) VALUES (4, 8, 7)
INSERT [dbo].[Venta] ([Empleado], [Caja], [Producto]) VALUES (5, 10, 6)
INSERT [dbo].[Venta] ([Empleado], [Caja], [Producto]) VALUES (6, 3, 5)
INSERT [dbo].[Venta] ([Empleado], [Caja], [Producto]) VALUES (7, 1, 4)
INSERT [dbo].[Venta] ([Empleado], [Caja], [Producto]) VALUES (8, 7, 3)
INSERT [dbo].[Venta] ([Empleado], [Caja], [Producto]) VALUES (9, 5, 2)
INSERT [dbo].[Venta] ([Empleado], [Caja], [Producto]) VALUES (10, 9, 1)
/****** Object:  Table [dbo].[Producto]    Script Date: 04/08/2018 17:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](30) NULL,
	[Presio] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Producto] ON
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (1, N'yoguen', 100)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (2, N'marteadas', 100)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (3, N'paletas', 50)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (4, N'varquillas', 30)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (5, N'refresco', 20)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (6, N'agua', 15)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (7, N'yogurt', 32)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (8, N'bizcocho', 30)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (9, N'galleta', 5)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (10, N'helados bon', 50)
SET IDENTITY_INSERT [dbo].[Producto] OFF
/****** Object:  Table [dbo].[Empleado]    Script Date: 04/08/2018 17:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](20) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (1, N'Juan A.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (2, N'Jose P.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (3, N'Julio M.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (4, N'Favio A.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (5, N'Joel A.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (6, N'Felix B.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (7, N'Richard M.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (8, N'Andres H.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (9, N'Carmen M.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (10, N'Vicky V.')
SET IDENTITY_INSERT [dbo].[Empleado] OFF
/****** Object:  Table [dbo].[Caja_registradora]    Script Date: 04/08/2018 17:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caja_registradora](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Piso] [int] NULL,
 CONSTRAINT [PK_Caja_registradora] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Caja_registradora] ON
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (1, 1)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (2, 2)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (3, 3)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (4, 4)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (5, 5)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (6, 6)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (7, 7)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (8, 8)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (9, 9)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (10, 10)
SET IDENTITY_INSERT [dbo].[Caja_registradora] OFF
