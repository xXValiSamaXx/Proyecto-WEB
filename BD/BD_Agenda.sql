Create database BD_Agenda
GO

USE [BD_Agenda]

/****** Object:  Table [dbo].[ActividadesAcademicas]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActividadesAcademicas](
	[ID_actividadesacademicas] [int] IDENTITY(1,1) NOT NULL,
	[usuariosID] [int] NULL,
	[tiposactividadesID] [int] NULL,
	[materiaID] [int] NULL,
	[descripcion] [nvarchar](max) NULL,
	[fecha] [date] NULL,
	[calificacion] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_actividadesacademicas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[ID_carrera] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[perfil_carrera] [varchar](50) NULL,
	[duracion] [varchar](50) NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carrera_materia]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrera_materia](
	[ID_carrera_materia] [int] IDENTITY(1,1) NOT NULL,
	[carreraid] [int] NULL,
	[materiaid] [int] NULL,
	[es_reticula] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_carrera_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformacionAcademica_estudiante]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformacionAcademica_estudiante](
	[ID_InformacionAcademica_estudiante] [int] IDENTITY(1,1) NOT NULL,
	[usuariosid] [int] NULL,
	[periodoid] [int] NULL,
	[carreraid] [int] NULL,
	[numcontrol] [varchar](50) NULL,
	[semestre] [varchar](50) NULL,
	[promedio] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_InformacionAcademica_estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformacionContacto]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformacionContacto](
	[ID_infocontacto] [int] IDENTITY(1,1) NOT NULL,
	[usuariosid] [int] NULL,
	[codigo_postal] [varchar](5) NULL,
	[municipio] [varchar](50) NULL,
	[estado] [varchar](50) NULL,
	[ciudad] [varchar](50) NULL,
	[colonia] [varchar](50) NULL,
	[calle_principal] [varchar](50) NULL,
	[primer_cruzamiento] [varchar](50) NULL,
	[segundo_cruzamiento] [varchar](50) NULL,
	[referencias] [varchar](50) NULL,
	[numero_exterior] [varchar](50) NULL,
	[numero_interior] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_infocontacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformacionPersonal]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformacionPersonal](
	[ID_informacionpersonal] [int] IDENTITY(1,1) NOT NULL,
	[usuariosid] [int] NOT NULL,
	[nombres] [varchar](50) NULL,
	[primerapellido] [varchar](50) NULL,
	[segundoapellido] [varchar](50) NULL,
	[fecha_nacimiento] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[RFC] [varchar](13) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_informacionpersonal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID_login] [int] IDENTITY(1,1) NOT NULL,
	[usuariosid] [int] NULL,
	[fecha_hora] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[ID_materia] [int] IDENTITY(1,1) NOT NULL,
	[periodoid] [int] NULL,
	[carreraid] [int] NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Periodo]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Periodo](
	[ID_periodo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_terminacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos_actividades]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos_actividades](
	[ID_tiposactividades] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_tiposactividades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tiposusuarios]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tiposusuarios](
	[ID_tiposusuarios] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_tiposusuarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[ID_usuarios] [int] IDENTITY(1,1) NOT NULL,
	[tiposusuariosid] [int] NULL,
	[nombre] [varchar](50) NULL,
	[contrasenas] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_usuarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Carrera] ON 

INSERT [dbo].[Carrera] ([ID_carrera], [nombre], [perfil_carrera], [duracion], [descripcion]) VALUES (4, N'ITIC', N'a', N'9', N'Ingeniero en sistemas y Comunicaciones ')
INSERT [dbo].[Carrera] ([ID_carrera], [nombre], [perfil_carrera], [duracion], [descripcion]) VALUES (5, N'ISIC', N'a', N'9', N'Ingeniero en sistemas')
INSERT [dbo].[Carrera] ([ID_carrera], [nombre], [perfil_carrera], [duracion], [descripcion]) VALUES (6, N'Turismo', N'a', N'9', N'Viajes')
SET IDENTITY_INSERT [dbo].[Carrera] OFF
GO
SET IDENTITY_INSERT [dbo].[carrera_materia] ON 

INSERT [dbo].[carrera_materia] ([ID_carrera_materia], [carreraid], [materiaid], [es_reticula]) VALUES (1, 4, 1, 1)
INSERT [dbo].[carrera_materia] ([ID_carrera_materia], [carreraid], [materiaid], [es_reticula]) VALUES (2, 5, 2, 1)
INSERT [dbo].[carrera_materia] ([ID_carrera_materia], [carreraid], [materiaid], [es_reticula]) VALUES (3, 6, 3, 0)
SET IDENTITY_INSERT [dbo].[carrera_materia] OFF
GO
SET IDENTITY_INSERT [dbo].[InformacionAcademica_estudiante] ON 

INSERT [dbo].[InformacionAcademica_estudiante] ([ID_InformacionAcademica_estudiante], [usuariosid], [periodoid], [carreraid], [numcontrol], [semestre], [promedio]) VALUES (1, 3, 3, 4, N'21390311', N'5', CAST(80.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[InformacionAcademica_estudiante] OFF
GO
SET IDENTITY_INSERT [dbo].[InformacionContacto] ON 

INSERT [dbo].[InformacionContacto] ([ID_infocontacto], [usuariosid], [codigo_postal], [municipio], [estado], [ciudad], [colonia], [calle_principal], [primer_cruzamiento], [segundo_cruzamiento], [referencias], [numero_exterior], [numero_interior]) VALUES (1, 3, N'77010', N'Othón P. Blanco', N'Quintana Roo', N'Chetumal', N'Adolfo López Mateos', N'a', N'a', N'a', N'a', N'347', N'')
SET IDENTITY_INSERT [dbo].[InformacionContacto] OFF
GO
SET IDENTITY_INSERT [dbo].[InformacionPersonal] ON 

INSERT [dbo].[InformacionPersonal] ([ID_informacionpersonal], [usuariosid], [nombres], [primerapellido], [segundoapellido], [fecha_nacimiento], [telefono], [email], [RFC]) VALUES (1, 3, N'Betillo', N'Pech', N'Montero', N'2023-12-13', N'9831847121', N'angelrayaviles20@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[InformacionPersonal] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([ID_login], [usuariosid], [fecha_hora]) VALUES (1, NULL, CAST(N'2023-12-13T21:02:08.860' AS DateTime))
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Materia] ON 

INSERT [dbo].[Materia] ([ID_materia], [periodoid], [carreraid], [nombre]) VALUES (1, 3, 4, N'Base de datos distribuida')
INSERT [dbo].[Materia] ([ID_materia], [periodoid], [carreraid], [nombre]) VALUES (2, 3, 5, N'Base de datos distribuida')
INSERT [dbo].[Materia] ([ID_materia], [periodoid], [carreraid], [nombre]) VALUES (3, 3, 6, N'Cálculo')
SET IDENTITY_INSERT [dbo].[Materia] OFF
GO
SET IDENTITY_INSERT [dbo].[Periodo] ON 

INSERT [dbo].[Periodo] ([ID_periodo], [nombre], [fecha_inicio], [fecha_terminacion]) VALUES (1, N'Enero-Junio 2023', CAST(N'2023-01-30T00:00:00.000' AS DateTime), CAST(N'2023-06-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Periodo] ([ID_periodo], [nombre], [fecha_inicio], [fecha_terminacion]) VALUES (2, N'Verano 2023', CAST(N'2023-06-26T00:00:00.000' AS DateTime), CAST(N'2023-08-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Periodo] ([ID_periodo], [nombre], [fecha_inicio], [fecha_terminacion]) VALUES (3, N'Agosto-Diciembre 2023', CAST(N'2023-08-21T00:00:00.000' AS DateTime), CAST(N'2023-12-08T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Periodo] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipos_actividades] ON 

INSERT [dbo].[Tipos_actividades] ([ID_tiposactividades], [nombre]) VALUES (1, N'Tareas')
INSERT [dbo].[Tipos_actividades] ([ID_tiposactividades], [nombre]) VALUES (2, N'Proyectos')
INSERT [dbo].[Tipos_actividades] ([ID_tiposactividades], [nombre]) VALUES (3, N'Examenes')
SET IDENTITY_INSERT [dbo].[Tipos_actividades] OFF
GO
SET IDENTITY_INSERT [dbo].[Tiposusuarios] ON 

INSERT [dbo].[Tiposusuarios] ([ID_tiposusuarios], [tipo]) VALUES (1, N'Estudiante')
INSERT [dbo].[Tiposusuarios] ([ID_tiposusuarios], [tipo]) VALUES (2, N'Admi')
SET IDENTITY_INSERT [dbo].[Tiposusuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([ID_usuarios], [tiposusuariosid], [nombre], [contrasenas]) VALUES (2, 2, N'Admin', N'$2y$10$ld/GfwiOuS0Qr1jFW8ZtGe3bkF9z5TBGstwMPZlJyxzX2ByAaEchK')
INSERT [dbo].[Usuarios] ([ID_usuarios], [tiposusuariosid], [nombre], [contrasenas]) VALUES (3, 1, N'BetoPasillas', N'$2y$10$A0yKeg6zN0tpL5j24xJFcebV8ezVnkZdqLmJ3C1ikJKFwwyYj7ZtK')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[ActividadesAcademicas]  WITH CHECK ADD  CONSTRAINT [FK_ActividadesAcademicas_Tipos_actividades] FOREIGN KEY([tiposactividadesID])
REFERENCES [dbo].[Tipos_actividades] ([ID_tiposactividades])
GO
ALTER TABLE [dbo].[ActividadesAcademicas] CHECK CONSTRAINT [FK_ActividadesAcademicas_Tipos_actividades]
GO
ALTER TABLE [dbo].[ActividadesAcademicas]  WITH CHECK ADD  CONSTRAINT [FK_informacionacademica_estudianteID] FOREIGN KEY([usuariosID])
REFERENCES [dbo].[Usuarios] ([ID_usuarios])
GO
ALTER TABLE [dbo].[ActividadesAcademicas] CHECK CONSTRAINT [FK_informacionacademica_estudianteID]
GO
ALTER TABLE [dbo].[ActividadesAcademicas]  WITH CHECK ADD  CONSTRAINT [FK_informacionacademica_materiaID] FOREIGN KEY([materiaID])
REFERENCES [dbo].[Materia] ([ID_materia])
GO
ALTER TABLE [dbo].[ActividadesAcademicas] CHECK CONSTRAINT [FK_informacionacademica_materiaID]
GO
ALTER TABLE [dbo].[carrera_materia]  WITH CHECK ADD FOREIGN KEY([carreraid])
REFERENCES [dbo].[Carrera] ([ID_carrera])
GO
ALTER TABLE [dbo].[carrera_materia]  WITH CHECK ADD FOREIGN KEY([materiaid])
REFERENCES [dbo].[Materia] ([ID_materia])
GO
ALTER TABLE [dbo].[InformacionAcademica_estudiante]  WITH CHECK ADD FOREIGN KEY([carreraid])
REFERENCES [dbo].[Carrera] ([ID_carrera])
GO
ALTER TABLE [dbo].[InformacionAcademica_estudiante]  WITH CHECK ADD FOREIGN KEY([periodoid])
REFERENCES [dbo].[Periodo] ([ID_periodo])
GO
ALTER TABLE [dbo].[InformacionAcademica_estudiante]  WITH CHECK ADD FOREIGN KEY([usuariosid])
REFERENCES [dbo].[Usuarios] ([ID_usuarios])
GO
ALTER TABLE [dbo].[InformacionContacto]  WITH CHECK ADD FOREIGN KEY([usuariosid])
REFERENCES [dbo].[Usuarios] ([ID_usuarios])
GO
ALTER TABLE [dbo].[InformacionPersonal]  WITH CHECK ADD FOREIGN KEY([usuariosid])
REFERENCES [dbo].[Usuarios] ([ID_usuarios])
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD FOREIGN KEY([usuariosid])
REFERENCES [dbo].[Usuarios] ([ID_usuarios])
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD FOREIGN KEY([carreraid])
REFERENCES [dbo].[Carrera] ([ID_carrera])
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD FOREIGN KEY([periodoid])
REFERENCES [dbo].[Periodo] ([ID_periodo])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([tiposusuariosid])
REFERENCES [dbo].[Tiposusuarios] ([ID_tiposusuarios])
GO
/****** Object:  StoredProcedure [dbo].[ActualizarPeriodos]    Script Date: 13/12/2023 09:41:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarPeriodos]
AS
BEGIN
    -- Actualizar los nombres de los períodos incrementando el año en 1
    UPDATE [BD_Agenda].[dbo].[Periodo]
    SET nombre = REPLACE(nombre, CAST(YEAR(GETDATE()) AS VARCHAR), CAST(YEAR(GETDATE()) + 1 AS VARCHAR))

    -- Actualizar las fechas de inicio y terminación
    -- Aquí necesitarás ajustar las fechas según tus necesidades específicas
    UPDATE [BD_Agenda].[dbo].[Periodo]
    SET fecha_inicio = DATEADD(YEAR, 1, fecha_inicio),
        fecha_terminacion = DATEADD(YEAR, 1, fecha_terminacion)
END
GO
