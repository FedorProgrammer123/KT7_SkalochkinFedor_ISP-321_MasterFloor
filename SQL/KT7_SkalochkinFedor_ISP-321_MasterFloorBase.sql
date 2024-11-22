USE [master]
GO
/****** Object:  Database [KT7_SkalochkinFedor_ISP321_MasterPol]    Script Date: 18.11.2024 1:04:51 ******/
CREATE DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KT7_SkalochkinFedor_ISP321_MasterPol', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\KT7_SkalochkinFedor_ISP321_MasterPol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KT7_SkalochkinFedor_ISP321_MasterPol_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\KT7_SkalochkinFedor_ISP321_MasterPol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KT7_SkalochkinFedor_ISP321_MasterPol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET ARITHABORT OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET  MULTI_USER 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET QUERY_STORE = ON
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [KT7_SkalochkinFedor_ISP321_MasterPol]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[IDAddress] [int] IDENTITY(1,1) NOT NULL,
	[PostIndex] [int] NOT NULL,
	[Region] [int] NOT NULL,
	[City] [int] NOT NULL,
	[Street] [int] NOT NULL,
	[House] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[IDAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 18.11.2024 1:04:51 ******/
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
/****** Object:  Table [dbo].[DirectorName]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectorName](
	[IDDirector] [int] IDENTITY(1,1) NOT NULL,
	[Director] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_DirectorName] PRIMARY KEY CLUSTERED 
(
	[IDDirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialTypeImport]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialTypeImport](
	[IDTypeMaterial] [int] IDENTITY(1,1) NOT NULL,
	[TypeMaterial] [nvarchar](350) NOT NULL,
	[PercentageDeffect] [float] NOT NULL,
 CONSTRAINT [PK_MaterialTypeImport] PRIMARY KEY CLUSTERED 
(
	[IDTypeMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProductsImport]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProductsImport](
	[IDProducts] [int] IDENTITY(1,1) NOT NULL,
	[Products] [int] NOT NULL,
	[TitlePartner] [int] NOT NULL,
	[QuantityProducts] [int] NOT NULL,
	[DateSale] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProductsImport] PRIMARY KEY CLUSTERED 
(
	[IDProducts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnersImport]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnersImport](
	[IDPartners] [int] IDENTITY(1,1) NOT NULL,
	[TypePartner] [int] NOT NULL,
	[TitlePartner] [int] NOT NULL,
	[Director] [int] NOT NULL,
	[EmailPartner] [nvarchar](350) NOT NULL,
	[PhonePartner] [nvarchar](350) NOT NULL,
	[Address] [int] NOT NULL,
	[INN] [nvarchar](350) NULL,
	[Rating] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_PartnersImport] PRIMARY KEY CLUSTERED 
(
	[IDPartners] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerTitle]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerTitle](
	[IDPartner] [int] IDENTITY(1,1) NOT NULL,
	[TitlePartner] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_PartnerTitle] PRIMARY KEY CLUSTERED 
(
	[IDPartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[IDType] [int] IDENTITY(1,1) NOT NULL,
	[TypePartner] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[IDType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostIndex]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostIndex](
	[IDPostIndex] [int] IDENTITY(1,1) NOT NULL,
	[PostIndex] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_PostIndex] PRIMARY KEY CLUSTERED 
(
	[IDPostIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsImport]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsImport](
	[IDProducts] [int] IDENTITY(1,1) NOT NULL,
	[ProductsType] [int] NOT NULL,
	[ProductsTitle] [int] NOT NULL,
	[Article] [int] NOT NULL,
	[MinPrice] [float] NOT NULL,
 CONSTRAINT [PK_ProductsImport] PRIMARY KEY CLUSTERED 
(
	[IDProducts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeImport]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeImport](
	[IDTypeProduction] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduction] [nvarchar](350) NOT NULL,
	[CoeffTypeProduction] [float] NOT NULL,
 CONSTRAINT [PK_ProductTypeImport] PRIMARY KEY CLUSTERED 
(
	[IDTypeProduction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 18.11.2024 1:04:51 ******/
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
/****** Object:  Table [dbo].[Street]    Script Date: 18.11.2024 1:04:51 ******/
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
/****** Object:  Table [dbo].[TitleProducts]    Script Date: 18.11.2024 1:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TitleProducts](
	[IDProducts] [int] IDENTITY(1,1) NOT NULL,
	[Production] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_TitleProduction] PRIMARY KEY CLUSTERED 
(
	[IDProducts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([IDAddress], [PostIndex], [Region], [City], [Street], [House]) VALUES (1, 1, 5, 2, 4, N'51')
INSERT [dbo].[Address] ([IDAddress], [PostIndex], [Region], [City], [Street], [House]) VALUES (2, 2, 1, 3, 5, N'18')
INSERT [dbo].[Address] ([IDAddress], [PostIndex], [Region], [City], [Street], [House]) VALUES (3, 3, 4, 1, 2, N'21')
INSERT [dbo].[Address] ([IDAddress], [PostIndex], [Region], [City], [Street], [House]) VALUES (4, 4, 2, 4, 3, N'122')
INSERT [dbo].[Address] ([IDAddress], [PostIndex], [Region], [City], [Street], [House]) VALUES (5, 5, 3, 5, 1, N'15')
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([IDCity], [City]) VALUES (1, N' город Приморск')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (2, N' город Реутов')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (3, N' город Северодвинск')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (4, N' город Старый Оскол')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (5, N' город Юрга')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[DirectorName] ON 

INSERT [dbo].[DirectorName] ([IDDirector], [Director]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[DirectorName] ([IDDirector], [Director]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[DirectorName] ([IDDirector], [Director]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[DirectorName] ([IDDirector], [Director]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[DirectorName] ([IDDirector], [Director]) VALUES (5, N'Степанов Степан Сергеевич')
SET IDENTITY_INSERT [dbo].[DirectorName] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialTypeImport] ON 

INSERT [dbo].[MaterialTypeImport] ([IDTypeMaterial], [TypeMaterial], [PercentageDeffect]) VALUES (1, N'Тип материала 1', 0.001)
INSERT [dbo].[MaterialTypeImport] ([IDTypeMaterial], [TypeMaterial], [PercentageDeffect]) VALUES (2, N'Тип материала 2', 0.0095)
INSERT [dbo].[MaterialTypeImport] ([IDTypeMaterial], [TypeMaterial], [PercentageDeffect]) VALUES (3, N'Тип материала 3', 0.0028)
INSERT [dbo].[MaterialTypeImport] ([IDTypeMaterial], [TypeMaterial], [PercentageDeffect]) VALUES (4, N'Тип материала 4', 0.0055)
INSERT [dbo].[MaterialTypeImport] ([IDTypeMaterial], [TypeMaterial], [PercentageDeffect]) VALUES (5, N'Тип материала 5', 0.0034)
SET IDENTITY_INSERT [dbo].[MaterialTypeImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProductsImport] ON 

INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (8, 4, 4, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (9, 1, 4, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProductsImport] ([IDProducts], [Products], [TitlePartner], [QuantityProducts], [DateSale]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProductsImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnersImport] ON 

INSERT [dbo].[PartnersImport] ([IDPartners], [TypePartner], [TitlePartner], [Director], [EmailPartner], [PhonePartner], [Address], [INN], [Rating]) VALUES (1, 1, 1, 2, N'aleksandraivanova@ml.ru', N'+7(493)-123-45-67', 5, N'2222455179', N'7')
INSERT [dbo].[PartnersImport] ([IDPartners], [TypePartner], [TitlePartner], [Director], [EmailPartner], [PhonePartner], [Address], [INN], [Rating]) VALUES (2, 3, 3, 3, N'vppetrov@vl.ru', N'+7(987)-123-56-78', 2, N'3333888520', N'7')
INSERT [dbo].[PartnersImport] ([IDPartners], [TypePartner], [TitlePartner], [Director], [EmailPartner], [PhonePartner], [Address], [INN], [Rating]) VALUES (3, 4, 5, 4, N'ansolovev@st.ru', N'+7(812)-223-32-00', 3, N'4440391035', N'7')
INSERT [dbo].[PartnersImport] ([IDPartners], [TypePartner], [TitlePartner], [Director], [EmailPartner], [PhonePartner], [Address], [INN], [Rating]) VALUES (4, 2, 4, 1, N'ekaterina.vorobeva@ml.ru', N'+7(444)-222-33-11', 1, N'1111520857', N'5')
INSERT [dbo].[PartnersImport] ([IDPartners], [TypePartner], [TitlePartner], [Director], [EmailPartner], [PhonePartner], [Address], [INN], [Rating]) VALUES (5, 1, 2, 5, N'stepanov@stepan.ru', N'+7(912)-888-33-33', 4, N'5552431140', N'10')
SET IDENTITY_INSERT [dbo].[PartnersImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerTitle] ON 

INSERT [dbo].[PartnerTitle] ([IDPartner], [TitlePartner]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerTitle] ([IDPartner], [TitlePartner]) VALUES (2, N'Монтаж Про')
INSERT [dbo].[PartnerTitle] ([IDPartner], [TitlePartner]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerTitle] ([IDPartner], [TitlePartner]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerTitle] ([IDPartner], [TitlePartner]) VALUES (5, N'Стройсервис')
SET IDENTITY_INSERT [dbo].[PartnerTitle] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerType] ON 

INSERT [dbo].[PartnerType] ([IDType], [TypePartner]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([IDType], [TypePartner]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([IDType], [TypePartner]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerType] ([IDType], [TypePartner]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[PartnerType] OFF
GO
SET IDENTITY_INSERT [dbo].[PostIndex] ON 

INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (1, N'143960')
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (2, N'164500')
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (3, N'188910')
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (4, N'309500')
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (5, N'652050')
SET IDENTITY_INSERT [dbo].[PostIndex] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsImport] ON 

INSERT [dbo].[ProductsImport] ([IDProducts], [ProductsType], [ProductsTitle], [Article], [MinPrice]) VALUES (1, 3, 4, 8758385, 4456.9)
INSERT [dbo].[ProductsImport] ([IDProducts], [ProductsType], [ProductsTitle], [Article], [MinPrice]) VALUES (2, 3, 1, 8858958, 7330.99)
INSERT [dbo].[ProductsImport] ([IDProducts], [ProductsType], [ProductsTitle], [Article], [MinPrice]) VALUES (3, 1, 2, 7750282, 1799.33)
INSERT [dbo].[ProductsImport] ([IDProducts], [ProductsType], [ProductsTitle], [Article], [MinPrice]) VALUES (4, 1, 3, 7028748, 3890.41)
INSERT [dbo].[ProductsImport] ([IDProducts], [ProductsType], [ProductsTitle], [Article], [MinPrice]) VALUES (5, 4, 5, 5012543, 5450.59)
SET IDENTITY_INSERT [dbo].[ProductsImport] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypeImport] ON 

INSERT [dbo].[ProductTypeImport] ([IDTypeProduction], [TypeProduction], [CoeffTypeProduction]) VALUES (1, N'Ламинат', 2.35)
INSERT [dbo].[ProductTypeImport] ([IDTypeProduction], [TypeProduction], [CoeffTypeProduction]) VALUES (2, N'Массивная доска', 5.15)
INSERT [dbo].[ProductTypeImport] ([IDTypeProduction], [TypeProduction], [CoeffTypeProduction]) VALUES (3, N'Паркетная доска', 4.34)
INSERT [dbo].[ProductTypeImport] ([IDTypeProduction], [TypeProduction], [CoeffTypeProduction]) VALUES (4, N'Пробковое покрытие', 1.5)
SET IDENTITY_INSERT [dbo].[ProductTypeImport] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (1, N' Архангельская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (2, N' Белгородская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (5, N' Московская область')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (1, N' ул. Лесная')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (2, N' ул. Парковая')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (3, N' ул. Рабочая')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (4, N' ул. Свободы')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (5, N' ул. Строителей')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[TitleProducts] ON 

INSERT [dbo].[TitleProducts] ([IDProducts], [Production]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[TitleProducts] ([IDProducts], [Production]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[TitleProducts] ([IDProducts], [Production]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[TitleProducts] ([IDProducts], [Production]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[TitleProducts] ([IDProducts], [Production]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
SET IDENTITY_INSERT [dbo].[TitleProducts] OFF
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_City] FOREIGN KEY([City])
REFERENCES [dbo].[City] ([IDCity])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_City]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_PostIndex] FOREIGN KEY([PostIndex])
REFERENCES [dbo].[PostIndex] ([IDPostIndex])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_PostIndex]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Region] FOREIGN KEY([Region])
REFERENCES [dbo].[Region] ([IDRegion])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Region]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Street] FOREIGN KEY([Street])
REFERENCES [dbo].[Street] ([IDStreet])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Street]
GO
ALTER TABLE [dbo].[PartnerProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductsImport_PartnerTitle] FOREIGN KEY([TitlePartner])
REFERENCES [dbo].[PartnerTitle] ([IDPartner])
GO
ALTER TABLE [dbo].[PartnerProductsImport] CHECK CONSTRAINT [FK_PartnerProductsImport_PartnerTitle]
GO
ALTER TABLE [dbo].[PartnerProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductsImport_TitleProduction] FOREIGN KEY([Products])
REFERENCES [dbo].[TitleProducts] ([IDProducts])
GO
ALTER TABLE [dbo].[PartnerProductsImport] CHECK CONSTRAINT [FK_PartnerProductsImport_TitleProduction]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_Address] FOREIGN KEY([Address])
REFERENCES [dbo].[Address] ([IDAddress])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_Address]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_DirectorName] FOREIGN KEY([Director])
REFERENCES [dbo].[DirectorName] ([IDDirector])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_DirectorName]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_PartnerTitle] FOREIGN KEY([TitlePartner])
REFERENCES [dbo].[PartnerTitle] ([IDPartner])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_PartnerTitle]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_PartnerType] FOREIGN KEY([TypePartner])
REFERENCES [dbo].[PartnerType] ([IDType])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_PartnerType]
GO
ALTER TABLE [dbo].[ProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductsImport_PartnerTitle] FOREIGN KEY([ProductsTitle])
REFERENCES [dbo].[PartnerTitle] ([IDPartner])
GO
ALTER TABLE [dbo].[ProductsImport] CHECK CONSTRAINT [FK_ProductsImport_PartnerTitle]
GO
ALTER TABLE [dbo].[ProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductsImport_ProductTypeImport] FOREIGN KEY([ProductsType])
REFERENCES [dbo].[ProductTypeImport] ([IDTypeProduction])
GO
ALTER TABLE [dbo].[ProductsImport] CHECK CONSTRAINT [FK_ProductsImport_ProductTypeImport]
GO
USE [master]
GO
ALTER DATABASE [KT7_SkalochkinFedor_ISP321_MasterPol] SET  READ_WRITE 
GO
