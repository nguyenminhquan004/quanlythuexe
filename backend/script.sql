USE [QuanLyThueXe]
GO
/****** Object:  Table [dbo].[account]    Script Date: 25/03/2025 3:23:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[account_id] [int] NOT NULL,
	[account_name] [varchar](255) NOT NULL,
	[account_password] [varchar](255) NOT NULL,
	[account_type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 25/03/2025 3:23:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[city_id] [int] NOT NULL,
	[city_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 25/03/2025 3:23:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[contract_id] [int] NOT NULL,
	[motor_id] [int] NOT NULL,
	[contract_quantity] [int] NOT NULL,
	[contract_start_date] [date] NOT NULL,
	[contract_end_date] [date] NOT NULL,
	[contract_content] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[contract_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 25/03/2025 3:23:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
	[customer_name] [nvarchar](100) NOT NULL,
	[customer_phone] [varchar](20) NOT NULL,
	[customer_gender] [nvarchar](50) NOT NULL,
	[customer_date] [date] NOT NULL,
	[customer_address] [nvarchar](255) NOT NULL,
	[customer_email] [varchar](255) NOT NULL,
	[contract_id] [int] NOT NULL,
 CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fee]    Script Date: 25/03/2025 3:23:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fee](
	[fee_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[fee_description] [nvarchar](255) NOT NULL,
	[fee_amount] [decimal](10, 2) NOT NULL,
	[fee_status] [nvarchar](50) NOT NULL,
	[fee_due_date] [date] NOT NULL,
 CONSTRAINT [PK_fee] PRIMARY KEY CLUSTERED 
(
	[fee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[motor]    Script Date: 25/03/2025 3:23:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[motor](
	[motor_id] [int] NOT NULL,
	[motor_name] [varchar](50) NOT NULL,
	[motor_description] [nvarchar](max) NULL,
	[image_url] [varchar](255) NOT NULL,
	[motor_oem] [varchar](50) NOT NULL,
	[motor_price] [money] NOT NULL,
 CONSTRAINT [PK_motor] PRIMARY KEY CLUSTERED 
(
	[motor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[motor_rental_shop]    Script Date: 25/03/2025 3:23:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[motor_rental_shop](
	[shop_id] [int] NOT NULL,
	[shop_name] [nvarchar](255) NOT NULL,
	[city_id] [int] NOT NULL,
	[city_address] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_motor_rental_shop] PRIMARY KEY CLUSTERED 
(
	[shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notification]    Script Date: 25/03/2025 3:23:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification](
	[notification_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[notification_message] [nvarchar](255) NOT NULL,
	[notification_date_send] [date] NOT NULL,
 CONSTRAINT [PK_notification] PRIMARY KEY CLUSTERED 
(
	[notification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 25/03/2025 3:23:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[payment_id] [int] NOT NULL,
	[payment_amount] [numeric](18, 2) NOT NULL,
	[payment_method] [nvarchar](50) NOT NULL,
	[contract_id] [int] NOT NULL,
 CONSTRAINT [PK_payment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (1, N'Nguyenvanhoang11@gmail.com', N'123456', N'customer')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (2, N'PhanPaVang12@gmail.com', N'234567', N'admin')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (3, N'PhamLinhNhi12@gmail.com', N'abcdef', N'customer')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (4, N'Nguyenthanhnhan34@gmail.com', N'654321', N'customer')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (5, N'Trantuanminh08@gmail.com', N'qwerty', N'admin')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (6, N'Nguyenvanhuy77@gmail.com', N'987654', N'customer')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (7, N'Nguyenphucan11@gmail.com', N'zxcvbn', N'admin')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (8, N'Nguyenhuyentrang08@gmail.com', N'112233', N'customer')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (9, N'Nguyennamphuong04@gmail.com', N'445566', N'admin')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (10, N'Trantuan66@gmail.com', N'778899', N'customer')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (11, N'Duybinh54@gmail.com', N'a1b2c3', N'customer')
INSERT [dbo].[account] ([account_id], [account_name], [account_password], [account_type]) VALUES (12, N'Hoangduy123@gmail.com', N'xyz123', N'admin')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1, N'Hà Nội')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (2, N'Hồ Chí Minh')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (3, N'Đà Nẵng')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (4, N'Hải Phòng')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (5, N'Cần Thơ')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (6, N'Huế')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (7, N'Quảng Ninh')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (8, N'Nha Trang')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (9, N'Đà Lạt')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (10, N'Quy Nhơn')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (11, N'Bình Dương')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (12, N'Cà Mau')
GO
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (1, 1, 3, CAST(N'2020-08-05' AS Date), CAST(N'2020-12-09' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (2, 2, 2, CAST(N'2021-01-15' AS Date), CAST(N'2021-03-20' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (3, 3, 5, CAST(N'2021-04-10' AS Date), CAST(N'2021-06-15' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (4, 4, 1, CAST(N'2021-07-01' AS Date), CAST(N'2021-07-30' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (5, 5, 4, CAST(N'2021-09-12' AS Date), CAST(N'2021-11-25' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (6, 6, 2, CAST(N'2022-02-20' AS Date), CAST(N'2022-04-10' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (7, 7, 3, CAST(N'2022-05-05' AS Date), CAST(N'2022-08-15' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (8, 8, 1, CAST(N'2022-09-01' AS Date), CAST(N'2022-09-15' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (9, 9, 6, CAST(N'2023-01-10' AS Date), CAST(N'2023-03-20' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (10, 10, 2, CAST(N'2023-04-15' AS Date), CAST(N'2023-05-30' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (11, 11, 3, CAST(N'2023-07-20' AS Date), CAST(N'2023-09-25' AS Date), N'thuê xe máy')
INSERT [dbo].[Contract] ([contract_id], [motor_id], [contract_quantity], [contract_start_date], [contract_end_date], [contract_content]) VALUES (12, 12, 1, CAST(N'2024-01-05' AS Date), CAST(N'2024-02-05' AS Date), N'thuê xe máy')
GO
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1001, 1, N'Nguyễn Văn Hoàng', N'0948272626', N'Male', CAST(N'2004-12-09' AS Date), N'Thái Bình', N'Nguyenvanhoang11@gmail.com', 1)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1002, 2, N'Phàn Pà Vảng', N'0937382281', N'Male', CAST(N'2004-08-05' AS Date), N'Lào Cai', N'PhanPaVang12@gmail.com', 2)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1003, 3, N'Phạm Linh Nhi', N'0943873727', N'FeMale', CAST(N'2005-12-07' AS Date), N'Nam Định', N'PhamLinhNhi12@gmail.com', 3)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1004, 4, N'Nguyễn Thanh Nhàn', N'0932817162', N'FeMale', CAST(N'2006-12-09' AS Date), N'Yên Bái', N'Nguyenthanhnhan3', 4)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1005, 5, N'Trần Tuấn Minh', N'0993278711', N'Male', CAST(N'2006-07-08' AS Date), N'Hà Nam', N'Trantuanminh08@gmail.com', 5)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1006, 6, N'Nguyễn Văn Huy', N'0937286736', N'Male', CAST(N'2001-05-08' AS Date), N'Cà Mau', N'Nguyenvanhuy77@gmail.com', 6)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1007, 7, N'Nguyễn Phúc An', N'0932675171', N'Male', CAST(N'2004-03-07' AS Date), N'Hà Nội', N'Nguyenphucan11@gmail.com', 7)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1008, 8, N'Nguyễn Huyền Trang', N'0946273672', N'FeMale', CAST(N'2008-06-29' AS Date), N'Quảng Ninh', N'Nguyenhuyentrang08@gmail.com', 8)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1009, 9, N'Nguyễn Nam Phương', N'0937282617', N'Male', CAST(N'2004-08-07' AS Date), N'Hà Nội', N'Nguyennamphuong04@gmail.com', 9)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1010, 10, N'Trần Anh Tuấn', N'0928367126', N'Male', CAST(N'2008-03-07' AS Date), N'Ninh Bình', N'Trantuan66@gmail.com', 10)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1011, 11, N'Nguyễn Duy Bình', N'0947328622', N'Male', CAST(N'2005-10-09' AS Date), N'Lạng Sơn', N'Duybinh54@gmail.com', 11)
INSERT [dbo].[customer] ([customer_id], [account_id], [customer_name], [customer_phone], [customer_gender], [customer_date], [customer_address], [customer_email], [contract_id]) VALUES (1012, 12, N'Hoàng Quang Duy', N'0936282671', N'Male', CAST(N'2004-09-11' AS Date), N'Kiên Giang', N'Hoangduy123@gmail.com', 12)
GO
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (1, 1001, N'Phí thuê xe máy tháng 8/2020', CAST(1500000.00 AS Decimal(10, 2)), N'Đã thanh toán', CAST(N'2020-08-31' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (2, 1002, N'Phí thuê xe máy tháng 1/2021', CAST(1000000.00 AS Decimal(10, 2)), N'Chưa thanh toán', CAST(N'2021-01-31' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (3, 1003, N'Phí thuê xe máy tháng 4/2021', CAST(2500000.00 AS Decimal(10, 2)), N'Đã thanh toán', CAST(N'2021-04-30' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (4, 1004, N'Phí thuê xe máy tháng 7/2021', CAST(500000.00 AS Decimal(10, 2)), N'Chưa thanh toán', CAST(N'2021-07-31' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (5, 1005, N'Phí thuê xe máy tháng 9/2021', CAST(2000000.00 AS Decimal(10, 2)), N'Đã thanh toán', CAST(N'2021-09-30' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (6, 1006, N'Phí thuê xe máy tháng 2/2022', CAST(1000000.00 AS Decimal(10, 2)), N'Chưa thanh toán', CAST(N'2022-02-28' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (7, 1007, N'Phí thuê xe máy tháng 5/2022', CAST(1500000.00 AS Decimal(10, 2)), N'Đã thanh toán', CAST(N'2022-05-31' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (8, 1008, N'Phí thuê xe máy tháng 9/2022', CAST(500000.00 AS Decimal(10, 2)), N'Chưa thanh toán', CAST(N'2022-09-30' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (9, 1009, N'Phí thuê xe máy tháng 1/2023', CAST(3000000.00 AS Decimal(10, 2)), N'Đã thanh toán', CAST(N'2023-01-31' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (10, 1010, N'Phí thuê xe máy tháng 4/2023', CAST(1000000.00 AS Decimal(10, 2)), N'Chưa thanh toán', CAST(N'2023-04-30' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (11, 1011, N'Phí thuê xe máy tháng 7/2023', CAST(1500000.00 AS Decimal(10, 2)), N'Đã thanh toán', CAST(N'2023-07-31' AS Date))
INSERT [dbo].[fee] ([fee_id], [customer_id], [fee_description], [fee_amount], [fee_status], [fee_due_date]) VALUES (12, 1012, N'Phí thuê xe máy tháng 1/2024', CAST(500000.00 AS Decimal(10, 2)), N'Chưa thanh toán', CAST(N'2024-01-31' AS Date))
GO
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (1, N'Wave', N'Xe máy Wave Alpha 110cc', N'./assets/ImageMotor/xeden.png', N'Honda', 150000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (2, N'Wave', N'Xe máy Wave Alpha 110', N'./assets/ImageMotor/xexanh.png', N'Honda', 160000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (3, N'SH', N'Xe SH 160i/125i', N'./assets/ImageMotor/SH_xam.png', N'SH', 400000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (4, N'SH', N'Xe SH mode 125', N'./assets/ImageMotor/SHmodel.png', N'SH', 350000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (5, N'Wave', N'Xe Wave RSX FI 110', N'.assets/ImageMotor/Wavexanhden.png', N'Wave', 250000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (6, N'Wave RSX', N'Honda Blade sử dụng động cơ 109,1 cc, sản sinh công suất 8,2 mã lực tại 7.500 vòng/phút và mô-men xoắn cực đại 8,65 Nm tại 5.500 vòng/phút', N'.assets/ImageMotor/Hondaden.png', N'Wave', 240000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (7, N'Suzuki', N'Suzuki Viva mới được trang bị động cơ xăng, 4 thì, 1 xi-lanh, 113cc làm mát bằng không khí, sản sinh công suất cực đại 6,9 Kw (9,2 mã lực) tại 8.000 vòng/phút, mô-men xoắn cực đại 9,1 Nm tại 6.000 vòng/phút.', N'.assets/ImageMotor/XeSuzukiDo.png', N'Suzuki', 220000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (8, N'Lead ABS', N'Honda Lead ABS có thiết kế thanh lịch, mềm mại với các đường nét bo tròn, phù hợp với phong cách hiện đại và thực dụng. Xe trong hình có màu xanh đậm (có thể là màu xanh lam hoặc xanh đen), một trong những màu sắc phổ biến của dòng Lead.', N'.assets/ImageMotor/Honda Lead ABS.png', N'Honda', 400000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (9, N'Honda Air Blade 160/125', N'Honda Air Blade 160/125 là một mẫu xe tay ga cao cấp của Honda, rất phổ biến tại Việt Nam. Dòng Air Blade được thiết kế với phong cách thể thao, hiện đại, phù hợp cho cả nam và nữ, đặc biệt là những người trẻ tuổi yêu thích sự năng động.', N'.assets/ImageMotor/Air_Blade_160_125.png', N'Honda', 420000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (10, N'Honda Vision', N'Honda Vision là một mẫu xe tay ga phổ thông của Honda, rất được ưa chuộng tại Việt Nam, đặc biệt với học sinh, sinh viên và những người cần một phương tiện di chuyển nhỏ gọn, tiết kiệm nhiên liệu. Xe được thiết kế đơn giản, nhẹ nhàng, phù hợp cho cả nam và nữ, đặc biệt là những người mới lái xe.', N'.assets/ImageMotor/vision_nau.png', N'Honda', 310000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (11, N'SH', N'Honda SH Mode là một mẫu xe tay ga thuộc dòng SH của Honda, được định vị ở phân khúc cao cấp nhưng có giá thành thấp hơn so với các mẫu SH 150cc hoặc SH 300cc. Xe được thiết kế với phong cách sang trọng, tinh tế, phù hợp cho việc di chuyển trong đô thị, đặc biệt với những người yêu thích sự thời trang và tiện lợi.', N'.assets/ImageMotor/SHmodeDo.png', N'SH', 550000.0000)
INSERT [dbo].[motor] ([motor_id], [motor_name], [motor_description], [image_url], [motor_oem], [motor_price]) VALUES (12, N'Exciter', N'Yamaha Exciter 155 VVA 2021:Đây là dòng xe côn tay của Yamaha. Với dòng xe này, Yamaha đã có thay đổi ngoại hình bằng cách thay đổi thiết kế bộ tem cho 6 phiên bản để tạo sự mới mẻ với khách hàng, trong nỗ lực cạnh tranh với đối thủ Honda Winner.', N'.assets/ImageMotor/exciter_vang.png', N'Yamaha', 520000.0000)
GO
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (1, N'Cửa Hàng Xe Máy Hà Nội Motor', 1, N'Hà Nội')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (2, N'Honda Sài Gòn - Hồ Chí Minh', 2, N'Hồ Chí Minh')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (3, N'Xe Máy Đà Nẵng 24/7', 3, N'Đà Nẵng')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (4, N'Yamaha Hải Phòng - Cảng Biển', 4, N'Hải Phòng')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (5, N'Cửa Hàng Xe Máy Cửu Long Cần Thơ', 5, N'Cần Thơ')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (6, N'Xe Máy Hoàng Thành Huế', 6, N'Huế')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (7, N'Motor Quảng Ninh - Vịnh Hạ Long', 7, N'Quảng Ninh')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (8, N'Xe Máy Biển Xanh Nha Trang', 8, N'Xe Máy Biển Xanh Nha Trang')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (9, N'Honda Đà Lạt - Thành Phố Sương Mù', 9, N'Đà Lạt')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (10, N'Xe Máy Quy Nhơn - Bình Định', 10, N'Quy Nhơn')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (11, N'Yamaha Bình Dương - Thủ Dầu Một', 11, N'Bình Dương')
INSERT [dbo].[motor_rental_shop] ([shop_id], [shop_name], [city_id], [city_address]) VALUES (12, N'Cửa Hàng Xe Máy Đất Mũi Cà Mau', 12, N'Cà Mau')
GO
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (1, 1001, N'Xác nhận hợp đồng thuê xe máy tháng 8/2020', CAST(N'2020-08-05' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (2, 1002, N'Nhắc nhở thanh toán phí thuê xe tháng 1/2021', CAST(N'2021-01-25' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (3, 1003, N'Xác nhận hợp đồng thuê xe máy tháng 4/2021', CAST(N'2021-04-10' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (4, 1004, N'Nhắc nhở thanh toán phí thuê xe tháng 7/2021', CAST(N'2021-07-25' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (5, 1005, N'Xác nhận hợp đồng thuê xe máy tháng 9/2021', CAST(N'2021-09-12' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (6, 1006, N'Nhắc nhở thanh toán phí thuê xe tháng 2/2022', CAST(N'2022-02-20' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (7, 1007, N'Xác nhận hợp đồng thuê xe máy tháng 5/2022', CAST(N'2022-05-05' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (8, 1008, N'Nhắc nhở thanh toán phí thuê xe tháng 9/2022', CAST(N'2022-09-10' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (9, 1009, N'Xác nhận hợp đồng thuê xe máy tháng 1/2023', CAST(N'2023-01-10' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (10, 1010, N'Nhắc nhở thanh toán phí thuê xe tháng 4/2023', CAST(N'2023-04-20' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (11, 1011, N'Xác nhận hợp đồng thuê xe máy tháng 7/2023', CAST(N'2023-07-20' AS Date))
INSERT [dbo].[notification] ([notification_id], [customer_id], [notification_message], [notification_date_send]) VALUES (12, 1012, N'Nhắc nhở thanh toán phí thuê xe tháng 1/2024', CAST(N'2024-01-20' AS Date))
GO
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (1, CAST(450000.00 AS Numeric(18, 2)), N'Tiền Mặt', 1)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (2, CAST(320000.00 AS Numeric(18, 2)), N'Chuyển Khoản', 2)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (3, CAST(2000000.00 AS Numeric(18, 2)), N'Tiền Mặt', 3)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (4, CAST(350000.00 AS Numeric(18, 2)), N'Chuyển Khoản', 4)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (5, CAST(1000000.00 AS Numeric(18, 2)), N'Chuyển Khoản', 5)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (6, CAST(4800000.00 AS Numeric(18, 2)), N'Tiền Mặt', 6)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (7, CAST(6600000.00 AS Numeric(18, 2)), N'Tiền Mặt', 7)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (8, CAST(4000000.00 AS Numeric(18, 2)), N'Chuyển Khoản', 8)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (9, CAST(25200000.00 AS Numeric(18, 2)), N'Chuyển Khoản', 9)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (10, CAST(62000000.00 AS Numeric(18, 2)), N'Chuyển Khoản', 10)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (11, CAST(165000000.00 AS Numeric(18, 2)), N'Tiền Mặt', 11)
INSERT [dbo].[payment] ([payment_id], [payment_amount], [payment_method], [contract_id]) VALUES (12, CAST(52000000.00 AS Numeric(18, 2)), N'Chuyển Khoản', 12)
GO
