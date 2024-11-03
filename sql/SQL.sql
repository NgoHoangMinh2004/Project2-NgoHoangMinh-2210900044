USE [master]
GO
/****** Object:  Database [project2_k22cnt3_ngohoangminh]    Script Date: 11/1/2024 3:32:48 PM ******/
CREATE DATABASE [project2_k22cnt3_ngohoangminh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project2_k22cnt3_ngohoangminh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\project2_k22cnt3_ngohoangminh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'project2_k22cnt3_ngohoangminh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\project2_k22cnt3_ngohoangminh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project2_k22cnt3_ngohoangminh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET ARITHABORT OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET  ENABLE_BROKER 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET RECOVERY FULL 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET  MULTI_USER 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'project2_k22cnt3_ngohoangminh', N'ON'
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET QUERY_STORE = ON
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [project2_k22cnt3_ngohoangminh]
GO
/****** Object:  Table [dbo].[CHI_TIET_DON_HANG]    Script Date: 11/1/2024 3:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_DON_HANG](
	[MaCTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NULL,
	[MaSP] [int] NULL,
	[So_luong] [int] NULL,
	[Thanh_tien] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DON_HANG]    Script Date: 11/1/2024 3:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_HANG](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[Ngay_dat] [datetime] NULL,
	[Tong_tien] [decimal](10, 2) NULL,
	[Trang_thai] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 11/1/2024 3:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Ho_ten] [varchar](100) NULL,
	[Tai_khoan] [varchar](50) NOT NULL,
	[Mat_khau] [varchar](32) NULL,
	[Dia_chi] [nvarchar](200) NULL,
	[Dien_thoai] [varchar](30) NULL,
	[Email] [varchar](50) NOT NULL,
	[Ngay_sinh] [datetime] NULL,
	[Ngay_cap_nhat] [datetime] NULL,
	[Gioi_tinh] [tinyint] NULL,
	[Tich_diem] [int] NULL,
	[Trang_thai] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Tai_khoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUAN_TRI]    Script Date: 11/1/2024 3:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUAN_TRI](
	[Tai_khoan] [varchar](50) NOT NULL,
	[Mat_khau] [varchar](32) NULL,
	[Trang_thai] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Tai_khoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 11/1/2024 3:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[Ten_san_pham] [varchar](100) NULL,
	[Loai_san_pham] [varchar](50) NULL,
	[Gia] [decimal](10, 2) NULL,
	[Mo_ta] [nvarchar](500) NULL,
	[Trang_thai] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHI_TIET_DON_HANG]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DON_HANG] ([MaDH])
GO
ALTER TABLE [dbo].[CHI_TIET_DON_HANG]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SAN_PHAM] ([MaSP])
GO
ALTER TABLE [dbo].[DON_HANG]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACH_HANG] ([MaKH])
GO
USE [master]
GO
ALTER DATABASE [project2_k22cnt3_ngohoangminh] SET  READ_WRITE 
GO

INSERT INTO QUAN_TRI (Tai_khoan, Mat_khau, Trang_thai)
VALUES 
('admin', '1409', 1),
('Custm', '123', 1);


INSERT INTO KHACH_HANG (Ho_ten, Tai_khoan, Mat_khau, Dia_chi, Dien_thoai, Email, Ngay_sinh, Ngay_cap_nhat, Gioi_tinh, Tich_diem, Trang_thai)
VALUES 
('Tran Minh Lam', 'Namku214', '214', 'Ha Noi', '02312323124', 'MinhLam@example.com', '2004-04-21', GETDATE(), 1, 100, 1),
('Le Hoang Nong', 'Longku', '123', 'Ha Noi', '0987654321', 'LeNong@example.com', '2004-07-26', GETDATE(), 0, 150, 1);


INSERT INTO SAN_PHAM (Ten_san_pham, Loai_san_pham, Gia, Mo_ta, Trang_thai)
VALUES 
('Skin Aatrox', 'Legendary', 250000, 'Skin đẳng cấp cho Aatrox', 1),
('Skin Yasuo', 'Epic', 180000, 'Skin đặc biệt cho Yasuo', 1),
('Skin MF', 'Rare', 120000, 'Skin dễ thương cho MF', 1);

INSERT INTO DON_HANG (MaKH, Ngay_dat, Tong_tien, Trang_thai)
VALUES 
(1, GETDATE(), 250000, 1),
(2, GETDATE(), 180000, 1);



INSERT INTO CHI_TIET_DON_HANG (MaDH, MaSP, So_luong, Thanh_tien)
VALUES 
(1, 1, 1, 250000),  
(2, 2, 1, 180000);  
select*from QUAN_TRI