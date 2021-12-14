USE [master]
GO
/****** Object:  Database [AgenciaVooDb]    Script Date: 14/12/2021 09:38:00 ******/
CREATE DATABASE [AgenciaVooDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AgenciaVooDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AgenciaVooDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AgenciaVooDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AgenciaVooDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AgenciaVooDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgenciaVooDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgenciaVooDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AgenciaVooDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AgenciaVooDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AgenciaVooDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AgenciaVooDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AgenciaVooDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AgenciaVooDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AgenciaVooDb] SET  MULTI_USER 
GO
ALTER DATABASE [AgenciaVooDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AgenciaVooDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AgenciaVooDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AgenciaVooDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AgenciaVooDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AgenciaVooDb] SET QUERY_STORE = OFF
GO
USE [AgenciaVooDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14/12/2021 09:38:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destinos]    Script Date: 14/12/2021 09:38:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destinos](
	[DestinoId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Celular] [varchar](100) NOT NULL,
	[RG] [varchar](100) NOT NULL,
	[Saida] [varchar](100) NOT NULL,
	[Chegada] [varchar](100) NOT NULL,
	[Horario] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Destinos] PRIMARY KEY CLUSTERED 
(
	[DestinoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [AgenciaVooDb] SET  READ_WRITE 
GO
