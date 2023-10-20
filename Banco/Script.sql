USE [master]
GO
/****** Object:  Database [Mercearia]    Script Date: 20/10/2023 09:09:41 ******/
CREATE DATABASE [Mercearia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mercearia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2019\MSSQL\DATA\Mercearia.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mercearia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2019\MSSQL\DATA\Mercearia_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Mercearia] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mercearia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mercearia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mercearia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mercearia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mercearia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mercearia] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mercearia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mercearia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mercearia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mercearia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mercearia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mercearia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mercearia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mercearia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mercearia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mercearia] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mercearia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mercearia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mercearia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mercearia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mercearia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mercearia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mercearia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mercearia] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mercearia] SET  MULTI_USER 
GO
ALTER DATABASE [Mercearia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mercearia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mercearia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mercearia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mercearia] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mercearia] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Mercearia] SET QUERY_STORE = OFF
GO
USE [Mercearia]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 20/10/2023 09:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](150) NULL,
	[Fone] [varchar](15) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 20/10/2023 09:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](150) NULL,
	[Preco] [float] NULL,
	[Estoque] [float] NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/10/2023 09:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](150) NULL,
	[NomeUsuario] [varchar](50) NULL,
	[Senha] [varchar](50) NULL,
	[Ativo] [bit] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Mercearia] SET  READ_WRITE 
GO
