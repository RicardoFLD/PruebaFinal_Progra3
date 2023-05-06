USE [master]
GO

/****** Object:  Database [VBilletera]    Script Date: 6/5/2023 08:23:28 ******/
CREATE DATABASE [VBilletera]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VBilletera', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\VBilletera.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VBilletera_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\VBilletera_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VBilletera].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [VBilletera] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [VBilletera] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [VBilletera] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [VBilletera] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [VBilletera] SET ARITHABORT OFF 
GO

ALTER DATABASE [VBilletera] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [VBilletera] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [VBilletera] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [VBilletera] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [VBilletera] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [VBilletera] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [VBilletera] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [VBilletera] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [VBilletera] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [VBilletera] SET  DISABLE_BROKER 
GO

ALTER DATABASE [VBilletera] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [VBilletera] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [VBilletera] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [VBilletera] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [VBilletera] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [VBilletera] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [VBilletera] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [VBilletera] SET RECOVERY FULL 
GO

ALTER DATABASE [VBilletera] SET  MULTI_USER 
GO

ALTER DATABASE [VBilletera] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [VBilletera] SET DB_CHAINING OFF 
GO

ALTER DATABASE [VBilletera] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [VBilletera] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [VBilletera] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [VBilletera] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [VBilletera] SET QUERY_STORE = ON
GO

ALTER DATABASE [VBilletera] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [VBilletera] SET  READ_WRITE 
GO

