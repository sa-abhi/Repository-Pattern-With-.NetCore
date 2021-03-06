USE [master]
GO
/****** Object:  Database [ProjectManagementDB]    Script Date: 6/29/2020 11:48:11 AM ******/
CREATE DATABASE [ProjectManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProjectManagementDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProjectManagementDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectManagementDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectManagementDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProjectManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ProjectManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectManagementDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectManagementDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProjectManagementDB', N'ON'
GO
ALTER DATABASE [ProjectManagementDB] SET QUERY_STORE = OFF
GO
USE [ProjectManagementDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/29/2020 11:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Developers]    Script Date: 6/29/2020 11:48:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Developers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Followers] [int] NOT NULL,
 CONSTRAINT [PK_Developers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 6/29/2020 11:48:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200628181159_Initial', N'3.1.5')
GO
USE [master]
GO
ALTER DATABASE [ProjectManagementDB] SET  READ_WRITE 
GO
