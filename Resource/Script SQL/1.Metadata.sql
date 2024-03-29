USE [master]
GO
/****** Object:  Database [MetadataDA]    Script Date: 24-Dec-23 8:45:34 PM ******/
CREATE DATABASE [MetadataDA]
GO
ALTER DATABASE [MetadataDA] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MetadataDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MetadataDA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MetadataDA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MetadataDA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MetadataDA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MetadataDA] SET ARITHABORT OFF 
GO
ALTER DATABASE [MetadataDA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MetadataDA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MetadataDA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MetadataDA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MetadataDA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MetadataDA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MetadataDA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MetadataDA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MetadataDA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MetadataDA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MetadataDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MetadataDA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MetadataDA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MetadataDA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MetadataDA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MetadataDA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MetadataDA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MetadataDA] SET RECOVERY FULL 
GO
ALTER DATABASE [MetadataDA] SET  MULTI_USER 
GO
ALTER DATABASE [MetadataDA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MetadataDA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MetadataDA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MetadataDA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MetadataDA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MetadataDA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MetadataDA', N'ON'
GO
ALTER DATABASE [MetadataDA] SET QUERY_STORE = ON
GO
ALTER DATABASE [MetadataDA] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MetadataDA]
GO
/****** Object:  Table [dbo].[data_flow]    Script Date: 24-Dec-23 8:45:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_flow](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[LSET] [datetime] NULL,
	[CET] [datetime] NULL,
 CONSTRAINT [PK_data_flow] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ETL_RunOnceControl]    Script Date: 24-Dec-23 8:45:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETL_RunOnceControl](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[FlagRunOnce] [int] NOT NULL,
 CONSTRAINT [PK_ETL_RunOnceControl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[data_flow] ON 

INSERT [dbo].[data_flow] ([Id], [Name], [LSET], [CET]) VALUES (1, N'Sales', NULL, NULL)
INSERT [dbo].[data_flow] ([Id], [Name], [LSET], [CET]) VALUES (2, N'Product', NULL, NULL)
INSERT [dbo].[data_flow] ([Id], [Name], [LSET], [CET]) VALUES (3, N'ProductLine', NULL, NULL)
INSERT [dbo].[data_flow] ([Id], [Name], [LSET], [CET]) VALUES (4, N'City', NULL, NULL)
INSERT [dbo].[data_flow] ([Id], [Name], [LSET], [CET]) VALUES (5, N'Product_NDS', NULL, NULL)
INSERT [dbo].[data_flow] ([Id], [Name], [LSET], [CET]) VALUES (6, N'PaymentType_NDS', NULL, NULL)
INSERT [dbo].[data_flow] ([Id], [Name], [LSET], [CET]) VALUES (7, N'Branch_NDS', NULL, NULL)
INSERT [dbo].[data_flow] ([Id], [Name], [LSET], [CET]) VALUES (8, N'Invoice_NDS', NULL, NULL)
INSERT [dbo].[data_flow] ([Id], [Name], [LSET], [CET]) VALUES (10, N'ProductLine_NDS', NULL, NULL)
SET IDENTITY_INSERT [dbo].[data_flow] OFF
GO
INSERT [dbo].[ETL_RunOnceControl] ([Id], [Name], [FlagRunOnce]) VALUES (1, N'FlagRunSourceExcel', 1)
GO
USE [master]
GO
ALTER DATABASE [MetadataDA] SET  READ_WRITE 
GO
