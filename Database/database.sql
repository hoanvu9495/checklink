USE [master]
GO
/****** Object:  Database [CheckLinkActive]    Script Date: 17/04/2019 20:35:43 ******/
CREATE DATABASE [CheckLinkActive]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CheckLinkActive', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CheckLinkActive.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CheckLinkActive_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CheckLinkActive_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CheckLinkActive] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CheckLinkActive].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CheckLinkActive] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CheckLinkActive] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CheckLinkActive] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CheckLinkActive] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CheckLinkActive] SET ARITHABORT OFF 
GO
ALTER DATABASE [CheckLinkActive] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CheckLinkActive] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CheckLinkActive] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CheckLinkActive] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CheckLinkActive] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CheckLinkActive] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CheckLinkActive] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CheckLinkActive] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CheckLinkActive] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CheckLinkActive] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CheckLinkActive] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CheckLinkActive] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CheckLinkActive] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CheckLinkActive] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CheckLinkActive] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CheckLinkActive] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CheckLinkActive] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CheckLinkActive] SET RECOVERY FULL 
GO
ALTER DATABASE [CheckLinkActive] SET  MULTI_USER 
GO
ALTER DATABASE [CheckLinkActive] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CheckLinkActive] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CheckLinkActive] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CheckLinkActive] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CheckLinkActive] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CheckLinkActive', N'ON'
GO
USE [CheckLinkActive]
GO
/****** Object:  Table [dbo].[SiteManager]    Script Date: 17/04/2019 20:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteManager](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SiteManager] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[SiteManager] ON 

INSERT [dbo].[SiteManager] ([Id], [Link], [Status]) VALUES (1, N'https://www.24h.com.vn/', 1)
INSERT [dbo].[SiteManager] ([Id], [Link], [Status]) VALUES (2, N'https://vnexpress.net/', 1)
INSERT [dbo].[SiteManager] ([Id], [Link], [Status]) VALUES (3, N'sdfgasdgasdg', 0)
INSERT [dbo].[SiteManager] ([Id], [Link], [Status]) VALUES (4, N'haksfhnas', 0)
INSERT [dbo].[SiteManager] ([Id], [Link], [Status]) VALUES (5, N'http://localhost:35107/Account/Login', 0)
SET IDENTITY_INSERT [dbo].[SiteManager] OFF
USE [master]
GO
ALTER DATABASE [CheckLinkActive] SET  READ_WRITE 
GO
