USE [master]

GO

/****** Nombre: Juan A. De oleo M. Matricula:16-SIIN-1-149 Seccion:0541  ******/

/****** Nombre: Felix J.Beltre V. Matricula:16-SIIN-1-146 Seccion:0541  ******/

/****** Nombre: Richard Mora Matricula:17-EIIN-1-176 Seccion:0541  ******/


CREATE DATABASE [La Tiendainformatica] ON  PRIMARY 
( NAME = N'La Tiendainformatica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\La Tiendainformatica.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'La Tiendainformatica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\La Tiendainformatica_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [La Tiendainformatica] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [La Tiendainformatica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [La Tiendainformatica] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [La Tiendainformatica] SET ANSI_NULLS OFF
GO
ALTER DATABASE [La Tiendainformatica] SET ANSI_PADDING OFF
GO
ALTER DATABASE [La Tiendainformatica] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [La Tiendainformatica] SET ARITHABORT OFF
GO
ALTER DATABASE [La Tiendainformatica] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [La Tiendainformatica] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [La Tiendainformatica] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [La Tiendainformatica] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [La Tiendainformatica] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [La Tiendainformatica] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [La Tiendainformatica] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [La Tiendainformatica] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [La Tiendainformatica] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [La Tiendainformatica] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [La Tiendainformatica] SET  DISABLE_BROKER
GO
ALTER DATABASE [La Tiendainformatica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [La Tiendainformatica] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [La Tiendainformatica] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [La Tiendainformatica] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [La Tiendainformatica] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [La Tiendainformatica] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [La Tiendainformatica] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [La Tiendainformatica] SET  READ_WRITE
GO
ALTER DATABASE [La Tiendainformatica] SET RECOVERY FULL
GO
ALTER DATABASE [La Tiendainformatica] SET  MULTI_USER
GO
ALTER DATABASE [La Tiendainformatica] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [La Tiendainformatica] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'La Tiendainformatica', N'ON'
GO
USE [La Tiendainformatica]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 04/08/2018 16:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Fabricante] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Fabricante] ON
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (1, N'Richard Mora')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (2, N'Juan De Oleo')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (3, N'Felix Beltre')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (4, N'Jean pual')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (5, N'Delgado Almanzar')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (6, N'Mariela Santana')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (7, N'Ambar Rodriguez')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (8, N'Alan Alvarez ')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (9, N'Ronni Morales')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (10, N'Wilber Gomez')
SET IDENTITY_INSERT [dbo].[Fabricante] OFF
/****** Object:  Table [dbo].[Articulo]    Script Date: 04/08/2018 16:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Precio] [int] NULL,
	[Fabricante] [int] NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulo] ON
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (1, N'Computadoras', 13000, 2)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (2, N'Iphone', 18000, 6)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (3, N'Radio', 12000, 7)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (4, N'Cargador', 1000, 5)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (5, N'Memoria', 300, 1)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (6, N'Cable usb', 400, 4)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (7, N'Plasma', 15000, 8)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (8, N'Tablet', 5000, 10)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (9, N'Controle', 400, 3)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (10, N'Cover', 500, 9)
SET IDENTITY_INSERT [dbo].[Articulo] OFF
