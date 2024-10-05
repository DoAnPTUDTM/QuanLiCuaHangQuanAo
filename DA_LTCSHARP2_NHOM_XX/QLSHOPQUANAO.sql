USE [master]
GO
/****** Object:  Database [QLSHOPQUANAO1]    Script Date: 05/10/2024 8:28:12 SA ******/
CREATE DATABASE [QLSHOPQUANAO1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSHOPQUANAO1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLSHOPQUANAO1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSHOPQUANAO1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLSHOPQUANAO1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLSHOPQUANAO1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSHOPQUANAO1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSHOPQUANAO1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET  MULTI_USER 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSHOPQUANAO1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSHOPQUANAO1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLSHOPQUANAO1] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLSHOPQUANAO1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLSHOPQUANAO1]
GO
/****** Object:  Table [dbo].[CHITIETHD]    Script Date: 05/10/2024 8:28:13 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHD](
	[madh] [varchar](20) NULL,
	[masp] [varchar](20) NULL,
	[soluong] [int] NULL,
	[thanhtien] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 05/10/2024 8:28:13 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[madh] [varchar](20) NOT NULL,
	[makh] [varchar](20) NULL,
	[manv] [varchar](20) NULL,
	[ngaydat] [date] NULL,
	[TONGTIEN] [int] NULL,
 CONSTRAINT [pk_DONHANG] PRIMARY KEY CLUSTERED 
(
	[madh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 05/10/2024 8:28:13 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[MASP] [varchar](20) NOT NULL,
	[MAKH] [varchar](20) NOT NULL,
	[SOLUONG] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC,
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KICHBAN]    Script Date: 05/10/2024 8:28:13 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KICHBAN](
	[MAKB] [varchar](20) NOT NULL,
	[TENKB] [varchar](100) NOT NULL,
	[MOTA] [text] NULL,
	[NGAYTAO] [datetime] NULL,
	[NGAYCAPNHAT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 05/10/2024 8:28:13 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[makh] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [varchar](20) NULL,
	[USERNAME] [varchar](20) NULL,
	[PASSWORDD] [varchar](255) NULL,
 CONSTRAINT [pk_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 05/10/2024 8:28:13 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[manv] [varchar](20) NOT NULL,
	[tennv] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [varchar](15) NULL,
	[chucvu] [nvarchar](30) NULL,
	[RoleNV] [int] NULL,
	[USERNAME] [varchar](20) NULL,
	[PASSWORDD] [varchar](255) NULL,
 CONSTRAINT [pk_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QA]    Script Date: 05/10/2024 8:28:13 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QA](
	[MAQA] [varchar](20) NOT NULL,
	[MAKB] [varchar](20) NULL,
	[MAKH] [varchar](20) NULL,
	[QUESTION] [varchar](255) NOT NULL,
	[ANSWER] [varchar](255) NOT NULL,
	[KEYWORD] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAQA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYENNV]    Script Date: 05/10/2024 8:28:13 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYENNV](
	[ROLE_ID] [int] NOT NULL,
	[ROLE_NAME] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 05/10/2024 8:28:13 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[masp] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[mota] [nvarchar](50) NULL,
	[ngaynhap] [date] NULL,
	[tinhtrang] [nvarchar](20) NULL,
	[soluongnhap] [int] NULL,
	[soluongban] [int] NULL,
	[soluongton] [int] NULL,
	[gianhap] [int] NULL,
	[giaban] [int] NULL,
	[hangsanxuat] [nvarchar](50) NULL,
 CONSTRAINT [pk_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [fk_CHITIETHOADON_HOADON] FOREIGN KEY([madh])
REFERENCES [dbo].[DONHANG] ([madh])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [fk_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [fk_CHITIETHOADON_SANPHAM] FOREIGN KEY([masp])
REFERENCES [dbo].[SANPHAM] ([masp])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [fk_CHITIETHOADON_SANPHAM]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [fk_DONHANG_KHACHHANG] FOREIGN KEY([makh])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [fk_DONHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [fk_DONHANG_NHANVIEN] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [fk_DONHANG_NHANVIEN]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([masp])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_SANPHAM]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_ROLE] FOREIGN KEY([RoleNV])
REFERENCES [dbo].[QUYENNV] ([ROLE_ID])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_ROLE]
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD FOREIGN KEY([MAKB])
REFERENCES [dbo].[KICHBAN] ([MAKB])
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
USE [master]
GO
ALTER DATABASE [QLSHOPQUANAO1] SET  READ_WRITE 
GO
