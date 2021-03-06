USE [master]
GO
/****** Object:  Database [ToDo]    Script Date: 1.07.2020 01:41:18 ******/
CREATE DATABASE [ToDo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gorevYoneticisi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\gorevYoneticisi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [memory_optimized_filegroup_0] CONTAINS MEMORY_OPTIMIZED_DATA  DEFAULT
( NAME = N'memory_optimized_file_1764171515', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\memory_optimized_file_1764171515' , MAXSIZE = UNLIMITED)
 LOG ON 
( NAME = N'gorevYoneticisi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\gorevYoneticisi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ToDo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ToDo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ToDo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ToDo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ToDo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ToDo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ToDo] SET ARITHABORT OFF 
GO
ALTER DATABASE [ToDo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ToDo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ToDo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ToDo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ToDo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ToDo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ToDo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ToDo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ToDo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ToDo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ToDo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ToDo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ToDo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ToDo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ToDo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ToDo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ToDo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ToDo] SET RECOVERY FULL 
GO
ALTER DATABASE [ToDo] SET  MULTI_USER 
GO
ALTER DATABASE [ToDo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ToDo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ToDo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ToDo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ToDo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ToDo', N'ON'
GO
ALTER DATABASE [ToDo] SET QUERY_STORE = OFF
GO
USE [ToDo]
GO
/****** Object:  Table [dbo].[bildirim]    Script Date: 1.07.2020 01:41:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bildirim](
	[bid] [int] IDENTITY(1,1) NOT NULL,
	[zaman] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_bildirim] PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[isDurumu]    Script Date: 1.07.2020 01:41:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isDurumu](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[isDurumu] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_isDurumu] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[isTakibi]    Script Date: 1.07.2020 01:41:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isTakibi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[yapilacakİs] [nvarchar](max) NOT NULL,
	[zaman] [smalldatetime] NOT NULL,
	[tekrarId] [int] NULL,
	[bildirimId] [int] NULL,
	[durumId] [int] NULL,
 CONSTRAINT [PK_isTakibi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[isTekrari]    Script Date: 1.07.2020 01:41:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isTekrari](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[tekrar] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_isTekrari] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bildirim] ON 

INSERT [dbo].[bildirim] ([bid], [zaman]) VALUES (1, N'zamaninda')
INSERT [dbo].[bildirim] ([bid], [zaman]) VALUES (2, N'5 dakika önce')
INSERT [dbo].[bildirim] ([bid], [zaman]) VALUES (3, N'10 dakika önce')
INSERT [dbo].[bildirim] ([bid], [zaman]) VALUES (4, N'15 dakika önce')
INSERT [dbo].[bildirim] ([bid], [zaman]) VALUES (5, N'30 dakika önce')
INSERT [dbo].[bildirim] ([bid], [zaman]) VALUES (6, N'1 saat önce')
INSERT [dbo].[bildirim] ([bid], [zaman]) VALUES (7, N'2 saat önce')
INSERT [dbo].[bildirim] ([bid], [zaman]) VALUES (8, N'4 saat önce')
INSERT [dbo].[bildirim] ([bid], [zaman]) VALUES (9, N'8 saat önce')
SET IDENTITY_INSERT [dbo].[bildirim] OFF
GO
SET IDENTITY_INSERT [dbo].[isDurumu] ON 

INSERT [dbo].[isDurumu] ([did], [isDurumu]) VALUES (1, N'tamamlandi')
INSERT [dbo].[isDurumu] ([did], [isDurumu]) VALUES (2, N'tamamlanmadi')
SET IDENTITY_INSERT [dbo].[isDurumu] OFF
GO
SET IDENTITY_INSERT [dbo].[isTakibi] ON 

INSERT [dbo].[isTakibi] ([id], [yapilacakİs], [zaman], [tekrarId], [bildirimId], [durumId]) VALUES (1, N'Kitap Oku', CAST(N'2020-07-01T22:00:00' AS SmallDateTime), 2, 3, 1)
INSERT [dbo].[isTakibi] ([id], [yapilacakİs], [zaman], [tekrarId], [bildirimId], [durumId]) VALUES (2, N'Projeyi Tamamla', CAST(N'2020-07-01T17:00:00' AS SmallDateTime), 1, 5, 2)
INSERT [dbo].[isTakibi] ([id], [yapilacakİs], [zaman], [tekrarId], [bildirimId], [durumId]) VALUES (3, N'Faturalari Öde', CAST(N'2020-07-01T15:00:00' AS SmallDateTime), 5, 1, 1)
INSERT [dbo].[isTakibi] ([id], [yapilacakİs], [zaman], [tekrarId], [bildirimId], [durumId]) VALUES (4, N'Müzeleri Gez', CAST(N'2020-07-04T11:00:00' AS SmallDateTime), 4, 7, 2)
INSERT [dbo].[isTakibi] ([id], [yapilacakİs], [zaman], [tekrarId], [bildirimId], [durumId]) VALUES (5, N'Fatura Sözlesmesini Uzat', CAST(N'2020-07-01T15:00:00' AS SmallDateTime), 6, 8, 2)
SET IDENTITY_INSERT [dbo].[isTakibi] OFF
GO
SET IDENTITY_INSERT [dbo].[isTekrari] ON 

INSERT [dbo].[isTekrari] ([tid], [tekrar]) VALUES (1, N'Bir kere')
INSERT [dbo].[isTekrari] ([tid], [tekrar]) VALUES (2, N'Her gün')
INSERT [dbo].[isTekrari] ([tid], [tekrar]) VALUES (3, N'Hafta içi')
INSERT [dbo].[isTekrari] ([tid], [tekrar]) VALUES (4, N'Hafta Sonu')
INSERT [dbo].[isTekrari] ([tid], [tekrar]) VALUES (5, N'Her ay')
INSERT [dbo].[isTekrari] ([tid], [tekrar]) VALUES (6, N'Her Yil')
SET IDENTITY_INSERT [dbo].[isTekrari] OFF
GO
ALTER TABLE [dbo].[isTakibi] ADD  CONSTRAINT [DF_isTakibi_zaman]  DEFAULT (getdate()) FOR [zaman]
GO
ALTER TABLE [dbo].[isTakibi]  WITH CHECK ADD  CONSTRAINT [FK_isTakibi_bildirim] FOREIGN KEY([bildirimId])
REFERENCES [dbo].[bildirim] ([bid])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[isTakibi] CHECK CONSTRAINT [FK_isTakibi_bildirim]
GO
ALTER TABLE [dbo].[isTakibi]  WITH CHECK ADD  CONSTRAINT [FK_isTakibi_isDurumu] FOREIGN KEY([durumId])
REFERENCES [dbo].[isDurumu] ([did])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[isTakibi] CHECK CONSTRAINT [FK_isTakibi_isDurumu]
GO
ALTER TABLE [dbo].[isTakibi]  WITH CHECK ADD  CONSTRAINT [FK_isTakibi_isTekrari] FOREIGN KEY([tekrarId])
REFERENCES [dbo].[isTekrari] ([tid])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[isTakibi] CHECK CONSTRAINT [FK_isTakibi_isTekrari]
GO
USE [master]
GO
ALTER DATABASE [ToDo] SET  READ_WRITE 
GO
