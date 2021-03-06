USE [master]
GO
/****** Brandol Lopez  Matricula 17-siin-1-037  seccion 0541 ******/
CREATE DATABASE [Banco]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TRABAJO FINALL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TRABAJO FINALL .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TRABAJO FINALL _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TRABAJO FINALL _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Banco] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Banco].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Banco] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Banco] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Banco] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Banco] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Banco] SET ARITHABORT OFF 
GO
ALTER DATABASE [Banco] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Banco] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Banco] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Banco] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Banco] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Banco] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Banco] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Banco] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Banco] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Banco] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Banco] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Banco] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Banco] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Banco] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Banco] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Banco] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Banco] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Banco] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Banco] SET  MULTI_USER 
GO
ALTER DATABASE [Banco] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Banco] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Banco] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Banco] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Banco] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Banco] SET QUERY_STORE = OFF
GO
USE [Banco]
GO
/****** Object:  Table [dbo].[AREA DE CAJA]    Script Date: 3/9/2020 9:30:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AREA DE CAJA](
	[AREA DE CAJA ID] [int] NOT NULL,
	[nombres] [varchar](50) NULL,
	[Sexo] [varchar](50) NULL,
	[nacionalidad] [varchar](50) NULL,
	[edad] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
 CONSTRAINT [PK_AREA DE CAJA] PRIMARY KEY CLUSTERED 
(
	[AREA DE CAJA ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AREA DE SERVICIO]    Script Date: 3/9/2020 9:30:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AREA DE SERVICIO](
	[AREA DE SERVICIO ID] [int] NOT NULL,
	[Nombres] [varchar](50) NULL,
	[sexo] [varchar](50) NULL,
	[Nacionalidad] [varchar](50) NULL,
	[Edad] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
 CONSTRAINT [PK_AREA DE SERVICIO_1] PRIMARY KEY CLUSTERED 
(
	[AREA DE SERVICIO ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 3/9/2020 9:30:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[Clientesid] [int] NULL,
	[nombre] [varchar](300) NULL,
	[nacionalidad] [varchar](300) NULL,
	[telefono] [varchar](300) NULL,
	[Direccion] [varchar](300) NULL,
	[correo] [varchar](300) NULL,
	[productos preferidos] [varchar](300) NULL,
	[area mas vicitada] [varchar](300) NULL,
	[origen de fondos] [varchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES PREMIUM]    Script Date: 3/9/2020 9:30:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES PREMIUM](
	[clientespremiumid*] [int] NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[nacionalidad] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[productos preferidos] [varchar](50) NULL,
	[area mas vicitada] [varchar](50) NULL,
	[origen de fondos] [varchar](50) NULL,
 CONSTRAINT [PK_CLIENTES PREMIUMM] PRIMARY KEY CLUSTERED 
(
	[clientespremiumid*] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GERENTE]    Script Date: 3/9/2020 9:30:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GERENTE](
	[gerenteid] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[sexo] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[direccion] [varchar](300) NULL,
	[subgerenteid] [int] NULL,
 CONSTRAINT [PK_GERENTE] PRIMARY KEY CLUSTERED 
(
	[gerenteid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 3/9/2020 9:30:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[productosid] [int] NOT NULL,
	[nombre del producto] [varchar](50) NULL,
	[tasa de interes] [varchar](50) NULL,
 CONSTRAINT [PK_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[productosid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUB GERENTE]    Script Date: 3/9/2020 9:30:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUB GERENTE](
	[subgerenteid] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[sexo] [varchar](50) NULL,
	[nacionalidad] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
 CONSTRAINT [PK_SUB GERENTE] PRIMARY KEY CLUSTERED 
(
	[subgerenteid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUPERVISOR DE CAJA]    Script Date: 3/9/2020 9:30:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUPERVISOR DE CAJA](
	[supervisor de cajaid] [int] NOT NULL,
	[nombre] [varchar](20) NULL,
	[sexo] [varchar](20) NULL,
	[nacionalidad] [varchar](20) NULL,
	[telefono] [varchar](20) NULL,
	[correo] [varchar](20) NULL,
 CONSTRAINT [PK_SUPERVISOR DE CAJA] PRIMARY KEY CLUSTERED 
(
	[supervisor de cajaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUPERVISOR DE SERVICIO]    Script Date: 3/9/2020 9:30:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUPERVISOR DE SERVICIO](
	[supervisor de servicio id] [int] NOT NULL,
	[nombre] [varchar](20) NULL,
	[sexo] [varchar](20) NULL,
	[nacionalidad] [varchar](20) NULL,
	[telefono] [varchar](20) NULL,
	[correo] [varchar](20) NULL,
 CONSTRAINT [PK_SUPERVISOR DE SERVICIO] PRIMARY KEY CLUSTERED 
(
	[supervisor de servicio id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AREA DE CAJA] ([AREA DE CAJA ID], [nombres], [Sexo], [nacionalidad], [edad], [telefono], [correo]) VALUES (1, N'JUAN PEREZ', N'Masculino', N'Dominicano', N'18', N'809-547-1658', N'ELDONJUANPEREZ123@gmail.com')
INSERT [dbo].[AREA DE CAJA] ([AREA DE CAJA ID], [nombres], [Sexo], [nacionalidad], [edad], [telefono], [correo]) VALUES (2, N'Ana Peña', N'Femenino', N'Dominicana', N'25', N'809-874-1654', N'AnaPeña@hotmail.com')
INSERT [dbo].[AREA DE CAJA] ([AREA DE CAJA ID], [nombres], [Sexo], [nacionalidad], [edad], [telefono], [correo]) VALUES (3, N'Jose Vazquez', N'Masculino', N'Dominicano', N'20', N'809-654-8712', N'josevazques15@hatmail.com')
INSERT [dbo].[AREA DE CAJA] ([AREA DE CAJA ID], [nombres], [Sexo], [nacionalidad], [edad], [telefono], [correo]) VALUES (4, N'Julia Roberts', N'Femenino', N'Americana', N'22', N'829-668-5782', N'robertsjulia2020@gmail.com')
INSERT [dbo].[AREA DE CAJA] ([AREA DE CAJA ID], [nombres], [Sexo], [nacionalidad], [edad], [telefono], [correo]) VALUES (5, N'antonio cespedes', N'Masculino', N'Dominicano', N'27', N'809-663-5741', N'cespedes1515@gmail.com')
INSERT [dbo].[AREA DE CAJA] ([AREA DE CAJA ID], [nombres], [Sexo], [nacionalidad], [edad], [telefono], [correo]) VALUES (6, N'rafael guzman', N'Masculino', N'Dominicano', N'32', N'809-632-2174', N'elrafa05@gmail.com')
INSERT [dbo].[AREA DE CAJA] ([AREA DE CAJA ID], [nombres], [Sexo], [nacionalidad], [edad], [telefono], [correo]) VALUES (7, N'Elsa Diaz', N'Femenino', N'Dominicana', N'20', N'849-552-6378', N'elsadias@gmail.com')
INSERT [dbo].[AREA DE CAJA] ([AREA DE CAJA ID], [nombres], [Sexo], [nacionalidad], [edad], [telefono], [correo]) VALUES (8, N'Oracio Vazquez', N'Masculino', N'Dominicano', N'18', N'849-001-5656', N'eloracio0507@gmail.com')
INSERT [dbo].[AREA DE CAJA] ([AREA DE CAJA ID], [nombres], [Sexo], [nacionalidad], [edad], [telefono], [correo]) VALUES (9, N'Jose Lopez', N'Masculino', N'Dominicano', N'19', N'829-654-8787', N'joselopez13@gmail.com')
INSERT [dbo].[AREA DE CAJA] ([AREA DE CAJA ID], [nombres], [Sexo], [nacionalidad], [edad], [telefono], [correo]) VALUES (10, N'Rosa Hernanadez', N'Femenino', N'Dominicana', N'22', N'849-653-7413', N'rosahernandez@hotmail.com')
GO
INSERT [dbo].[AREA DE SERVICIO] ([AREA DE SERVICIO ID], [Nombres], [sexo], [Nacionalidad], [Edad], [correo], [telefono]) VALUES (11, N'Julio Campos', N'Masculino', N'Dominicano', N'30', N'camposj@gmail.com', N'809-225-4782')
INSERT [dbo].[AREA DE SERVICIO] ([AREA DE SERVICIO ID], [Nombres], [sexo], [Nacionalidad], [Edad], [correo], [telefono]) VALUES (12, N'Alicia Diaz', N'Femenino', N'Dominicana', N'25', N'aliciadiaz@gmail.com', N'849-532-5493')
INSERT [dbo].[AREA DE SERVICIO] ([AREA DE SERVICIO ID], [Nombres], [sexo], [Nacionalidad], [Edad], [correo], [telefono]) VALUES (13, N'Juana Campusano', N'Femenino', N'Dominicana', N'42', N'campusano01@hotmail.es', N'849-004-2234')
INSERT [dbo].[AREA DE SERVICIO] ([AREA DE SERVICIO ID], [Nombres], [sexo], [Nacionalidad], [Edad], [correo], [telefono]) VALUES (14, N'Jose Ramos', N'Masculino', N'Dominicano', N'31', N'ramsoramos@gmail.com', N'829-324-1579')
INSERT [dbo].[AREA DE SERVICIO] ([AREA DE SERVICIO ID], [Nombres], [sexo], [Nacionalidad], [Edad], [correo], [telefono]) VALUES (15, N'Ana Matos', N'Femenino', N'Dominicana', N'27', N'matosana@gmail.com', N'849-365-3232')
INSERT [dbo].[AREA DE SERVICIO] ([AREA DE SERVICIO ID], [Nombres], [sexo], [Nacionalidad], [Edad], [correo], [telefono]) VALUES (16, N'yuderka rivas', N'Femenino', N'Dominicana', N'23', N'yuderkarivas@gmail.com', N'809-365-5658')
INSERT [dbo].[AREA DE SERVICIO] ([AREA DE SERVICIO ID], [Nombres], [sexo], [Nacionalidad], [Edad], [correo], [telefono]) VALUES (17, N'juan perez', N'Masculino', N'Dominicano', N'22', N'perezjuan0101@hotmail.com', N'849-551-6543')
INSERT [dbo].[AREA DE SERVICIO] ([AREA DE SERVICIO ID], [Nombres], [sexo], [Nacionalidad], [Edad], [correo], [telefono]) VALUES (18, N'Pedro Diaz', N'Masculino', N'Dominicano', N'25', N'pedrodiazzz@gmail.com', N'809-526-5658')
INSERT [dbo].[AREA DE SERVICIO] ([AREA DE SERVICIO ID], [Nombres], [sexo], [Nacionalidad], [Edad], [correo], [telefono]) VALUES (19, N'Oracio perez', N'Masculino', N'Dominicano', N'30', N'N/A', N'809-531-0102')
INSERT [dbo].[AREA DE SERVICIO] ([AREA DE SERVICIO ID], [Nombres], [sexo], [Nacionalidad], [Edad], [correo], [telefono]) VALUES (20, N'Anabel nolazco', N'Femenino', N'Dominicana', N'19', N'ananolazco01@gmail.com', N'849-536-6494')
GO
INSERT [dbo].[CLIENTES] ([Clientesid], [nombre], [nacionalidad], [telefono], [Direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (111, N'Ana Troncoso ', N'dominicana', N'809-487-5698', N'c/oeste #5 buenos aires', N'anatroncoso@gmail.com', N'prestamos personales', N'servicio al cliente', N'pencion estadounidense')
INSERT [dbo].[CLIENTES] ([Clientesid], [nombre], [nacionalidad], [telefono], [Direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (112, N'Jose f. Rodriguez', N'dominicano', N'849-563-6787', N'c/norte #10 herrera', N'joserodriguez@gmail.com', N'tarjeta gold', N'Area de caja', N'empleado privado')
INSERT [dbo].[CLIENTES] ([Clientesid], [nombre], [nacionalidad], [telefono], [Direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (113, N'Maria Perez', N'cubana', N'809-822-5658', N'c/ central #50 los alcarrizos', N'mariaprz@gmail.com', N'prestamo hipotecario', N'Area de caja ', N'empleada publica')
INSERT [dbo].[CLIENTES] ([Clientesid], [nombre], [nacionalidad], [telefono], [Direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (114, N'Josue Reyes', N'Arjentino', N'809-553-6458', N'c/ 5 #45 los prados', N'josuejosue@hotmail.com', N'tarjeta personal ', N'Area de caja', N'empleado privado ')
INSERT [dbo].[CLIENTES] ([Clientesid], [nombre], [nacionalidad], [telefono], [Direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (115, N'Emilia Bosino ', N'Dominicana', N'849-568-7942', N'c/eduardo #8 edif. 5 apto 201', N'emiliabis@gmail.com', N'tarjeta black', N'Area de servicio', N'Empresaria')
INSERT [dbo].[CLIENTES] ([Clientesid], [nombre], [nacionalidad], [telefono], [Direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (116, N'Pedro Perez Perez', N'Dominicanos', N'809-265-7321', N'c/ atuei #65 los frailes', N'pedropedro@gmail.com', N'Terjeta empresarial', N'Area de caja ', N'Empresario')
INSERT [dbo].[CLIENTES] ([Clientesid], [nombre], [nacionalidad], [telefono], [Direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (117, N'Lorezo Reyes', N'Venezolano', N'809-563-9874', N'c/ azua #98 Sto Dgo norte', N'Lorenzoreyes@gmail.com', N'Prestamo personal', N'Area de Servicio', N'Empleado privado')
INSERT [dbo].[CLIENTES] ([Clientesid], [nombre], [nacionalidad], [telefono], [Direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (118, N'Alfredo Mejia', N'Dominicano', N'849-531-5871', N'c/ europa #20', N'Alfredomejia@gmail.com', N'Tarjeta basica', N'Area de caja', N'Empleado publico')
INSERT [dbo].[CLIENTES] ([Clientesid], [nombre], [nacionalidad], [telefono], [Direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (119, N'Oliver Nuñez', N'Dominicano', N'829-332-6147', N'c/esperanza #50 herrera', N'nuñezoliver03@gmail.com', N'Prestamos de negocio', N'Area de caja', N'Empresario')
INSERT [dbo].[CLIENTES] ([Clientesid], [nombre], [nacionalidad], [telefono], [Direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (110, N'Victo Gomez Casanova', N'Dominicano', N'849-632-8725', N'c/arusa #58 los palmares', N'Victorgc@gmail.com', N'Tarjera de credito en dolares', N'Area de servicio', N'Invercionista')
GO
INSERT [dbo].[CLIENTES PREMIUM] ([clientespremiumid*], [Nombres], [nacionalidad], [telefono], [direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (210, N'Jonny Pereira', N'Dominicano', N'849-879-6354', N'Avenida Gustavo Mejía Ricart', N'JonnyPereira@gmail.com', N'tarjeta de credito black', N'Area de caja ', N'Invercionista')
INSERT [dbo].[CLIENTES PREMIUM] ([clientespremiumid*], [Nombres], [nacionalidad], [telefono], [direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (211, N'Noelia Zorrila', N'Venezolana', N'809-456-9832', N'Calle 7, 4', N'NoeliaZorrila@gmail.com', N'tarjeta de credito basica', N'Area de servicio', N'Empresario')
INSERT [dbo].[CLIENTES PREMIUM] ([clientespremiumid*], [Nombres], [nacionalidad], [telefono], [direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (212, N'Juan Ballenilla', N'cubano', N'849-553-5874', N'Calle Max Henríquez Ureña, 83', N'JuanBallenilla@gmail.com', N'tarjeta de credito platinum', N'Area de caja ', N'Empresario')
INSERT [dbo].[CLIENTES PREMIUM] ([clientespremiumid*], [Nombres], [nacionalidad], [telefono], [direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (213, N'Sheila Luna', N'Venezolana', N'809-547-2465', N'venida República de Colombia', N'SheilaLuna@gmail.com', N'tarjeta de credito en euros', N'Area de servicio', N'Invercionista')
INSERT [dbo].[CLIENTES PREMIUM] ([clientespremiumid*], [Nombres], [nacionalidad], [telefono], [direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (214, N'Nora Diaz', N'nezolana', N'849-598-2484', N' República de Colombia', N'NoraDiaz@gmail.com', N'tarjeta de credito en dolares', N'Area de caja ', N'Empresario')
INSERT [dbo].[CLIENTES PREMIUM] ([clientespremiumid*], [Nombres], [nacionalidad], [telefono], [direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (215, N'Juan Juls', N'cubano', N'829-547-5324', N' 27 de Febrero, 54', N'JuanJuls@gmail.com', N'tarjeta de credito gold', N'Area de servicio', N'Invercionista')
INSERT [dbo].[CLIENTES PREMIUM] ([clientespremiumid*], [Nombres], [nacionalidad], [telefono], [direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (216, N'Jorge Diaz', N'Dominicano', N'849-553-3564', N'Calle Santiago, 657', N'JorgeDiaz@gmail.com', N'Prestamo hipotecario', N'Area de servicio', N'Invercionista')
INSERT [dbo].[CLIENTES PREMIUM] ([clientespremiumid*], [Nombres], [nacionalidad], [telefono], [direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (217, N'Ines segura', N'Dominicano', N'809-544-6546', N'Avenida Sarasota, 3', N'Inesegura@gmail.com', N'tarjeta de credito platinum', N'Area de servicio', N'Empresario')
INSERT [dbo].[CLIENTES PREMIUM] ([clientespremiumid*], [Nombres], [nacionalidad], [telefono], [direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (218, N'Carlos Arias', N'Dominicano', N'809-565-0454', N'Calle Félix E Mejía, 243', N'CarlosArias@gmail.com', N'Prestamo de negocio', N'Area de servicio', N'Invercionista')
INSERT [dbo].[CLIENTES PREMIUM] ([clientespremiumid*], [Nombres], [nacionalidad], [telefono], [direccion], [correo], [productos preferidos], [area mas vicitada], [origen de fondos]) VALUES (219, N'Fortuna Rivera', N'Venezolana', N'829-656-4486', N'Avenida Lope de Vega, 19', N'FortunRivera@gmail.com', N'certificado financiero ', N'Area de caja ', N'Empresario')
GO
INSERT [dbo].[GERENTE] ([gerenteid], [nombre], [sexo], [telefono], [correo], [direccion], [subgerenteid]) VALUES (100, N'Alberto Grullon', N'Masculino', N'809-355-0205', N'Albertogrullon@gmail.com', N'c/oeste #50, las praderas, herrera', NULL)
GO
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (1, N'PRESTAMO PERSONAL', N'30%')
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (2, N'PRESTAMO HIPOTECARIO ', N'60%')
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (3, N'CUENTA DE AHORRO ', N'2%')
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (4, N'CUENTA CORRIENTE', N'3%')
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (5, N'CUENTA EN DOLARES', N'5%')
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (6, N'CUENTA EN EUROS', N'5%')
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (7, N'TARJETA DE CREDITO BASICA', N'15%')
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (8, N'TARJETA DE CREDITO GOLD', N'20%')
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (9, N'TARJETA DE CREDITO BLACK', N'30%')
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (10, N'TARJETA DE CREDITO EN DOLARES', N'25%')
INSERT [dbo].[PRODUCTOS] ([productosid], [nombre del producto], [tasa de interes]) VALUES (11, N'TARJETA DE CREDITO EN EUROS', N'25%')
GO
ALTER TABLE [dbo].[SUB GERENTE]  WITH CHECK ADD  CONSTRAINT [FK_SUB GERENTE_CLIENTES PREMIUM] FOREIGN KEY([subgerenteid])
REFERENCES [dbo].[CLIENTES PREMIUM] ([clientespremiumid*])
GO
ALTER TABLE [dbo].[SUB GERENTE] CHECK CONSTRAINT [FK_SUB GERENTE_CLIENTES PREMIUM]
GO
ALTER TABLE [dbo].[SUB GERENTE]  WITH CHECK ADD  CONSTRAINT [FK_SUB GERENTE_GERENTE] FOREIGN KEY([subgerenteid])
REFERENCES [dbo].[GERENTE] ([gerenteid])
GO
ALTER TABLE [dbo].[SUB GERENTE] CHECK CONSTRAINT [FK_SUB GERENTE_GERENTE]
GO
ALTER TABLE [dbo].[SUPERVISOR DE CAJA]  WITH CHECK ADD  CONSTRAINT [FK_SUPERVISOR DE CAJA_SUB GERENTE] FOREIGN KEY([supervisor de cajaid])
REFERENCES [dbo].[SUB GERENTE] ([subgerenteid])
GO
ALTER TABLE [dbo].[SUPERVISOR DE CAJA] CHECK CONSTRAINT [FK_SUPERVISOR DE CAJA_SUB GERENTE]
GO
ALTER TABLE [dbo].[SUPERVISOR DE SERVICIO]  WITH CHECK ADD  CONSTRAINT [FK_SUPERVISOR DE SERVICIO_SUB GERENTE] FOREIGN KEY([supervisor de servicio id])
REFERENCES [dbo].[SUB GERENTE] ([subgerenteid])
GO
ALTER TABLE [dbo].[SUPERVISOR DE SERVICIO] CHECK CONSTRAINT [FK_SUPERVISOR DE SERVICIO_SUB GERENTE]
GO
USE [master]
GO
ALTER DATABASE [Banco] SET  READ_WRITE 
GO
