USE [MilkTea]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/10/2023 9:58:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/10/2023 9:58:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/10/2023 9:58:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/10/2023 9:58:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/10/2023 9:58:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 3/10/2023 9:58:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 3/10/2023 9:58:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'aaa', N'123456', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'Anjolie', N'234', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Ferris', N'234', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Katell', N'333', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Zahir', N'2222', 1, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Conan', N'3', 1, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Cade', N'333', 1, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (8, N'Micah', N'2', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (9, N'Rowan', N'3', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (10, N'Kirby', N'3', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (11, N'Tanisha', N'22', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (12, N'Howard', N'2', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (13, N'Tana', N'2', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (14, N'Hadassah', N'2', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (16, N'Slade', N'4', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (17, N'Devin', N'5', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (18, N'Rowan', N'5', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (19, N'Rafael', N'5', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (20, N'Madaline', N'5', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (21, N'Vera', N'5', 0, 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (22, N'Declan', N'5', 1, 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (23, N'Katell', N'5', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (24, N'Summer', N'5', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (25, N'Robin', N'5', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (26, N'Dominique', N'5', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (27, N'admin', N'123', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (28, N'mra', N'5', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (29, N'mrb', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (30, N'Camden', N'123', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (31, N'manhdsz', N'123456', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (32, N'sfdfds', N'123', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (33, N'aaaaa', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (34, N'bbbb', N'1234', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (35, N'luong', N'123', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (38, N'mit', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (39, N'aaaaaaaa', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (40, N'efef', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (41, N'fef', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (42, N'cd', N'1234', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (43, N'fefr', N'123', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (44, N'fdef', N'123', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (45, N'fds', N'123', 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Trà Sữa Ô Lông')
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Trà Sữa Thượng Hải')
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (6, N'Trà Sữa Cốt Dừa')
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (7, N'Trà Sữa Bảy Màu')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (46, 19, N'Trà Misu', N'https://images.foody.vn/res/g100003/1000027516/s800/foody-tiem-tra-banh-misu-banh-ngot-do-uong-dinh-cong.n0zvbk-647-637602391567944831.jpg', 140, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (47, 19, N'Trà Nụ', N'http://cdn.tgdd.vn/Files/2018/07/28/1104895/vi-sao-nen-dung-tra-nu-voi-202110141538044252.jpg', 150, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (48, 20, N'Trà Sữa', N'http://cdn.tgdd.vn/Files/2021/08/10/1374160/hoc-cach-pha-tra-sua-o-long-dai-loan-thom-ngon-chuan-vi-ai-cung-me-202108100039248020.jpg', 100, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (49, 21, N'Trà Thạch', N'https://www.highlandscoffee.com.vn/vnt_upload/product/11_2022/BR_Drink/HLC__TRA_THACH_DAO-09.jpg', 100, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (50, 22, N'Trà Chanh', N'https://specials-images.forbesimg.com/imageserve/5d2675c34c687b00085c5503/Star-Wars/960x0.jpg?fit=scale', 160, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (1050, 1022, N'Trà Misu', N'https://images.foody.vn/res/g100003/1000027516/s800/foody-tiem-tra-banh-misu-banh-ngot-do-uong-dinh-cong.n0zvbk-647-637602391567944831.jpg', 160, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (1051, 1022, N'Trà Phố Cổ', N'https://ladia.vn/wp-content/uploads/2021/09/tra-chanh.jpg', 100, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (2050, 2022, N'Trà Phố Cổ', N'https://ladia.vn/wp-content/uploads/2021/09/tra-chanh.jpg', 100, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (2051, 2022, N'Trà Nụ', N'http://cdn.tgdd.vn/Files/2018/07/28/1104895/vi-sao-nen-dung-tra-nu-voi-202110141538044252.jpg', 100, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (2052, 2023, N'Trà Misu', N'https://images.foody.vn/res/g100003/1000027516/s800/foody-tiem-tra-banh-misu-banh-ngot-do-uong-dinh-cong.n0zvbk-647-637602391567944831.jpg', 160, 1)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (19, 1, 290, N'hang de vo', CAST(N'2022-04-23' AS Date), 19)
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (20, 1, 100, N'', CAST(N'2023-02-10' AS Date), 20)
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (21, 4, 100, N'1', CAST(N'2023-02-10' AS Date), 21)
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (22, 1, 160, N'd', CAST(N'2023-02-11' AS Date), 22)
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (1022, 1, 260, N'adfadsf', CAST(N'2023-03-06' AS Date), 1022)
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (2022, 1, 200, N'luifky', CAST(N'2023-03-07' AS Date), 2022)
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (2023, 1, 160, N'vdzv', CAST(N'2023-03-10' AS Date), 2023)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'Trà Misu', N'https://images.foody.vn/res/g100003/1000027516/s800/foody-tiem-tra-banh-misu-banh-ngot-do-uong-dinh-cong.n0zvbk-647-637602391567944831.jpg', 160.0000, N'Trà Misu', N'Trà Misu', 3, 7)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Trà Kem', N'http://file.hstatic.net/1000135323/article/hong_tra_kem_man.jpg', 100.0000, N'Trà Kem', N'Trà Kem', 3, 6)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Trà Phố Cổ', N'https://ladia.vn/wp-content/uploads/2021/09/tra-chanh.jpg', 100.0000, N'Trà Phố Cổ', N'Trà Phố Cổ', 6, 1)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Trà Hoa Sen', N'https://uploads-ssl.webflow.com/5e37b45ba3d85b0eee278825/61c540f3d5d48c7f44addf8a_tra%CC%80%20hoa%20sen%202.png', 120.0000, N'Trà Hoa Sen', N'Trà Hoa Sen', 4, 7)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Trà Nụ', N'http://cdn.tgdd.vn/Files/2018/07/28/1104895/vi-sao-nen-dung-tra-nu-voi-202110141538044252.jpg', 120.0000, N'Trà Nụ', N'Trà Nụ', 4, 7)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'Trà Đen', N'https://haitratancuong.com/vnt_upload/news/02_2023/cach_ham_tra_den.jpg', 165.0000, N'Trà Đen', N'Trà Đen', 3, 19)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Trà Sữa', N'http://cdn.tgdd.vn/Files/2021/08/10/1374160/hoc-cach-pha-tra-sua-o-long-dai-loan-thom-ngon-chuan-vi-ai-cung-me-202108100039248020.jpg', 150.0000, N'Trà Sữa', N'Trà Sữa', 3, 15)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Trà Thạch', N'https://www.highlandscoffee.com.vn/vnt_upload/product/11_2022/BR_Drink/HLC__TRA_THACH_DAO-09.jpg', 185.0000, N'Trà Thạch', N'Trà Thạch', 7, 18)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Trà Chanh', N'https://cdn.tgdd.vn/Files/2021/08/23/1377290/cach-lam-tra-chanh-hong-kong-ngon-chuan-vi-ngoai-quan-202201210008425468.jpeg', 150.0000, N'Trà Chanh', N'Trà Chanh', 7, 17)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Trà Cam', N'https://img.tastykitchen.vn/2022/03/28/tra-dao-cam-sa-927c.jpg', 180.0000, N'Trà Cam', N'Trà Cam', 3, 15)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (36, N'Trà Mỹ Vị', N'https://product.hstatic.net/1000339999/product/combo_hopgo_1000x1000px-06_9a4124864e8b4b2f9ce11a8794908316_master.jpg', 200.0000, N'Trà Mỹ Vị', N'Trà Mỹ Vị', 3, 1)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (37, N'Trà Cao Lương', N'https://duoclieuthaphaco.com/hinhanh/2020/12/31/08/cong-dung-cua-cao-luong-khuong-3.jpg', 158.0000, N'Trà Cao Lương', N'Trà Cao Lương', 6, 1)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (38, N'Trà Hoa Nhài', N'https://login.medlatec.vn//ImagePath/images/20220922/20220922_hoa-nhai-2.jpg', 643634.0000, N'Trà Hoa Nhài', N'Trà Hoa Nhài', 3, 1)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (39, N'Trà Nam Tước', N'http://baoquangngai.vn/dataimages/202102/original/images2348019_1.jpg', 65767.0000, N'Trà Nam Tước', N'Trà Nam Tước', 3, 1)
GO
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'viet', N'12345678', N'hanoi')
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (20, N'', N'', N'')
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (21, N'1', N'1', N'1')
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (22, N'd', N'd', N'd')
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1022, N'Thành', N'123465789', N'23')
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2022, N'3u', N'876578657865', N'eths')
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2023, N'Thành', N'0365879260', N'23')
GO
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
