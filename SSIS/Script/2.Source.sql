USE [master]
GO
/****** Object:  Database [SourceDA]    Script Date: 24-Dec-23 8:52:40 PM ******/
CREATE DATABASE [SourceDA]
GO
ALTER DATABASE [SourceDA] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SourceDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SourceDA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SourceDA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SourceDA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SourceDA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SourceDA] SET ARITHABORT OFF 
GO
ALTER DATABASE [SourceDA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SourceDA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SourceDA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SourceDA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SourceDA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SourceDA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SourceDA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SourceDA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SourceDA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SourceDA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SourceDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SourceDA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SourceDA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SourceDA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SourceDA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SourceDA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SourceDA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SourceDA] SET RECOVERY FULL 
GO
ALTER DATABASE [SourceDA] SET  MULTI_USER 
GO
ALTER DATABASE [SourceDA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SourceDA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SourceDA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SourceDA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SourceDA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SourceDA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SourceDA', N'ON'
GO
ALTER DATABASE [SourceDA] SET QUERY_STORE = ON
GO
ALTER DATABASE [SourceDA] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SourceDA]
GO
/****** Object:  Table [dbo].[Branch_Source]    Script Date: 24-Dec-23 8:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch_Source](
	[Branch] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Source]    Script Date: 24-Dec-23 8:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Source](
	[ProductID] [nvarchar](255) NULL,
	[Unit price] [money] NULL,
	[ProductLine] [nvarchar](255) NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLine_Source]    Script Date: 24-Dec-23 8:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLine_Source](
	[Product line] [nvarchar](255) NULL,
	[ProductLineID] [nvarchar](255) NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Source]    Script Date: 24-Dec-23 8:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Source](
	[Branch] [nvarchar](255) NULL,
	[Invoice ID] [nvarchar](255) NULL,
	[Customer type] [nvarchar](255) NULL,
	[Gender] [nvarchar](6) NULL,
	[ProductID] [nvarchar](255) NULL,
	[Quantity] [int] NULL,
	[Tax 5%] [money] NULL,
	[Total] [money] NULL,
	[Payment] [nvarchar](255) NULL,
	[cogs] [money] NULL,
	[gross margin percentage] [money] NULL,
	[gross income] [money] NULL,
	[Rating] [float] NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [SourceDA] SET  READ_WRITE 
GO
