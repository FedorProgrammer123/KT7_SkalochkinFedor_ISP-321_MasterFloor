USE [master]
GO
/****** Object:  Database [KT7_SkalochkinFedor_ISP-321_MasterPol]    Script Date: 13.11.2024 10:21:42 ******/
CREATE DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KT7_SkalochkinFedor_ISP-321_MasterPol', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KT7_SkalochkinFedor_ISP-321_MasterPol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KT7_SkalochkinFedor_ISP-321_MasterPol_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KT7_SkalochkinFedor_ISP-321_MasterPol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KT7_SkalochkinFedor_ISP-321_MasterPol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET ARITHABORT OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET  MULTI_USER 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET QUERY_STORE = OFF
GO
USE [KT7_SkalochkinFedor_ISP-321_MasterPol]
GO
/****** Object:  Table [dbo].[AddressPartner]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressPartner](
	[IDAddressPartner] [int] IDENTITY(1,1) NOT NULL,
	[PostIndex] [int] NOT NULL,
	[Region] [int] NOT NULL,
	[City] [int] NOT NULL,
	[Street] [int] NOT NULL,
	[House] [int] NOT NULL,
 CONSTRAINT [PK_AddressPartner] PRIMARY KEY CLUSTERED 
(
	[IDAddressPartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[IDCity] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[IDCity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[IDDirector] [int] IDENTITY(1,1) NOT NULL,
	[Director] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[IDDirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialTypeImport]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialTypeImport](
	[IDTypeMaterial] [int] IDENTITY(1,1) NOT NULL,
	[TypeMaterial] [nvarchar](350) NOT NULL,
	[PercentageDeffectMaterial] [float] NOT NULL,
 CONSTRAINT [PK_MaterialTypeImport] PRIMARY KEY CLUSTERED 
(
	[IDTypeMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProductsImport]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProductsImport](
	[IDProductions] [int] IDENTITY(1,1) NOT NULL,
	[Productions] [int] NOT NULL,
	[TitlePartner] [int] NOT NULL,
	[QuantityProducts] [int] NOT NULL,
	[DateSale] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProductsImport] PRIMARY KEY CLUSTERED 
(
	[IDProductions] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnersImport]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnersImport](
	[IDPartners] [int] IDENTITY(1,1) NOT NULL,
	[TypePartner] [int] NOT NULL,
	[TitlePartner] [int] NOT NULL,
	[Director] [int] NOT NULL,
	[EmailPartner] [varchar](350) NOT NULL,
	[PhonePartner] [nvarchar](350) NOT NULL,
	[AddressPartner] [int] NOT NULL,
	[INN] [bigint] NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_PartnersImport] PRIMARY KEY CLUSTERED 
(
	[IDPartners] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerTitle]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerTitle](
	[IDTitlePartner] [int] IDENTITY(1,1) NOT NULL,
	[TitlePartner] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_PartnerTitle] PRIMARY KEY CLUSTERED 
(
	[IDTitlePartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[IDTypePartner] [int] IDENTITY(1,1) NOT NULL,
	[TypePartner] [nchar](3) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[IDTypePartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostIndex]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostIndex](
	[IDPostIndex] [int] IDENTITY(1,1) NOT NULL,
	[PostIndex] [int] NOT NULL,
 CONSTRAINT [PK_PostIndex] PRIMARY KEY CLUSTERED 
(
	[IDPostIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsImport]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsImport](
	[IDProducts] [int] IDENTITY(1,1) NOT NULL,
	[ProductsType] [int] NOT NULL,
	[TitleProducts] [int] NOT NULL,
	[Article] [bigint] NOT NULL,
	[MinPrice] [float] NOT NULL,
 CONSTRAINT [PK_ProductsImport] PRIMARY KEY CLUSTERED 
(
	[IDProducts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeImport]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeImport](
	[IDTypeProducts] [int] IDENTITY(1,1) NOT NULL,
	[TypeProducts] [nvarchar](350) NOT NULL,
	[CoeffTypeProducts] [float] NOT NULL,
 CONSTRAINT [PK_ProductTypeImport] PRIMARY KEY CLUSTERED 
(
	[IDTypeProducts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[IDRegion] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[IDRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[IDStreet] [int] IDENTITY(1,1) NOT NULL,
	[Street] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[IDStreet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TitleProducts]    Script Date: 13.11.2024 10:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TitleProducts](
	[IDProductions] [int] IDENTITY(1,1) NOT NULL,
	[Productions] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_TitleProductions] PRIMARY KEY CLUSTERED 
(
	[IDProductions] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AddressPartner] ON 

INSERT [dbo].[AddressPartner] ([IDAddressPartner], [PostIndex], [Region], [City], [Street], [House]) VALUES (1, 1, 5, 2, 4, 51)
INSERT [dbo].[AddressPartner] ([IDAddressPartner], [PostIndex], [Region], [City], [Street], [House]) VALUES (2, 2, 1, 3, 5, 18)
INSERT [dbo].[AddressPartner] ([IDAddressPartner], [PostIndex], [Region], [City], [Street], [House]) VALUES (3, 3, 4, 1, 2, 21)
INSERT [dbo].[AddressPartner] ([IDAddressPartner], [PostIndex], [Region], [City], [Street], [House]) VALUES (4, 4, 2, 4, 3, 122)
INSERT [dbo].[AddressPartner] ([IDAddressPartner], [PostIndex], [Region], [City], [Street], [House]) VALUES (5, 5, 3, 5, 1, 15)
SET IDENTITY_INSERT [dbo].[AddressPartner] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([IDCity], [City]) VALUES (1, N'город Приморск')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (2, N'город Реутов')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (3, N'город Северодвинск')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (4, N'город Старый Оскол')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (5, N'город Юрга')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Director] ON 

INSERT [dbo].[Director] ([IDDirector], [Director]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[Director] ([IDDirector], [Director]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[Director] ([IDDirector], [Director]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[Director] ([IDDirector], [Director]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[Director] ([IDDirector], [Director]) VALUES (5, N'Степанов Степан Сергеевич')
SET IDENTITY_INSERT [dbo].[Director] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialTypeImport] ON 

INSERT [dbo].[MaterialTypeImport] ([IDTypeMaterial], [TypeMaterial], [PercentageDeffectMaterial]) VALUES (1, N'Тип материала 1', 0.001)
INSERT [dbo].[MaterialTypeImport] ([IDTypeMaterial], [TypeMaterial], [PercentageDeffectMaterial]) VALUES (2, N'Тип материала 2', 0.0095)
INSERT [dbo].[MaterialTypeImport] ([IDTypeMaterial], [TypeMaterial], [PercentageDeffectMaterial]) VALUES (3, N'Тип материала 3', 0.0028)
INSERT [dbo].[MaterialTypeImport] ([IDTypeMaterial], [TypeMaterial], [PercentageDeffectMaterial]) VALUES (4, N'Тип материала 4', 0.0055)
INSERT [dbo].[MaterialTypeImport] ([IDTypeMaterial], [TypeMaterial], [PercentageDeffectMaterial]) VALUES (5, N'Тип материала 5', 0.0034)
SET IDENTITY_INSERT [dbo].[MaterialTypeImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProductsImport] ON 

INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProductions], [Productions], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProductsImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnersImport] ON 

INSERT [dbo].[PartnersImport] ([IDPartners], [TypePartner], [TitlePartner], [Director], [EmailPartner], [PhonePartner], [AddressPartner], [INN], [Rating]) VALUES (1, 1, 1, 2, N'aleksandraivanova@ml.ru', N'+7(493)-123-45-67', 1, 2222455179, 7)
INSERT [dbo].[PartnersImport] ([IDPartners], [TypePartner], [TitlePartner], [Director], [EmailPartner], [PhonePartner], [AddressPartner], [INN], [Rating]) VALUES (2, 3, 3, 3, N'vppetrov@vl.ru', N'+7(987)-123-56-78', 2, 3333888520, 7)
INSERT [dbo].[PartnersImport] ([IDPartners], [TypePartner], [TitlePartner], [Director], [EmailPartner], [PhonePartner], [AddressPartner], [INN], [Rating]) VALUES (3, 4, 5, 4, N'ansolovev@st.ru', N'+7(812)-223-32-00', 3, 4440391035, 7)
INSERT [dbo].[PartnersImport] ([IDPartners], [TypePartner], [TitlePartner], [Director], [EmailPartner], [PhonePartner], [AddressPartner], [INN], [Rating]) VALUES (4, 2, 4, 1, N'ekaterina.vorobeva@ml.ru', N'+7(444)-222-33-11', 4, 1111520857, 5)
INSERT [dbo].[PartnersImport] ([IDPartners], [TypePartner], [TitlePartner], [Director], [EmailPartner], [PhonePartner], [AddressPartner], [INN], [Rating]) VALUES (5, 1, 2, 5, N'stepanov@stepan.ru', N'+7(912)-888-33-33', 5, 5552431140, 10)
SET IDENTITY_INSERT [dbo].[PartnersImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerTitle] ON 

INSERT [dbo].[PartnerTitle] ([IDTitlePartner], [TitlePartner]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerTitle] ([IDTitlePartner], [TitlePartner]) VALUES (2, N'МонтажПро')
INSERT [dbo].[PartnerTitle] ([IDTitlePartner], [TitlePartner]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerTitle] ([IDTitlePartner], [TitlePartner]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerTitle] ([IDTitlePartner], [TitlePartner]) VALUES (5, N'Стройсервис')
SET IDENTITY_INSERT [dbo].[PartnerTitle] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerType] ON 

INSERT [dbo].[PartnerType] ([IDTypePartner], [TypePartner]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([IDTypePartner], [TypePartner]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([IDTypePartner], [TypePartner]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerType] ([IDTypePartner], [TypePartner]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[PartnerType] OFF
GO
SET IDENTITY_INSERT [dbo].[PostIndex] ON 

INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (1, 143960)
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (2, 164500)
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (3, 188910)
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (4, 309500)
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (5, 652050)
SET IDENTITY_INSERT [dbo].[PostIndex] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsImport] ON 

INSERT [dbo].[ProductsImport] ([IDProducts], [ProductsType], [TitleProducts], [Article], [MinPrice]) VALUES (1, 3, 4, 8758385, 4456.9)
INSERT [dbo].[ProductsImport] ([IDProducts], [ProductsType], [TitleProducts], [Article], [MinPrice]) VALUES (2, 3, 1, 8858958, 7330.99)
INSERT [dbo].[ProductsImport] ([IDProducts], [ProductsType], [TitleProducts], [Article], [MinPrice]) VALUES (3, 1, 2, 7750282, 1799.33)
INSERT [dbo].[ProductsImport] ([IDProducts], [ProductsType], [TitleProducts], [Article], [MinPrice]) VALUES (4, 1, 3, 7028748, 3890.41)
INSERT [dbo].[ProductsImport] ([IDProducts], [ProductsType], [TitleProducts], [Article], [MinPrice]) VALUES (5, 4, 5, 5012543, 5450.59)
SET IDENTITY_INSERT [dbo].[ProductsImport] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypeImport] ON 

INSERT [dbo].[ProductTypeImport] ([IDTypeProducts], [TypeProducts], [CoeffTypeProducts]) VALUES (1, N'Ламинат', 2.35)
INSERT [dbo].[ProductTypeImport] ([IDTypeProducts], [TypeProducts], [CoeffTypeProducts]) VALUES (2, N'Массивная доска', 5.15)
INSERT [dbo].[ProductTypeImport] ([IDTypeProducts], [TypeProducts], [CoeffTypeProducts]) VALUES (3, N'Паркетная доска', 4.34)
INSERT [dbo].[ProductTypeImport] ([IDTypeProducts], [TypeProducts], [CoeffTypeProducts]) VALUES (4, N'Пробковое покрытие', 1.5)
SET IDENTITY_INSERT [dbo].[ProductTypeImport] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (1, N'Архангельская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (2, N'Белгородская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (3, N'Кемеровская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (4, N'Ленинградская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (5, N'Московская область')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (1, N'ул. Лесная')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (2, N'ул. Парковая')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (3, N'ул. Рабочая')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (4, N'ул. Свободы')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (5, N'ул. Строителей')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[TitleProducts] ON 

INSERT [dbo].[TitleProducts] ([IDProductions], [Productions]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[TitleProducts] ([IDProductions], [Productions]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[TitleProducts] ([IDProductions], [Productions]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[TitleProducts] ([IDProductions], [Productions]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[TitleProducts] ([IDProductions], [Productions]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
SET IDENTITY_INSERT [dbo].[TitleProducts] OFF
GO
ALTER TABLE [dbo].[AddressPartner]  WITH CHECK ADD  CONSTRAINT [FK_AddressPartner_City] FOREIGN KEY([City])
REFERENCES [dbo].[City] ([IDCity])
GO
ALTER TABLE [dbo].[AddressPartner] CHECK CONSTRAINT [FK_AddressPartner_City]
GO
ALTER TABLE [dbo].[AddressPartner]  WITH CHECK ADD  CONSTRAINT [FK_AddressPartner_PostIndex] FOREIGN KEY([PostIndex])
REFERENCES [dbo].[PostIndex] ([IDPostIndex])
GO
ALTER TABLE [dbo].[AddressPartner] CHECK CONSTRAINT [FK_AddressPartner_PostIndex]
GO
ALTER TABLE [dbo].[AddressPartner]  WITH CHECK ADD  CONSTRAINT [FK_AddressPartner_Region] FOREIGN KEY([Region])
REFERENCES [dbo].[Region] ([IDRegion])
GO
ALTER TABLE [dbo].[AddressPartner] CHECK CONSTRAINT [FK_AddressPartner_Region]
GO
ALTER TABLE [dbo].[AddressPartner]  WITH CHECK ADD  CONSTRAINT [FK_AddressPartner_Street] FOREIGN KEY([Street])
REFERENCES [dbo].[Street] ([IDStreet])
GO
ALTER TABLE [dbo].[AddressPartner] CHECK CONSTRAINT [FK_AddressPartner_Street]
GO
ALTER TABLE [dbo].[PartnerProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductsImport_PartnerTitle] FOREIGN KEY([TitlePartner])
REFERENCES [dbo].[PartnerTitle] ([IDTitlePartner])
GO
ALTER TABLE [dbo].[PartnerProductsImport] CHECK CONSTRAINT [FK_PartnerProductsImport_PartnerTitle]
GO
ALTER TABLE [dbo].[PartnerProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductsImport_TitleProducts] FOREIGN KEY([Productions])
REFERENCES [dbo].[TitleProducts] ([IDProductions])
GO
ALTER TABLE [dbo].[PartnerProductsImport] CHECK CONSTRAINT [FK_PartnerProductsImport_TitleProducts]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_AddressPartner] FOREIGN KEY([AddressPartner])
REFERENCES [dbo].[AddressPartner] ([IDAddressPartner])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_AddressPartner]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_Director] FOREIGN KEY([Director])
REFERENCES [dbo].[Director] ([IDDirector])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_Director]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_PartnerTitle] FOREIGN KEY([TitlePartner])
REFERENCES [dbo].[PartnerTitle] ([IDTitlePartner])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_PartnerTitle]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_PartnerType] FOREIGN KEY([TypePartner])
REFERENCES [dbo].[PartnerType] ([IDTypePartner])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_PartnerType]
GO
ALTER TABLE [dbo].[ProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductsImport_ProductTypeImport] FOREIGN KEY([ProductsType])
REFERENCES [dbo].[ProductTypeImport] ([IDTypeProducts])
GO
ALTER TABLE [dbo].[ProductsImport] CHECK CONSTRAINT [FK_ProductsImport_ProductTypeImport]
GO
ALTER TABLE [dbo].[ProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductsImport_TitleProducts] FOREIGN KEY([TitleProducts])
REFERENCES [dbo].[TitleProducts] ([IDProductions])
GO
ALTER TABLE [dbo].[ProductsImport] CHECK CONSTRAINT [FK_ProductsImport_TitleProducts]
GO
USE [master]
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP-321_MasterPol] SET  READ_WRITE 
GO
