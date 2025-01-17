USE [PlantAndHealth]
GO
/****** Object:  Table [dbo].[ARTICULOS]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICULOS](
	[CODIGO_PRODUCTO] [nvarchar](255) NOT NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[FAMILIA] [nvarchar](255) NULL,
	[PRECIO_UNITARIO] [int] NULL,
	[COSTO_UNITARIO] [int] NULL,
 CONSTRAINT [PK_ARTICULOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PRODUCTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[NRO] [smallint] NULL,
	[ID_CLIENTE] [nvarchar](255) NOT NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO] [nvarchar](255) NULL,
	[EDAD] [smallint] NULL,
	[ESTADO_CIVIL] [nvarchar](255) NULL,
	[RESIDENCIA] [nvarchar](255) NULL,
	[ORIGEN] [nvarchar](255) NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[ID_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientesSauco]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientesSauco](
	[ID_CLIENTE] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO] [nvarchar](255) NULL,
	[EDAD] [smallint] NULL,
	[LUGAR ORIGEN] [nvarchar](255) NULL,
	[PREFERENCIA COLOR] [nvarchar](255) NULL,
	[TIPO DE COMIDA] [nvarchar](255) NULL,
	[ESTADO CIVIL] [nvarchar](255) NULL,
	[CANTIDAD DE HIJOS] [smallint] NULL,
	[FIDELIDAD] [nvarchar](255) NULL,
	[COMPRASAUCO] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMUNA]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMUNA](
	[COMUNA_ID] [smallint] NOT NULL,
	[COMUNA_NOMBRE] [nvarchar](255) NULL,
	[PROVINCIA_ID] [smallint] NULL,
 CONSTRAINT [PK_COMUNA] PRIMARY KEY CLUSTERED 
(
	[COMUNA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[DOCUMENTO] [nvarchar](255) NULL,
	[CODIGO_PRODUCTO] [nvarchar](255) NULL,
	[PRECIO_UNITARIO] [int] NULL,
	[CANTIDAD] [int] NULL,
	[TOTAL] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProspectosClientesSauco]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProspectosClientesSauco](
	[NRO_CLIENTE] [smallint] NULL,
	[ID_CLIENTE] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO] [nvarchar](255) NULL,
	[EMAIL] [nvarchar](255) NULL,
	[EDAD] [smallint] NULL,
	[RESIDENCIA] [nvarchar](255) NULL,
	[ORIGEN] [nvarchar](255) NULL,
	[PREFERENCIA COLOR] [nvarchar](255) NULL,
	[TIPO DE COMIDA] [nvarchar](255) NULL,
	[ESTADO CIVIL] [nvarchar](255) NULL,
	[CANTIDAD DE HIJOS] [smallint] NULL,
	[FIDELIDAD] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVINCIA]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVINCIA](
	[PROVINCIA_ID] [smallint] NOT NULL,
	[PROVINCIA_NOMBRE] [nvarchar](255) NULL,
	[REGION_ID] [smallint] NULL,
 CONSTRAINT [PK_PROVINCIA] PRIMARY KEY CLUSTERED 
(
	[PROVINCIA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REGION]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REGION](
	[REGION_ID] [smallint] NOT NULL,
	[REGION] [nvarchar](255) NULL,
 CONSTRAINT [PK_REGION] PRIMARY KEY CLUSTERED 
(
	[REGION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUCURSAL]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUCURSAL](
	[SUCURSAL_ID] [smallint] NOT NULL,
	[NOMBRE_SUCURSAL] [nvarchar](255) NULL,
	[COMUNA_ID] [smallint] NULL,
 CONSTRAINT [PK_SUCURSAL] PRIMARY KEY CLUSTERED 
(
	[SUCURSAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENDEDORES]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDEDORES](
	[ID_VENDEDOR] [smallint] NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Apellido] [nvarchar](255) NULL,
	[TIPO_ CAPACITACION] [nvarchar](255) NULL,
	[HORAS_CAPACITACION] [smallint] NULL,
 CONSTRAINT [PK_VENDEDORES] PRIMARY KEY CLUSTERED 
(
	[ID_VENDEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTAS]    Script Date: 21/10/2024 11:00:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[DOCUMENTO] [nvarchar](255) NOT NULL,
	[FECHA] [datetime] NULL,
	[ID_CLIENTE] [nvarchar](255) NULL,
	[TIPO_DOCUMENTO] [nvarchar](255) NULL,
	[ID_VENDEDOR] [smallint] NULL,
	[TOTAL_NETO] [int] NULL,
	[IMPUESTO] [int] NULL,
	[TOTAL_DOCUMENTO] [int] NULL,
	[SUCURSAL_ID] [smallint] NULL,
 CONSTRAINT [PK_VENTAS] PRIMARY KEY CLUSTERED 
(
	[DOCUMENTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMUNA]  WITH CHECK ADD  CONSTRAINT [FK_COMUNA_PROVINCIA] FOREIGN KEY([PROVINCIA_ID])
REFERENCES [dbo].[PROVINCIA] ([PROVINCIA_ID])
GO
ALTER TABLE [dbo].[COMUNA] CHECK CONSTRAINT [FK_COMUNA_PROVINCIA]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_ARTICULOS1] FOREIGN KEY([CODIGO_PRODUCTO])
REFERENCES [dbo].[ARTICULOS] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_ARTICULOS1]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_VENTAS] FOREIGN KEY([DOCUMENTO])
REFERENCES [dbo].[VENTAS] ([DOCUMENTO])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_VENTAS]
GO
ALTER TABLE [dbo].[PROVINCIA]  WITH CHECK ADD  CONSTRAINT [FK_PROVINCIA_REGION] FOREIGN KEY([REGION_ID])
REFERENCES [dbo].[REGION] ([REGION_ID])
GO
ALTER TABLE [dbo].[PROVINCIA] CHECK CONSTRAINT [FK_PROVINCIA_REGION]
GO
ALTER TABLE [dbo].[SUCURSAL]  WITH CHECK ADD  CONSTRAINT [FK_SUCURSAL_COMUNA] FOREIGN KEY([COMUNA_ID])
REFERENCES [dbo].[COMUNA] ([COMUNA_ID])
GO
ALTER TABLE [dbo].[SUCURSAL] CHECK CONSTRAINT [FK_SUCURSAL_COMUNA]
GO
ALTER TABLE [dbo].[SUCURSAL]  WITH CHECK ADD  CONSTRAINT [FK_SUCURSAL_SUCURSAL] FOREIGN KEY([SUCURSAL_ID])
REFERENCES [dbo].[SUCURSAL] ([SUCURSAL_ID])
GO
ALTER TABLE [dbo].[SUCURSAL] CHECK CONSTRAINT [FK_SUCURSAL_SUCURSAL]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_CLIENTES] FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[CLIENTES] ([ID_CLIENTE])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_CLIENTES]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_SUCURSAL] FOREIGN KEY([SUCURSAL_ID])
REFERENCES [dbo].[SUCURSAL] ([SUCURSAL_ID])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_SUCURSAL]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_VENDEDORES] FOREIGN KEY([ID_VENDEDOR])
REFERENCES [dbo].[VENDEDORES] ([ID_VENDEDOR])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_VENDEDORES]
GO
