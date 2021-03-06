USE [master]
GO

/****** Nombre: Juan A. De oleo M. Matricula:16-SIIN-1-149 Seccion:0541  ******/

/****** Nombre: Felix J.Beltre V. Matricula:16-SIIN-1-146 Seccion:0541  ******/

/****** Nombre: Richard. Mora Matricula:17-EIIN-1-176 Seccion:0541  ******/

CREATE DATABASE [Boutique] ON  PRIMARY 
( NAME = N'Boutique', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Boutique.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Boutique_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Boutique_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Boutique] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Boutique].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Boutique] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Boutique] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Boutique] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Boutique] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Boutique] SET ARITHABORT OFF
GO
ALTER DATABASE [Boutique] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Boutique] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Boutique] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Boutique] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Boutique] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Boutique] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Boutique] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Boutique] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Boutique] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Boutique] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Boutique] SET  ENABLE_BROKER
GO
ALTER DATABASE [Boutique] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Boutique] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Boutique] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Boutique] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Boutique] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Boutique] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Boutique] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Boutique] SET  READ_WRITE
GO
ALTER DATABASE [Boutique] SET RECOVERY FULL
GO
ALTER DATABASE [Boutique] SET  MULTI_USER
GO
ALTER DATABASE [Boutique] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Boutique] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Boutique', N'ON'
GO
USE [Boutique]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 04/08/2018 15:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Empleados] [int] NULL,
	[Caja] [int] NULL,
	[Producto] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Venta] ([Empleados], [Caja], [Producto]) VALUES (1, 1, 10)
INSERT [dbo].[Venta] ([Empleados], [Caja], [Producto]) VALUES (2, 2, 9)
INSERT [dbo].[Venta] ([Empleados], [Caja], [Producto]) VALUES (3, 3, 8)
INSERT [dbo].[Venta] ([Empleados], [Caja], [Producto]) VALUES (4, 4, 7)
INSERT [dbo].[Venta] ([Empleados], [Caja], [Producto]) VALUES (5, 7, 5)
INSERT [dbo].[Venta] ([Empleados], [Caja], [Producto]) VALUES (6, 5, 6)
INSERT [dbo].[Venta] ([Empleados], [Caja], [Producto]) VALUES (7, 8, 4)
INSERT [dbo].[Venta] ([Empleados], [Caja], [Producto]) VALUES (8, 6, 3)
INSERT [dbo].[Venta] ([Empleados], [Caja], [Producto]) VALUES (9, 9, 2)
INSERT [dbo].[Venta] ([Empleados], [Caja], [Producto]) VALUES (10, 10, 1)
/****** Object:  Table [dbo].[Producto]    Script Date: 04/08/2018 15:48:58 ******/
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
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (1, N'Tenis Nike ', 2000)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (2, N'Reebook', 1600)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (3, N'correas ', 200)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (4, N'Gorras', 100)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (5, N'Pantalones ', 500)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (6, N'Zapatos ', 1500)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (7, N'Poloche', 100)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (8, N'Medias ', 20)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (9, N'Reloj', 400)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (10, N'chancletas adidas', 1200)
SET IDENTITY_INSERT [dbo].[Producto] OFF
/****** Object:  Table [dbo].[Empleado]    Script Date: 04/08/2018 15:48:58 ******/
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
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (1, N'Juan a.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (2, N'Felix B.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (3, N'Maria F.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (4, N'Pedro A.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (5, N'Juana M.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (6, N'Andress D. ')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (7, N'Richard M.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (8, N'Olivia A.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (9, N'Joel C.')
INSERT [dbo].[Empleado] ([Codigo], [Nombre]) VALUES (10, N'Epifanio R.')
SET IDENTITY_INSERT [dbo].[Empleado] OFF
/****** Object:  Table [dbo].[Caja_registradora]    Script Date: 04/08/2018 15:48:58 ******/
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
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (2, 3)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (3, 2)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (4, 4)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (5, 5)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (6, 6)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (7, 7)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (8, 8)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (9, 9)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (10, 10)
SET IDENTITY_INSERT [dbo].[Caja_registradora] OFF
