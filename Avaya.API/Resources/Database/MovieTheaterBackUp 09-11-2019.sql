USE [MovieTheater]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
	[Total] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdBill] [int] NULL,
	[IdService] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Bill_Detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdRoom] [int] NOT NULL,
	[IdShowTime] [int] NOT NULL,
	[IdSeatType] [int] NOT NULL,
	[IdRoomDetail] [int] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMovie] [int] NOT NULL,
	[IdCinema] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Booking_Detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriesOfFilm]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriesOfFilm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilmOnlineId] [int] NULL,
	[FilmCategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cinema]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cinema](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cinema] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmCategory]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmOnline]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmOnline](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ImgUrl] [varchar](max) NULL,
	[Duration] [int] NULL,
	[Type] [nvarchar](max) NULL,
	[ReleaseDate] [date] NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Parent] [int] NULL,
	[OrderBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Duration] [int] NOT NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsArticleCategories]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsArticleCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NewsCategoryId] [int] NOT NULL,
	[NewsArticleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsArticles]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsArticles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HeadLine] [varchar](255) NOT NULL,
	[Description] [text] NULL,
	[Text] [text] NOT NULL,
	[PublishDate] [datetime] NOT NULL,
	[Author] [varchar](255) NULL,
	[Source] [varchar](255) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[Tags] [varchar](255) NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK__NewsArti__3213E83F276EDEB3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsCategories]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategories](
	[Id] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsImage]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PhotoWidth] [smallint] NULL,
	[PhotoHeight] [smallint] NULL,
	[PhotoUrl] [text] NULL,
	[ArticlePhotoId] [int] NOT NULL,
	[Type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/9/2019 1:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCinema]    Script Date: 11/9/2019 1:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCinema](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCinema] [int] NULL,
	[IdProduct] [int] NULL,
	[Price] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 11/9/2019 1:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdShowTime] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomDetail]    Script Date: 11/9/2019 1:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdRoom] [int] NOT NULL,
	[Column] [int] NOT NULL,
	[Row] [int] NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[IdProduct] [int] NULL,
 CONSTRAINT [PK_Room_Detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatType]    Script Date: 11/9/2019 1:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Seat_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShowTime]    Script Date: 11/9/2019 1:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShowTime](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdBookingDetail] [int] NOT NULL,
	[TimeStart] [time](7) NOT NULL,
	[TimeEnd] [time](7) NOT NULL,
	[Seat] [int] NOT NULL,
 CONSTRAINT [PK_Show_Time] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (1, 1, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (2, 2, CAST(20000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (3, 1, CAST(1440000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (4, 1, CAST(280000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (5, 1, CAST(900000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (6, 1, CAST(1300000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (7, 0, CAST(720000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (8, 0, CAST(560000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (9, 1, CAST(360000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (10, 1, CAST(160000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (11, 1, CAST(400000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (12, 1, CAST(240000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (13, 1, CAST(440000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (14, 1, CAST(240000 AS Numeric(18, 0)))
INSERT [dbo].[Bill] ([Id], [IdUser], [Total]) VALUES (15, 1, CAST(240000 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Bill] OFF
SET IDENTITY_INSERT [dbo].[BillDetail] ON 

INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (0, NULL, NULL, 1, CAST(8000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (1, 1, 1, 1, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (2, 2, 2, 4, CAST(20000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (3, 3, 1, 4, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (4, 3, 2, 4, CAST(100000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (5, 3, 3, 4, CAST(180000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (6, 4, 9, 7, CAST(40000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (7, 5, 1, 5, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (8, 5, 2, 5, CAST(100000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (9, 6, 1, 2, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (10, 6, 8, 3, CAST(380000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (11, 7, 0, 2, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (12, 7, 0, 2, CAST(280000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (13, 8, 2, 2, CAST(100000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (14, 8, 3, 2, CAST(180000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (15, 9, 1, 2, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (16, 9, 2, 2, CAST(100000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (17, 10, 1, 2, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (18, 11, 1, 5, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (19, 12, 1, 3, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (20, 13, 3, 2, CAST(180000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (21, 13, 9, 2, CAST(40000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (22, 14, 1, 2, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (23, 14, 9, 2, CAST(40000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (24, 15, 1, 2, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (25, 15, 9, 2, CAST(40000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (26, 15, 1, 2, CAST(80000 AS Numeric(18, 0)))
INSERT [dbo].[BillDetail] ([Id], [IdBill], [IdService], [Quantity], [Price]) VALUES (27, 15, 9, 2, CAST(40000 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[BillDetail] OFF
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (1, 1, 1, 1, 3)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (2, 1, 1, 1, 5)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (3, 1, 1, 1, 8)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (4, 1, 1, 1, 20)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (5, 1, 1, 1, 25)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (6, 1, 1, 1, 26)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (7, 1, 1, 1, 11)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (8, 1, 1, 1, 12)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (9, 1, 1, 1, 11)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (10, 1, 1, 1, 11)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (11, 1, 1, 1, 11)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (12, 1, 1, 1, 11)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (13, 1, 1, 1, 11)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (14, 1, 1, 1, 11)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (15, 1, 1, 1, 16)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (16, 1, 1, 1, 17)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (17, 1, 1, 1, 9)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (18, 1, 1, 1, 19)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (19, 1, 1, 1, 31)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (20, 1, 1, 1, 32)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (21, 1, 1, 1, 41)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (22, 1, 1, 1, 42)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (23, 1, 1, 1, 41)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (24, 1, 1, 1, 42)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (25, 1, 1, 1, 41)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (26, 1, 1, 1, 42)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (27, 1, 1, 1, 49)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (28, 1, 1, 1, 50)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (29, 1, 1, 1, 52)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (30, 1, 1, 1, 51)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (31, 1, 1, 1, 52)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (32, 1, 1, 1, 51)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (33, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (34, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (35, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (36, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (37, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (38, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (39, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (40, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (41, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (42, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (43, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (44, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (45, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (46, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (47, 1, 1, 1, 22)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (48, 1, 1, 1, 22)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (49, 1, 1, 1, 30)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (50, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (51, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (52, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (53, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (54, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (55, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (56, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (57, 1, 1, 1, 22)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (58, 1, 1, 1, 22)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (59, 1, 1, 1, 30)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (60, 1, 1, 1, 40)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (61, 1, 1, 1, 39)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (62, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (63, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (64, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (65, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (66, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (67, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (68, 1, 1, 1, 21)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (69, 1, 1, 1, 22)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (70, 1, 1, 1, 22)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (71, 1, 1, 1, 30)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (72, 1, 1, 1, 40)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (73, 1, 1, 1, 39)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (74, 1, 1, 1, 38)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (75, 1, 1, 1, 28)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (76, 1, 1, 1, 29)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (77, 1, 1, 1, 37)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (78, 1, 1, 1, 36)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (79, 1, 1, 1, 13)
INSERT [dbo].[Booking] ([Id], [IdRoom], [IdShowTime], [IdSeatType], [IdRoomDetail]) VALUES (80, 1, 1, 1, 14)
SET IDENTITY_INSERT [dbo].[Booking] OFF
SET IDENTITY_INSERT [dbo].[BookingDetail] ON 

INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (10, 1, 1, CAST(N'2019-01-09T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (11, 2, 2, CAST(N'2019-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (12, 3, 3, CAST(N'2019-03-09T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (13, 4, 4, CAST(N'2019-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (14, 1, 1, CAST(N'2019-06-10T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (15, 1, 1, CAST(N'2019-10-06T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (16, 1, 1, CAST(N'2019-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (17, 1, 1, CAST(N'2019-10-07T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (18, 1, 1, CAST(N'2019-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (19, 1, 2, CAST(N'2019-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (20, 1, 2, CAST(N'2019-10-07T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (21, 1, 2, CAST(N'2019-08-10T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (22, 2, 1, CAST(N'2019-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (23, 2, 2, CAST(N'2019-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (24, 2, 3, CAST(N'2019-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (25, 3, 1, CAST(N'2019-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (26, 3, 2, CAST(N'2019-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (27, 3, 3, CAST(N'2019-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (28, 4, 1, CAST(N'2019-10-07T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (29, 4, 2, CAST(N'2019-10-07T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (30, 4, 3, CAST(N'2019-10-07T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (31, 4, 4, CAST(N'2019-10-07T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (32, 4, 4, CAST(N'2019-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (33, 1, 1, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (34, 1, 2, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (35, 1, 3, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (36, 1, 4, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (37, 2, 1, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (38, 2, 2, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (39, 2, 3, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (40, 2, 4, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (41, 3, 1, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (42, 3, 2, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (43, 3, 3, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (44, 3, 4, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (45, 4, 1, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (46, 4, 2, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (47, 4, 3, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [IdMovie], [IdCinema], [Date]) VALUES (48, 4, 4, CAST(N'2019-10-15T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[BookingDetail] OFF
SET IDENTITY_INSERT [dbo].[CategoriesOfFilm] ON 

INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (1, 1, 1)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (2, 1, 2)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (3, 1, 3)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (4, 2, 1)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (5, 2, 5)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (6, 2, 6)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (7, 3, 5)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (8, 3, 7)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (9, 4, 1)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (10, 4, 6)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (11, 5, 1)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (12, 5, 5)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (13, 5, 6)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (14, 6, 1)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (15, 6, 5)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (16, 6, 6)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (17, 7, 1)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (18, 7, 5)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (19, 7, 6)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (20, 8, 2)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (21, 8, 4)
INSERT [dbo].[CategoriesOfFilm] ([Id], [FilmOnlineId], [FilmCategoryId]) VALUES (22, 8, 5)
SET IDENTITY_INSERT [dbo].[CategoriesOfFilm] OFF
SET IDENTITY_INSERT [dbo].[Cinema] ON 

INSERT [dbo].[Cinema] ([Id], [Name], [Address], [Logo]) VALUES (1, N'BHD Star Bitexco', N'L3-Bitexco Icon 68, 2 Hải Triều, Q.1', N'1')
INSERT [dbo].[Cinema] ([Id], [Name], [Address], [Logo]) VALUES (2, N'BHD Star Vincom Thảo Điền', N'L5-Megamall, 159 XL Hà Nội, Q.2', N'2')
INSERT [dbo].[Cinema] ([Id], [Name], [Address], [Logo]) VALUES (3, N'GLX - Nguyễn Du', N'116 Nguyễn Du, Q.1', N'3')
INSERT [dbo].[Cinema] ([Id], [Name], [Address], [Logo]) VALUES (4, N'GLX - Tân Bình', N'246 Nguyễn Hồng Đào, Tân Bình', N'4')
SET IDENTITY_INSERT [dbo].[Cinema] OFF
SET IDENTITY_INSERT [dbo].[FilmCategory] ON 

INSERT [dbo].[FilmCategory] ([Id], [Name]) VALUES (1, N'Drama')
INSERT [dbo].[FilmCategory] ([Id], [Name]) VALUES (2, N'Action')
INSERT [dbo].[FilmCategory] ([Id], [Name]) VALUES (3, N'Comedy')
INSERT [dbo].[FilmCategory] ([Id], [Name]) VALUES (4, N'Science')
INSERT [dbo].[FilmCategory] ([Id], [Name]) VALUES (5, N'Musical')
INSERT [dbo].[FilmCategory] ([Id], [Name]) VALUES (6, N'Adventure')
INSERT [dbo].[FilmCategory] ([Id], [Name]) VALUES (7, N'War')
SET IDENTITY_INSERT [dbo].[FilmCategory] OFF
SET IDENTITY_INSERT [dbo].[FilmOnline] ON 

INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (1, N'Avenger: Endgame', N'https://images-na.ssl-images-amazon.com/images/I/81hkRNYQhNL._SY679_.jpg', 250, N'PG-13', CAST(N'2019-09-09' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (2, N'Power Ranger', N'https://cdn2.bigcommerce.com/n-nr1m3w/b72t4x/products/77996/images/85337/power_rangers_-_group__99917.1493833860.1280.1280.jpg?c=2', 180, N'PG-13', CAST(N'2019-09-09' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (3, N'Lucifer', N'https://m.media-amazon.com/images/M/MV5BZTA2NTBkYWUtMzM4Zi00YzhlLTk4NWItY2U1ODczNDMyNDAzXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_CR0,0,675,1000_AL_.jpg', 250, N'TV-MA', CAST(N'2019-09-09' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (4, N'Breaking Bad', N'https://images-na.ssl-images-amazon.com/images/I/51fWOBx3agL.jpg', 130, N'PG-13', CAST(N'2019-09-09' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (5, N'El Camino', N'https://i.redd.it/uimm8n9id9o31.jpg', 200, N'AP-CN', CAST(N'2019-07-02' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (6, N'Supernatural', N'https://images-na.ssl-images-amazon.com/images/I/6122B7h60kL._SY679_.jpg', 205, N'AP-CN', CAST(N'2019-07-02' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (7, N'Good Doctor', N'https://i.etsystatic.com/18272096/r/il/b1865e/1681315111/il_570xN.1681315111_9o9b.jpg', 205, N'AP-CN', CAST(N'2019-07-02' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (8, N'Shawshank Redemption', N'https://images-na.ssl-images-amazon.com/images/I/71H7DhnOoRL._SY679_.jpg', 205, N'AP-CN', CAST(N'2019-07-02' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (10, N'Game Of Thrones', N'https://images-na.ssl-images-amazon.com/images/I/51IkXIrjpXL._SY679_.jpg', 250, N'PG-21', CAST(N'2019-03-04' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (11, N'Black Panther', N'https://images-na.ssl-images-amazon.com/images/I/61BlAIoqQUL.jpg', 300, N'PG-21', CAST(N'2019-03-04' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (12, N'Maze Runner', N'https://images-na.ssl-images-amazon.com/images/I/91nB2P7VgvL._SY679_.jpg', 120, N'PG-21', CAST(N'2019-03-04' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (13, N'Dark Phoenix', N'https://s3.birthmoviesdeath.com/images/made/X-Men-Dark-Phoenix-New-Poster_1200_1777_81_s.jpg', 250, N'PG-21', CAST(N'2019-03-04' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (14, N'Bumblebee', N'https://media.comicbook.com/2018/11/bumblebee-poster-1143862.jpeg', 130, N'PG-21', CAST(N'2019-03-04' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (15, N'Maleficent', N'https://d994l96tlvogv.cloudfront.net/uploads/film/poster/maleficent-mistress-of-evil-new-poster.jpeg', 122, N'PG-21', CAST(N'2019-03-04' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (16, N'Kungfu Hustle', N'https://images-na.ssl-images-amazon.com/images/I/51tBlJ8iwnL.jpg', 232, N'PG-21', CAST(N'2019-03-04' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (17, N'John Wick', N'https://cdn.shopify.com/s/files/1/0747/3829/products/mHP0101_1024x1024.jpeg?v=1485014463', 209, N'PG-21', CAST(N'2019-03-04' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (18, N'Fast and Furious 7', N'https://images-na.ssl-images-amazon.com/images/I/61JXqCUozzL._SY679_.jpg', 178, N'PG-21', CAST(N'2019-03-04' AS Date), NULL)
INSERT [dbo].[FilmOnline] ([Id], [Title], [ImgUrl], [Duration], [Type], [ReleaseDate], [Description]) VALUES (19, N'Venom', N'http://localhost:59239/resources/images/venom-poster.jpg', 250, N'PG-13', CAST(N'2019-10-05' AS Date), N'Journalist Eddie Brock is trying to take down Carlton Drake, the notorious and brilliant founder of the Life Foundation. While investigating one of Drake''s experiments, Eddie''s body merges with the alien Venom -- leaving him with superhuman strength and power. Twisted, dark and fueled by rage, Venom tries to control the new and dangerous abilities that Eddie finds so intoxicating.')
SET IDENTITY_INSERT [dbo].[FilmOnline] OFF
INSERT [dbo].[Menu] ([Id], [Name], [Parent], [OrderBy]) VALUES (1, N'Rạp Chiếu Phim', 0, 1)
INSERT [dbo].[Menu] ([Id], [Name], [Parent], [OrderBy]) VALUES (2, N'Rạp', 1, 1)
INSERT [dbo].[Menu] ([Id], [Name], [Parent], [OrderBy]) VALUES (3, N'Lịch Chiếu', 1, 2)
INSERT [dbo].[Menu] ([Id], [Name], [Parent], [OrderBy]) VALUES (4, N'Xuất Chiếu', 1, 3)
INSERT [dbo].[Menu] ([Id], [Name], [Parent], [OrderBy]) VALUES (5, N'Phim', 0, 2)
INSERT [dbo].[Menu] ([Id], [Name], [Parent], [OrderBy]) VALUES (6, N'Phim Bộ', 5, 1)
INSERT [dbo].[Menu] ([Id], [Name], [Parent], [OrderBy]) VALUES (7, N'Phim Lẻ', 5, 2)
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([Id], [Picture], [Name], [Description], [Duration]) VALUES (1, N'1', N'NGÔI NHÀ BƯƠM BƯỚM', N'“Ngôi Nhà Bươm Bướm” là bộ phim xoay quanh câu chuyện nên duyên của Hoàng (Liên Bỉnh Phát) và Mai (Hoàng Yến Chibi). Bằng sự khôn khéo và lém lĩnh, Mai đã thuyết phục được bố mẹ từ Bắc vào Nam để gặp gỡ và bàn chuyện cưới hỏi của cả hai. Mọi chuyện tưởng chừng sẽ rất êm đẹp cho đến khi cả hai bên gia đình đều bị phơi bày những bí mật “động trời” cùng sự khác biệt về mọi mặt. Điều gì sẽ cứu vãn được tình yêu nhiệt thành của tuổi trẻ và trao cho họ một cái kết đầy viên mãn?', 100)
INSERT [dbo].[Movie] ([Id], [Picture], [Name], [Description], [Duration]) VALUES (2, N'2', N'BẠN HỌC CÕI ÂM', N'Những ngày đầu tiên tại trường trung học của cậu nam sinh Alex chẳng khác gì địa ngục, khi nạn bắt nạt và bạo lực học đường diễn ra như cơm bữa. Sự xuất hiện của cô bạn Maggie khiến cho cuộc sống của Alex thú vị hơn hẳn. Cả hai sớm trở thành đôi bạn thân. Tuy nhiên, những sự việc kì lạ và kinh hoàng bắt đầu xảy ra. Đã có những cái chết được gây ra bởi những “bạn học cõi âm” khiến cho ngôi trường trở nên đáng sợ hơn bao giờ hết.', 90)
INSERT [dbo].[Movie] ([Id], [Picture], [Name], [Description], [Duration]) VALUES (3, N'3', N'ANH THẦY NGÔI SAO', N'Hoàng là một chàng trai trẻ ôm mộng thành ngôi sao ca nhạc, vì chưa chưa gặp thời nên tạm kiếm sống bằng công việc làm thầy giáo dạy nhạc. Sau biến cố, Hoàng buộc phải chuyển công tác ra một hòn đảo cách xa đất liền và tiếp quản một lớp học đặc biệt với vỏn vẹn 5 học trò. Cảm thấy cuộc sống mới chỉ mang lại phiền toái, Hoàng nhiều lần bỏ về nhưng không thành vì đám trẻ và người dân đảo luôn tìm cách giữ chân thầy giáo. Đến khi anh dần thích nghi với hòn đảo này cũng là lúc cơ hội trở thành ca sĩ tìm đến, buộc Hoàng phải đưa ra lựa chọn.', 105)
INSERT [dbo].[Movie] ([Id], [Picture], [Name], [Description], [Duration]) VALUES (4, N'4', N'ANGRY BIRDS 2', N'Lần đầu tiên trong lịch sử Angry Birds, Chim và Heo quyết định bắt tay họp tác với nhau để chống lại kẻ thù chung là nữ hoàng băng giá Zeta.', 100)
SET IDENTITY_INSERT [dbo].[Movie] OFF
SET IDENTITY_INSERT [dbo].[NewsArticles] ON 

INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (1, N'How Spider-Man Can Be Part Of The MCU & Sony’s Villain Universe', N'Tom Holland''s Spider-Man can appear in both the MCU and Sony''s Spider-villain universe now, but it won''t be easy and it will be messy. Marvel Studios and Sony Pictures have reached a new agreement, ', N'<img src="https://static3.srcdn.com/wordpress/wp-content/uploads/2019/09/Spider-Man-with-Venom-and-Kevin-Feige.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376><p>Tom Holland''s Spider-Man can appear in both the MCU and Sony''s Spider-villain universe now, but it won''t be easy and it will be messy.
Marvel Studios and Sony Pictures have reached a new agreement, meaning Holland''s Spider-Man will remain part of the MCU.The two studios will work together on Spider-Man: Homecoming 3, due out in 2021, and the wall-crawler will also appear in another unconfirmed MCU movie.<br><br>
    Back then, Marvel and Sony spelled out exactly what was coming; Captain America: Civil War, a solo Spider-Man movie, and a bright future. This is a lot more secretive
    , reflecting the fact Marvel Studios has stopped disclosing its long-term plans. As a result, the curious comments raise a simple question: how is Spider-Man going
     to exist in both the MCU and Sony''s shared universe? There are really three possibilities.<br>
    </p>
    <br>
    <img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2018/04/Venom-Avengers-Infinity-War.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height=376>
    <p>
      There is some evidence to support this idea, with unconfirmed reports suggesting Kevin Feige is planning an endgame that will write
       Spider-Man out of the MCU. The sad truth is that this would make sense from a business perspective; as things stand, while Spider-Man
        is back for two more MCU movies, Marvel would need to return to the negotiating table for more Spider-Man when those are done. The new deal seems to work in Sony''s favor,
         with Marvel and Disney signing up to a proposal they reportedly walked away from when it was first discussed. The more firmly embedded Spider-Man becomes in the MCU, 
  the greater the pressure on Marvel to reach a new agreement in a few years'' time. From a purely business point of view, Marvel really need to figure out an exit strategy.</p>', CAST(N'2019-09-27T00:00:00.000' AS DateTime), N'Bacon', N'Marvel', CAST(N'2019-09-27T00:00:00.000' AS DateTime), CAST(N'2019-09-27T00:00:00.000' AS DateTime), N'Marvel', 30)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (2, N'Joaquin Phoenix Walking Off Joker Set Video Awkwardly Released', N'Video of Joaquin Phoenix walking off the Joker set is awkwardly released online. It''s no secret that actors tasked with portraying the Clown Prince of Crime take the job very seriously, and Phoenix is no exception. ', N'<img src="https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Joaquin-Phoenix-walking-off-Joker-set.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376><p>
Video of Joaquin Phoenix walking off the Joker set is awkwardly released online. It''s no secret that actors tasked with portraying the Clown Prince of Crime take the job very seriously, 
and Phoenix is no exception. He fully committed himself to the role, losing weight, driving himself mad, and completely transforming himself to chilling results. Though Joker itself has 
become one of the most polarizing films of 2019, most everyone is in agreement Phoenix did an amazing job. He''s in the running for another Oscar nomination this year.
<br>
    </p>
    <br>
    <img src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/joaquin-phoenix-joker-spotlight-1567253994.jpg" width =738 height =376>
    <p>
<br>
      According to EW, Phoenix''s publicist called the above video "a joke outtake," suggesting that this was an elaborate bit put together for Kimmel''s show and not a surprise dropped on Phoenix during the interview. That does make some sense, especially since Kimmel is known for airing mock "deleted scenes" or "behind-the-scenes" looks at upcoming blockbusters (which happened this summer with Spider-Man: Far From Home). What may throw viewers for a loop is that this is actual footage from the Joker set, not a scripted sketch filmed specifically for Kimmel. In all likelihood, the Joker clip was approved by Warner Bros. before the taping and Phoenix was given a heads up so he could act embarrassed by what he saw. There''s an outside chance this is genuine and Phoenix''s PR team is attempting to save face, but it looks like this was staged.</p>', CAST(N'2019-10-02T00:00:00.000' AS DateTime), N'Eggs', N'DC', CAST(N'2019-10-02T00:00:00.000' AS DateTime), CAST(N'2019-10-02T00:00:00.000' AS DateTime), N'DC', 30)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (3, N'Everything That’s Gone Wrong On Joker’s Press Tour', N'The Joker press tour has been messy, and it’s not doing the movie any favors. Warner Bros. was always going to have a tough time promoting Joker, the reimagining of the Clown Prince of Crime’s origin story. It’s a prequel of sorts with little concern for wider DC canon;', N'<img src="https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Todd-Phillips-Joker-Movie-With-Joaquin-Phoenix.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
The Joker press tour has been messy, and it’s not doing the movie any favors. Warner Bros. was always going to have a tough time promoting Joker, the reimagining 
of the Clown Prince of Crime’s origin story. It’s a prequel of sorts with little concern for wider DC canon;
<br>
When Joker premiered at the Venice Film Festival (then went on to win the Golden Lion award, the highest honor they bestow), it seemed as though Joker had taken an unexpected turn 
in Hollywood: Now they were aiming for prestige. It’s certainly a gutsy move and one that comes with its own set of benefits should the team pull it off successfully,
 but it’s also placed the cast and crew of Joker under a much harsher spotlight than they may have expected. It’s debatable whether Warner Bros., Phillips,
 and leading man Joaquin Phoenix were 100% aware of the melting pot of potential controversies they were entering when the promotional tour for Joker started.
<br>
<h3>
JOAQUIN PHOENIX’S AWKWARD INTERVIEWS
</h3>
    </p>
    <br>
    <img src="https://static0.srcdn.com/wordpress/wp-content/uploads/2019/09/1-joker-Cropped.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
    <p>
<br>
Still, it is disappointing that this is what has soaked up most of the press attention and not the film itself. After all, Joker won the Golden Lion and is a major Oscar
 contender that''s set to break the bank at the box office this weekend, but the news cycle has been dominated by the scandal, awkwardness, and politically questionable rhetoric.
 Regardless of what people think of the movie, at the very least, it deserves to be discussed on its own merits and not solely as part of wider fears or industry gossip. 
It''s yet to be seen if that will have a tangible impact on the film''s commercial success. Those box office projections are very strong and the movie certainly has enough
 glowing reviews to keep it in the awards season game. But given how messy this press tour has been, if nothing else, <b>Joker</b> can stand as a testament of what not to do for 
future promotional cycles.
    </p>', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'Bojack Horseman', N'DC Agency', CAST(N'2019-10-01T00:00:00.000' AS DateTime), CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'DC', 25)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (4, N'Star Wars: Kylo''s Helmet Was Inspired By Knights of Ren (Not The Other Way Round)', N'Star Wars has revealed that Kylo Ren''s helmet was inspired by the Knights of Ren - not the other way round. Star Wars: The Force Awakens introduced viewers to a new villain, Kylo Ren,', N'<img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2017/11/Star-Wars-The-Last-Jedi-Kylo-Ren-helmet.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
Star Wars has revealed that Kylo Ren''s helmet was inspired by the Knights of Ren - not the other way round. Star Wars: The Force Awakens introduced viewers to a new villain, 
Kylo Ren, who was revealed to be the son of Han and Leia. In one key scene, Kylo Ren was described as "master of the Knights of Ren."
<br>
The Knights of Ren are something of a mystery. The Knights of Ren have been glimpsed in trailers, a few behind-the-scenes photos, and even on the cover of Star Wars: The Rise of Skywalker: The Visual Dictionary,
 but Lucasfilm seem determined to parse out as little information as possible. It''s reasonable to assume they''re destined to play a major part in Star Wars: The Rise of Skywalker,
 which has the task of bringing the entire trilogy of trilogies to an end.
<br>
    </p>
    <br>
    <img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/06/Knight-of-Ren-Hidden-Secret.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
    <p>
<br>
SMeanwhile, the Ultimate Star Wars New Edition also seems to debunk another popular theory. Chuck Wendig''s Aftermath trilogy included a group of Sith cultists known as the
 Acolytes of the Beyond, who had collected Sith artifacts such as ancient masks. There''d been some speculation that the Acolytes of the Beyond ultimately evolved into the Knights
 of Ren; however, it''s important to note that the Sith masks collected by the Acolytes were strong in the dark side of the Force. This quote suggests that Kylo Ren''s mask has 
absolutely no special features at all; if that''s true for the Master of the Knights of Ren, then it''s presumably true of the others as well. Whatever the case, the truth will be
 revealed in Star Wars: The Rise of Skywalker, as well as an official tie-in comic book series on Kylo Ren''s rise in the First Order.
    </p>', CAST(N'2019-02-02T00:00:00.000' AS DateTime), N'Banama Jackson', N'ScreenRant', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-03-01T00:00:00.000' AS DateTime), N'StarWars', 20)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (5, N'One-Punch Man: Why There Are Three Different Versions Of The Comic', N'Why does One-Punch Man have three separate manga series, and which ones are considered canon? Like most Japanese animations, One-Punch Man is based on a manga.', N'<img src="https://static3.srcdn.com/wordpress/wp-content/uploads/2019/09/Saitama-One-Punch-Man-manga.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
Why does One-Punch Man have three separate manga series, and which ones are considered canon? Like most Japanese animations, 
One-Punch Man is based on a manga. Focused on the trials and misfortunes of Saitama, a man who''s a hero just for a hobby, One-Punch Man is one part parody of Shonen-style storytelling tropes and stereotypes, and one part thrilling and intense battle manga, pitching a perfect balance between action and comedy. As One-Punch Man has progressed, a colorful group of heroes and villains has emerged, expanding the franchise considerably.
<br>
First airing in 2015, the One-Punch Man anime adaptation earned the franchise international success seemingly overnight, and went on to become a crossover hit that appealed to 
hardcore anime fans and complete newcomers in equal measure. Usually when an anime series blows up and finds a mass audience, enthralled viewers can dive into the original manga 
and discover what happens next in their new favorite anime or, in some cases, enjoy a more streamlined, filler-free version of the story. With One-Punch Man, however, there are several 
different variations of the manga to dip into, which can be confusing at first glance.
<br>
    </p>
    <br>
    <img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/07/Saitama-in-One-Punch-Man.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
    <p>
<br>
Clearly, many fans will only wish to read one iteration of the One-Punch Man manga, so which version is the canon, definitive release? In a sense, all of them. Since the web-comic 
was published first by the franchise''s creator, it is arguably the definitive One-Punch Man story. However, the series drawn by Yusuke Murata follows its predecessor very closely and
 any changes are made with the involvement of ONE himself, meaning that these chapters are not reinterpretations - it would be more accurate to call them improvements. Consequently, 
most fans consider the Murata redraw the definitive One-Punch Man comic and certainly, if someone is only going to read one version only, this is the series to pick.
    </p>', CAST(N'2019-09-27T00:00:00.000' AS DateTime), N'Bacon', N'ScreenRant', CAST(N'2019-09-21T00:00:00.000' AS DateTime), CAST(N'2019-09-27T00:00:00.000' AS DateTime), N'One Punch Man', 25)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (6, N'Star Wars: The Last Jedi''s Fuel Problem Was Almost Avoided', N'Star Wars: The Last Jedi sees the Resistance fleet run out of fuel when fleeing the First Order, almost resulting in their total destruction.', N'<img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Star-Wars-Last-Jedi-Resistance-Ships.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
Star Wars: The Last Jedi sees the Resistance fleet run out of fuel when fleeing the First Order, almost resulting in their total destruction. Now in the Star Wars Resistance season 2 premiere, a possible solution to the Resistance''s low-fuel problem has been revealed - could it have made a difference?
<br>
Star Wars Resistance is an animated series set during the Star Wars sequel trilogy era. Season 1 starts just prior to the events of Star Wars: The Force Awakens and season 2 picks up events amid The Last Jedi. It follows a young Resistance spy, Kaz, as he investigates the First Order''s presence on the fueling station, Colossus. In the Star Wars Resistance season 1 finale, it''s revealed that the Colossus is also a spaceship with a hyperdrive, leading Kaz and his friends to launch the station so they can rendezvous with the rest of the Resistance on the planet D''Qar. Unfortunately, they don''t enter the coordinates for D''Qar before making the jump, so no one has any idea exactly where in the galaxy they''ll wind up.
<br>
    </p>
    <br>
    <img src="https://static3.srcdn.com/wordpress/wp-content/uploads/2018/10/Star-Wars-Resistance-Force-Awakens-Connections.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
    <p>
<br>
Once everyone''s securely on board, the Colossus makes the jump to hyperspace. However, Neeku reveals that he was unable to fully input the coordinates Kaz gave him, so he isn''t exactly sure where they''re going. As best as he can tell, the Colossus will either arrive very near D''Qar - the planet which serves as the home of the Resistance in The Force Awakens, and from where the Resistance is fleeing at the start of The Last Jedi - or they''ll drop out of hyperspace "unfathomable light years away".
    </p>', CAST(N'2019-03-17T00:00:00.000' AS DateTime), N'Eggs', N'ScreenRant', CAST(N'2019-03-17T00:00:00.000' AS DateTime), CAST(N'2019-03-17T00:00:00.000' AS DateTime), N'StarWars', 10)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (7, N'GRID Review: Great Bumper to Bumper Racing Action', N'GRID BRINGS BACK THE SERIES WITH GREAT SUCCESS, SHOWCASING A FLEXIBILITY RARELY SEEN IN RACING GAMES THAT CATERS FOR EVERYONE WITH LITTLE COMPROMISE.', N'<img src="https://static0.srcdn.com/wordpress/wp-content/uploads/2019/10/GRID-2019-Review.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
GRID’s roots run deep into the history of racing games, having lived through a fair few rebrands and name changes. Initially dubbed TOCA Touring Car Championship, the series expanded as it swallowed more and more forms of racing, going from Race Driver through to the best remembered GRID name. After a hiatus of five years, GRID has now returned.
<br>
<br>
Comparing it to the earlier games in GRID history, GRID 2019 definitely feels like a move back into the center between arcade and simulation. Whereas some of the previous titles in the series holt onto its sim-based roots, which included longer races and less bells and whistles, GRID 2019 has fully embraced a more direct method of racing fun. Whether long-term fans of the series will enjoy this will certainly be up for debate, but either way GRID 2019 pushes to get the adrenaline pumping.
<br>
<br>
    </p>
    <img src="https://static3.srcdn.com/wordpress/wp-content/uploads/2019/10/GRID-Stock-Car.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
    <p>
<br>
Overall, then, GRID manages to give players an exciting selection of different racing options. It stands as a departure from Codemasters’ most recent successes in the simulation space, and perhaps doesn''t quite reach the same heights that its deeper games reach. Nonetheless, those who want plug-in-and-play action with the ability to amp up the difficulty at a moment''s notice will find a lot to enjoy.
 <br>
<br>
    <img src="https://static3.srcdn.com/wordpress/wp-content/uploads/2019/10/GRID-Renault-R26.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
<br>
<p>
GRID''s other key selling point is an emphasis on working with a teammate. During the race, players can ask their teammate to drive defensively or aim for overtakes, and outside of the races users can choose to upgrade to a different teammate. From a gameplay perspective it doesn''t really add that much, but it’s an interesting mechanic nonetheless, even if it''s not a required part of the game.
</p>', CAST(N'2019-10-08T00:00:00.000' AS DateTime), N'Spammer', N'ScreenRant', CAST(N'2019-10-08T00:00:00.000' AS DateTime), CAST(N'2019-10-08T00:00:00.000' AS DateTime), N'Reviews', 20)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (9, N'The VENOM Black Panther May Be Wakanda''s Next King', N'The Black Panther of Marvel Comics has been cast across the universe into the previously unknown Intergalactic Empire of Wakanda', N'<img src="https://static0.srcdn.com/wordpress/wp-content/uploads/2019/10/Black-Panther-Venom-Comic-Cover.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
The Black Panther of Marvel Comics has been cast across the universe into the previously unknown Intergalactic Empire of Wakanda--the result of a scouting group sent through space millennia in the past, which grew into a might empire. And eventually found its greatest ruler in the fearsome Emperor N''Jadaka. An emperor joined with a Venom-like symbiote who has now set his sights on the throne of the Black Panther, right here on Earth.
<br>
Having defeated Emperor N''Jadaka in outer space, T''Challa has returned to Earth, and to his country. Unfortunately the most recent Black Panther #16 has revealed that not only has the symbiote made its way back to Earth among T''Challa''s forces, it''s now infiltrated Wakanda itself in the form of Changamire--T''Challa''s trusted teacher. And before anyone starts hoping that T''Challa will uncover the truth of Emperor N''Jadaka''s symbiote in time to foil his plan, we should warn that the plot synopses for the coming issues tell a very different, very disturbing story.
<br>
    </p>
    <br>
    <img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/09/Venom-Hulk-Marvel-Comic-Design.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height =376>
    <p>
<br>
There have been several famous Klyntar symbiotes in Marvel''s Universe, but the one belonging to Emperor N''Jadaka could end up becoming one of the most important. Whether or not it stays on the throne, the creature is guaranteed to give T''Challa the fight of his life. Only this time, he won''t be able to blow up an entire planet to try to kill the Emperor. He''ll have to do it by hand.
 <br>', CAST(N'2019-10-07T00:00:00.000' AS DateTime), N'Bojack Horseman', N'Marvel', CAST(N'2019-10-07T00:00:00.000' AS DateTime), CAST(N'2019-10-07T00:00:00.000' AS DateTime), N'Marvel', 20)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (10, N'Tales From The Dark Multiverse: KNIGHTFALL Writers Finally Break Batman', N'When DC''s Metal introduced readers to the Dark Multiverse, it was obvious the concept had far too much potential for just a single series.', N'<img src="https://static3.srcdn.com/wordpress/wp-content/uploads/2019/10/Batman-Dark-Multiverse-Knightfall.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
When DC''s Metal introduced readers to the Dark Multiverse, it was obvious the concept had far too much potential for just a single series. Now that roiling sea of alternate realities too violent, too grim, too hopeless to ever survive is being given its own line prestige one-shots. These standalone stories ask the same question: what if a pivotal or iconic DC storyline had turned out differently? And it''s officially begun, with the release of Tales From The Dark Multiverse: Knightfall #1.
<br>
<br>
Having defeated Emperor N''Jadaka in outer space, T''Challa has returned to Earth, and to his country. Unfortunately the most recent Black Panther #16 has revealed that not only has the symbiote made its way back to Earth among T''Challa''s forces, it''s now infiltrated Wakanda itself in the form of Changamire--T''Challa''s trusted teacher. And before anyone starts hoping that T''Challa will uncover the truth of Emperor N''Jadaka''s symbiote in time to foil his plan, we should warn that the plot synopses for the coming issues tell a very different, very disturbing story.
<br>
<br>
    </p>
    <img src="https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Tales-Dark-Multiverse-Knightfall-Jean-Paul-Valley.jpg?q=50&amp;fit=crop&amp;w=738&amp;h=1101&amp;dpr=1.5" width="738" height="376">
    <p>
<br>
SS: What I always say is we try to construct things that don''t require you to read beyond the issue itself. So hopefully even if you don''t know who Tempus is, you can get a sense from this and not feel in any way lost. We''re hoping that’s sufficient. But I always say, one of the things that we’re proudest of right now at DC is that we''re trying really hard to build one connected universe. The stuff that we started in Metal in 2017 really comes to a head this year in Justice League, as the story is ramping up to the end now. And more in Batman/Superman with what Josh [Williamson] is building, and what James [Tynion] is going to build in Batman, and in Hell Arisen at the end of Year of the Villain. It''s all connected. The hope is that you’ll read it and won''t feel left out at all by seeing Tempus in there. But you''ll be able to go read Flash Forward, you''ll be able to go read whatever else to get a bigger picture of this expansive tapestry, this immersive, giant soap opera we’re telling that''s going to end in something really huge in 2020.
 <br>
<br>
    <img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Batman-Dark-Multiverse-Knightfall-Comic.jpg?q=50&amp;fit=crop&amp;w=738&amp;h=1134&amp;dpr=1.5" width="738" height="376">
<br>
</p><p>
SS: Yeah... I think they should read a lot into it! These books are not meant to be--we don''t want to mislabel them, or position them in any kind of false way as a ‘prelude’ to a giant Crisis or anything like that. But what they speak to in terms of something coming, I think it''s been a drum beat that you''ll see, again, across the DCU. Both in Year of the Villain and Hell Arisen’s ending, and Batman, and Justice League, and a lot of the things that were doing in the whole line. We are planning something really big, and a giant story.
</p>', CAST(N'2019-10-16T00:00:00.000' AS DateTime), N'Eggs', N'DC', CAST(N'2019-10-16T00:00:00.000' AS DateTime), CAST(N'2019-10-16T00:00:00.000' AS DateTime), N'DC', 25)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (11, N'When In Breaking Bad El Camino''s Flashbacks Are Set', N'When is each El Camino: A Breaking Bad Movie flashback set in relation to the wider timeline of the TV series? The highly-anticipated Breaking Bad movie premiered on Netflix earlier this month to a predominantly positive reception.', N'<img src="https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Aaron-Paul-as-Jesse-Pinkman-in-Breaking-Bad.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
When is each El Camino: A Breaking Bad Movie flashback set in relation to the wider timeline of the TV series? The highly-anticipated Breaking Bad movie premiered on Netflix earlier this month to a predominantly positive reception, hailed as a fitting epilogue to one of the greatest television series of all time.
<br>
<br>
El Camino is set in the immediate aftermath of Breaking Bad''s final episode and focuses on Jesse Pinkman as he attempts to escape the authorities and start a new life away from the mess created by Walter White in "Felina." Generally speaking, El Camino is a sequel to Breaking Bad that takes place in the days following the conclusion of the original story, however, Vince Gilligan makes liberal use of flashback sequences in order to provide new context to the characters and reintroduce some familiar faces without resurrecting anyone from the dead.
<br>
<br>
    </p>
    <img src="https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/el-camino-jesse-mike.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
    <p>
<br>
El Camino opens with Jesse standing on a riverbank alongside Mike Ehrmantraut - a somewhat jarring first image considering Mike was killed by Walt in Breaking Bad''s final season. Before the audience can properly begin to ponder how Mike could''ve survived, it transpires that this scene is actually set within Breaking Bad''s timeline. Mike and Jesse discuss being "out" of the meth business, and what Jesse specifically should do with his life next. It''s here that Pinkman first gets the idea of heading to Alaska. The two associates also make a passing reference to a tragedy that can''t be made right, which is likely Todd''s murder of a young boy who happened to sight the gang after they pulled off a train heist.
 <br>
<br>
    <img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Aaron-Paul-as-Jesse-Pinkman-and-Jesse-Plemmons-as-Todd-El-Camino.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
<br>
<p>
In theory, Jesse and Jane could''ve gone driving at almost any time, but in episode 11 of Breaking Bad''s second season ("Mandala") Jesse suggests that he and Jane take a trip to a museum in Santa Fe. The audience never see the couple actually go on this drive, but the El Camino: A Breaking Bad Movie flashback could be plugging the narrative gap.
</p>


', CAST(N'2019-10-19T00:00:00.000' AS DateTime), N'Spammer', N'ScreenRant', CAST(N'2019-10-19T00:00:00.000' AS DateTime), CAST(N'2019-10-19T00:00:00.000' AS DateTime), N'Reviews', 20)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (12, N'Evidence Loki Really Was Being Mind-Controlled In The Avengers', N'A scene in The Avengers provides further evidence that Loki (Tom Hiddleston) was actually being mind-controlled when he engineered the Chitauri invasion and what has been dubbed as the Battle of New York.', N'<img src="https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Loki-in-The-Avengers-and-Thanos-in-Endgame.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
A fan has pointed out on Reddit that in the scene where Loki stabs Thor (Chris Hemsworth) in The Avengers, Loki can be seen with tears in his eyes. His apparent remorse for his actions suggests that Loki isn''t completely evil, despite all the harm he''s willing to inflict on the planet and his attempt to murder his brother. Or, Loki could be genuinely sad because he actually had no desire to stab Thor in the first place. It could also be that he was acting against his will.
<br>
Following his defeat in Thor, Loki makes an arrangement with Thanos to lead an army of Chitauri to Earth. One of the six Infinity Stones, the Mind Stone, is placed in a scepter wielded by Loki. Armed with his scepter, Loki is able to take control of Hawkeye (Jeremy Renner), Eric Selvig (Stellan Skarsgard), and others, and forces them to do his bidding. Loki''s scheme unites the heroes of the MCU for the first time. After Loki is captured, the Avengers later learn that the true mastermind behind the attack was Thanos.
<br>
    </p>
    <br>
    <img src="https://static3.srcdn.com/wordpress/wp-content/uploads/2019/10/Loki-Avengers.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
    <p>
<br>
Thanos'' main ambition was to gather the Infinity Stones. Would Thanos really be willing to hand over the Mind Stone to a lackey who could betray him? He wouldn''t have parted with it unless he knew he''d get it back. If Loki was his puppet, he could be sure that Loki would do exactly what he asked. The idea that Loki was being manipulated is reinforced by Marvel''s description of Loki on their website, which states that "Unbeknownst to him, the scepter was influencing him, fueling his hatred over his brother Thor and the inhabitants of Earth."
 <br>', CAST(N'2019-10-18T00:00:00.000' AS DateTime), N'Bacon', N'Marvel', CAST(N'2019-10-18T00:00:00.000' AS DateTime), CAST(N'2019-10-18T00:00:00.000' AS DateTime), N'Marvel', 25)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (15, N'Shawshank Redemption Cinematographer Hates The Movie''s Most Iconic Shot', N'The Shawshank Redemption''s cinematographer hates the movie’s most iconic shot. The 1994 prison drama is repeatedly lauded as one of the best Hollywood films of all time, receiving 7 Oscar nominations but failing to collect on any of them.', N'<img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Shawshank.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
The Shawshank Redemption''s cinematographer hates the movie’s most iconic shot. The 1994 prison drama is repeatedly lauded as one of the best Hollywood films of all time, receiving 7 Oscar nominations but failing to collect on any of them.
<br>
Despite its lack of Oscar victories, Shawshank has maintained a substantial following over time, remaining firmly in the top spot of IMDb’s top 250 movies of all time for years and solidifying itself as the most successful film of director Frank Darabont’s career. The film packs a lot of emotion into its two and a half hour running time and this is likely a major reason for its popularity. After being wrongly convicted of killing his wife, former accountant Andy Dufresne (Tim Robbins) is sent to prison, where he encounters the day to day horrors of incarceration, and befriends a solid crew of convicts, including Red (Morgan Freeman). There are numerous memorable moments and shots in the film, which frequently deals with themes of loss, isolation, friendship and, of course, redemption.
<br>
    </p>
    <br>
    <img src="https://static3.srcdn.com/wordpress/wp-content/uploads/2018/08/Shawshank-Redemption.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
    <p>
<br>
Fans of Shawshank are unlikely to be as critical about the scene, and for all Deakins’ talk of over-lighting such a pivotal moment, it clearly hasn’t harmed the film’s success or staying power in any significant way. Also, given that Deakins was nominated for an Oscar for his cinematography on Shawshank, it’s obvious that critical opinion doesn’t seem to hold any grudges over how the lighting was handled in what could arguably be regarded as the film’s most significant point. For his part, Deakins appears to be an artist who is his own worst critic. Shawshank has been described by some as a perfect film, and although Deakins might disagree with that, there’s no denying what the film has achieved and what it means to many.
 <br>', CAST(N'2019-10-18T00:00:00.000' AS DateTime), N'Eggs', N'ScreenRant', CAST(N'2019-10-18T00:00:00.000' AS DateTime), CAST(N'2019-10-18T00:00:00.000' AS DateTime), N'Reviews', 20)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (16, N'Star Wars: Orange Lightsabers Are Now Canon
', N'Lightsaber blades in Star Wars have come in many colors over the years, but it’s taken until now for them to be canonically available in orange.', N'<img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Jedi-Fallen-Order-Orange-Lightsaber-Key-art.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
Lightsaber blades in Star Wars have come in many colors over the years, but it’s taken until now for them to be canonically available in orange. The most common color of lightsaber blades have been blue and green for the Jedi and red for the Sith and Dark Jedi, a choice initially made in post production of A New Hope when the weapons’ reflective rods were rotoscoped with different colors to make them stand out against each other in duels.
<br>
Other colors have cropped up over the years, such as in The Clone Wars when Ahsoka Tano began using a shorter shoto lightsaber as an off-hand weapon its blade was yellow, then later in Rebels when she unveiled exactly how far she’s levelled up in the 15 years since she left the Jedi, dual-wielding a pair of pure white lightsabers as she kerb-stomps the Inquisitors Fifth Brother and Seventh Sister in a fight defending Kanan, Ezra and Zeb. The most significant departure was in Attack of the Clones where Mace Windu wields a purple lightsaber, on account of Samuel L Jackson’s desire to stand out in the frantic melee of the First Battle of Geonosis, and the characters he plays in films often incorporating purple somewhere in their costume or props due to it being his favorite color.
<br>
    </p>
    <br>
    <img src="https://i.ytimg.com/vi/zjrXc8VQj_A/maxresdefault.jpg" width =738 height =376>
    <p>
<br>
The orange blade is one of a few incentives to pre-order the game. Also included are special lightsaber hilts for campaigns on Umbara (featured in a four-episode arc in season 4 of The Clone Wars where the Jedi and Separatists battle for control of the strategic planet) and Mygeeto (fought over for the entirely of the Clone War and featured in the climax of Revenge of the Sith), as well as skin for BD-1, Cal’s droid companion whose appearance is not entirely dissimilar to WALL-E.
 <br>', CAST(N'2019-10-18T00:00:00.000' AS DateTime), N'Banama Jackson', N'ScreenRant', CAST(N'2019-10-18T00:00:00.000' AS DateTime), CAST(N'2019-10-18T00:00:00.000' AS DateTime), N'StarWars', 20)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (17, N'Eternals Could Reveal the Origin Story of Knowhere', N'One of the biggest mysteries set up by the Marvel Cinematic Universe is the origin of Knowhere, a giant decapitated head that doubles as a space station for the scum of the universe.', N'<img src="https://static0.srcdn.com/wordpress/wp-content/uploads/2019/10/Knowhere-Origin-Celestials-Eternals.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
One of the biggest mysteries set up by the Marvel Cinematic Universe is the origin of Knowhere, a giant decapitated head that doubles as a space station for the scum of the universe, and fans are now hoping that the impending release of Marvel’s Eternals may finally shed some light on the subject. First discussed as a possible Phase 4 film by Kevin Feige in April 2018, and later confirmed as such at San Diego Comic-Con 2019, the Eternals movie will supposedly span thousands of years, from the very beginnings of the Marvel Universe all the way to present day.
<br>
<br>
Directed by Chloé Zhao, Eternals will feature a new group of superbeings, more ancient and powerful than the MCU’s current host of heroes. The all-star cast includes Richard Madden, Salma Hayek, Angelina Jolie, Don Lee, Gemma Chan, and Barry Keoghan as the titular entities. As explained in Marvel Comics, the Eternals were seeded into humankind thousands of years ago by cosmic entities known as the Celestials - some of whom have already appeared in Marvel movies.
<br>
<br>
    </p>
    <img src="https://static3.srcdn.com/wordpress/wp-content/uploads/2018/07/Guardians-Of-The-Galaxy-Knowhere-e1531431075360.jpg?q=50&fit=crop&w=738&h=354&dpr=1.5" width =738 height =376>
    <p>
<br>
Beyond these two entities, only one other Celestial has figured prominently into the MCU. Or rather, part of them has figured prominently - that being the aforementioned skull floating through space. It was first seen in Guardians of the Galaxy Vol. 1, when the Guardians take refuge inside of Knowhere, which acts as an immense spaceport and mining colony on the edges of the known Universe. Gamora explains that Knowhere is "the severed head of an ancient Celestial being." It is also home to Benicio del Toro''s The Collector, who set up shop inside the head in order for his mining company to dig the organic tissue out of its skull, which apparently fetches a high price on the black market.
 <br>
<br>
    <img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/09/Eternals-Tomb-of-the-Space-Gods.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
<br>
<p>
It seems a wholly new death for Knowhere would be required for an on-screen portrayal in the MCU. The most probable explanation for Knowhere''s decapitation is one where it was done for the greater good. As mentioned, Knowhere and the other Celestials represent a great threat to Earth in the case of their disapproval with the Eternals and their charge over the planet, and it has already been shown in the MCU that just two Celestials could spell the destruction of the entire Universe. This is why Ego sought out Starlord in Guardians of the Galaxy Vol. 2. With the extra power siphoned from his son, Ego was able to implement his "Expansion" - a.k.a. destroying all life in the Universe and remaking it to his own designs. Perhaps this is why Ego was the only surviving Celestial left in the modern day MCU; maybe all the other Celestials, including Knowhere, were killed to prevent the kind of cosmic cataclysm that was demonstrated in Guardians 2. It would certainly be the sort of Avengers-level threat that a movie like Eternals would need for a satisfyingly grand finale.
</p>', CAST(N'2019-10-19T00:00:00.000' AS DateTime), N'Bojack Horseman', N'ScreenRant', CAST(N'2019-10-19T00:00:00.000' AS DateTime), CAST(N'2019-10-19T00:00:00.000' AS DateTime), N'Reviews', 25)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (18, N'The Lighthouse Ending and Real Meaning Explained', N'With The Lighthouse, director Robert Eggers gives audiences a follow-up to The Witch that is weirder, more creative, and full of farts - and it all careens towards a suitable wild ending.', N'<img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/The-Lighthouse-Ending-Explained.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
With The Lighthouse, director Robert Eggers gives audiences a follow-up to The Witch that is weirder, more creative, and full of farts - and it all careens towards a suitable wild ending. In 2015, Robert Eggers made a serious splash with his directorial debut, the historical horror film The Witch. Released by A24 the following year, the movie made back ten times its $4 million budget and was widely declared to be not only one of the best horror films of the year, but one of the scariest movies ever made. Eggers set himself a serious challenge in creating a sophomore title that would live up to those lofty expectations while being entirely its own thing. Fortunately, with The Lighthouse, he''s done that and then some.
<br>
<br>
The Lighthouse premiered in Director’s Fortnight at the 2019 Cannes Film Festival, where it won the International Federation of Film Critics prize. Once again distributed by A24, the movie has racked up plenty of critical acclaim, and it remains one of the year''s most delightfully bizarre and endlessly creative movies. The story follows two lighthouse keepers who are forced to work together for several weeks at an isolated lighthouse separated from civilization. Thomas Wake (Willem Dafoe) is the cranky old-hand who adheres to superstition and drinks heavily. Ephraim Winslow (Robert Pattinson) is new to the job and has little time for its endless drudgery or the company of his colleague. It doesn''t take long for paranoia, delusions, and an understandable fear of seagulls to kick in.
<br>
<br>
    </p>
    <img src="https://static0.srcdn.com/wordpress/wp-content/uploads/2019/10/Robert-Pattinson-in-The-Lighthouse.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
    <p>
<br>
The lion’s share of the tension in The Lighthouse comes from the relationship between Wake and Winslow, which turns from friendly to sinister on a dime. Wake seems slightly off-kilter but largely used to the monotony of lighthouse keeping, whereas Winslow is easily agitated by what he thought would be a much simpler job. Slowly, it becomes clear to Winslow that Wake may have gone mad during their shift if he wasn''t already mad to begin with. Wake seems worshipful, even sexually obsessed, with the light of the lighthouse, which he refuses to let Winslow near, something that becomes another source of tension between them.
 <br>
<br>
    <img src="https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/The-Lighthouse-Cropped.jpg?q=50&fit=crop&w=738&h=369&dpr=1.5" width =738 height =376>
<br>
<p>
No auteur is too good for a fart joke, and Robert Eggers happily drives that point home in The Lighthouse. Amid the unnerving tone, the hallucinogenic leaps of logic, and the leads’ descents into madness, Willem Dafoe’s character is also a chronic farter (the actor claims that the split between real farts and ones added in post-production is about half and half). It’s one of the things that drives Winslow round the bend, perhaps even more so than the possible gaslighting and endless drudgery of his occupation. There may be a deeper thematic reason for all the farts, but the main reason they’re there is that Eggers finds them funny!
</p>', CAST(N'2019-10-19T00:00:00.000' AS DateTime), N'Eggs', N'ScreenRant', CAST(N'2019-10-19T00:00:00.000' AS DateTime), CAST(N'2019-10-19T00:00:00.000' AS DateTime), N'Reviews', 25)
INSERT [dbo].[NewsArticles] ([Id], [HeadLine], [Description], [Text], [PublishDate], [Author], [Source], [CreatedDate], [LastModifiedDate], [Tags], [Priority]) VALUES (19, N'New Star Wars 9 Trailer Officially Confirmed For Monday', N'The next Star Wars: The Rise of Skywalker trailer is confirmed to premiere on Monday, October 21. To this point, the studio has run one of their trademark measured marketing campaigns.', N'<img src="https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Star-Wars-9-Resistance-First-Order-banner.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height=376>
<p>
<br>
The next Star Wars: The Rise of Skywalker trailer is confirmed to premiere on Monday, October 21. To this point, the studio has run one of their trademark measured marketing campaigns, unveiling just enough materials to pique interest without revealing too much of the story. Even though there are only about two months remaining until Star Wars 9 hits theaters, many of the plot details have been kept under wraps to this point. In classic Star Wars fashion, the teasers seen so far have provided fodder for theorizing, rather than answering burning questions.


<br>
In all likelihood, Lucasfilm is going to keep all of Star Wars 9''s most prominent twists and turns close to the chest until December. At the same time, the promotional blitz needs to kick off as we enter the homestretch before the film''s premiere. Earlier this month, the first wave of tie-in merchandise hit store shelves during Triple Force Friday, but what fans really want to see is a new trailer. Now, Disney''s gone ahead and confirmed when one will premiere.
<br>
    </p>
    <br>
    <img src="https://static0.srcdn.com/wordpress/wp-content/uploads/2019/05/Adam-Driver-and-Daisy-Ridley-in-Star-Wars-The-Rise-of-Skywalker-cropped.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5" width =738 height =376>
    <p>
<br>
Over the past few weeks, there were multiple rumors regarding the Star Wars 9 trailer release date, so it''s nice to have some much-needed clarity on the situation. Since The Force Awakens and The Last Jedi both received final trailers in October of their respective years of release, the expectation is The Rise of Skywalker would follow suit - it was just a matter of which Monday would be the day. Some people thought October 14 made sense, so the trailer could be attached to screenings of Disney''s Maleficent: Mistress of Evil, but the studio opted to hold off for one more week. The latest Star Wars 9 trailer will still be out in time to play in front of some of the fall''s most-anticipated titles, like Terminator: Dark Fate and Frozen II. One would imagine The Rise of Skywalker tickets will also go on sale October 21, shortly after the trailer airs on ESPN - especially since some theaters are already listing showtimes.
 <br>', CAST(N'2019-10-18T00:00:00.000' AS DateTime), N'Spammer', N'ScreenRant', CAST(N'2019-10-18T00:00:00.000' AS DateTime), CAST(N'2019-10-18T00:00:00.000' AS DateTime), N'Reviews', 25)
SET IDENTITY_INSERT [dbo].[NewsArticles] OFF
SET IDENTITY_INSERT [dbo].[NewsImage] ON 

INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (1, 310, 190, N'https://static3.srcdn.com/wordpress/wp-content/uploads/2019/09/Spider-Man-with-Venom-and-Kevin-Feige.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 1, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (2, 290, 195, N'https://static3.srcdn.com/wordpress/wp-content/uploads/2019/09/Spider-Man-with-Venom-and-Kevin-Feige.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 1, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (3, 310, 190, N'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Joaquin-Phoenix-walking-off-Joker-set.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 2, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (4, 290, 195, N'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Joaquin-Phoenix-walking-off-Joker-set.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 2, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (5, 310, 190, N'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Todd-Phillips-Joker-Movie-With-Joaquin-Phoenix.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 3, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (6, 290, 195, N'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Todd-Phillips-Joker-Movie-With-Joaquin-Phoenix.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 3, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (7, 310, 190, N'https://static2.srcdn.com/wordpress/wp-content/uploads/2017/11/Star-Wars-The-Last-Jedi-Kylo-Ren-helmet.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 4, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (8, 290, 195, N'https://static2.srcdn.com/wordpress/wp-content/uploads/2017/11/Star-Wars-The-Last-Jedi-Kylo-Ren-helmet.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 4, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (9, 310, 190, N'https://static3.srcdn.com/wordpress/wp-content/uploads/2019/09/Saitama-One-Punch-Man-manga.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 5, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (10, 290, 195, N'https://static3.srcdn.com/wordpress/wp-content/uploads/2019/09/Saitama-One-Punch-Man-manga.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 5, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (11, 310, 190, N'https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Star-Wars-Last-Jedi-Resistance-Ships.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 6, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (12, 290, 195, N'https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Star-Wars-Last-Jedi-Resistance-Ships.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 6, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (13, 310, 190, N'https://static0.srcdn.com/wordpress/wp-content/uploads/2019/10/GRID-2019-Review.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 7, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (14, 290, 195, N'https://static0.srcdn.com/wordpress/wp-content/uploads/2019/10/GRID-2019-Review.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 7, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (15, 310, 190, N'https://static0.srcdn.com/wordpress/wp-content/uploads/2019/10/Black-Panther-Venom-Comic-Cover.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 9, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (16, 290, 195, N'https://static0.srcdn.com/wordpress/wp-content/uploads/2019/10/Black-Panther-Venom-Comic-Cover.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 9, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (17, 310, 190, N'https://static3.srcdn.com/wordpress/wp-content/uploads/2019/10/Batman-Dark-Multiverse-Knightfall.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 10, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (18, 290, 195, N'https://static3.srcdn.com/wordpress/wp-content/uploads/2019/10/Batman-Dark-Multiverse-Knightfall.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 10, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (19, 310, 190, N'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Aaron-Paul-as-Jesse-Pinkman-in-Breaking-Bad.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 11, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (20, 290, 195, N'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Aaron-Paul-as-Jesse-Pinkman-in-Breaking-Bad.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 11, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (21, 310, 190, N'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Loki-in-The-Avengers-and-Thanos-in-Endgame.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 12, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (22, 290, 195, N'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Loki-in-The-Avengers-and-Thanos-in-Endgame.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 12, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (23, 310, 190, N'https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Shawshank.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 15, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (24, 290, 195, N'https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Shawshank.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 15, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (25, 310, 195, N'https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Jedi-Fallen-Order-Orange-Lightsaber-Key-art.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 16, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (26, 290, 195, N'https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Jedi-Fallen-Order-Orange-Lightsaber-Key-art.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 16, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (27, 310, 190, N'https://static0.srcdn.com/wordpress/wp-content/uploads/2019/10/Knowhere-Origin-Celestials-Eternals.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 17, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (28, 290, 195, N'https://static0.srcdn.com/wordpress/wp-content/uploads/2019/10/Knowhere-Origin-Celestials-Eternals.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 17, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (29, 310, 190, N'https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/The-Lighthouse-Ending-Explained.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 18, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (30, 290, 195, N'https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/The-Lighthouse-Ending-Explained.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 18, 2)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (31, 310, 190, N'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Star-Wars-9-Resistance-First-Order-banner.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 19, 1)
INSERT [dbo].[NewsImage] ([Id], [PhotoWidth], [PhotoHeight], [PhotoUrl], [ArticlePhotoId], [Type]) VALUES (32, 290, 195, N'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Star-Wars-9-Resistance-First-Order-banner.jpg?q=50&fit=crop&w=798&h=407&dpr=1.5', 19, 2)
SET IDENTITY_INSERT [dbo].[NewsImage] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (1, N'Ghế Đơn', 1)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (2, N'Ghế Đôi', 1)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (3, N'Ghế Tình yêu', 1)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (4, N'Ghế Nghệ', 1)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (5, N'Ghế Solo', 1)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (7, N'Giường Nằm', 1)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (8, N'Đứng xem', 1)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (9, N'Bắp Nước', 2)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (10, N'Bắp Nước Vừa', 2)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (11, N'Bắp Nước To', 2)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (12, N'Bắp Nước KHỔNG LỒ', 2)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (13, N'Bắp Bò', 2)
INSERT [dbo].[Product] ([Id], [Name], [Type]) VALUES (14, N'Bắp Chuối', 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCinema] ON 

INSERT [dbo].[ProductCinema] ([Id], [IdCinema], [IdProduct], [Price]) VALUES (1, 1, 1, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[ProductCinema] ([Id], [IdCinema], [IdProduct], [Price]) VALUES (2, 1, 2, CAST(22000 AS Decimal(18, 0)))
INSERT [dbo].[ProductCinema] ([Id], [IdCinema], [IdProduct], [Price]) VALUES (3, 1, 3, CAST(23000 AS Decimal(18, 0)))
INSERT [dbo].[ProductCinema] ([Id], [IdCinema], [IdProduct], [Price]) VALUES (4, 1, 4, CAST(24000 AS Decimal(18, 0)))
INSERT [dbo].[ProductCinema] ([Id], [IdCinema], [IdProduct], [Price]) VALUES (5, 1, 5, CAST(25000 AS Decimal(18, 0)))
INSERT [dbo].[ProductCinema] ([Id], [IdCinema], [IdProduct], [Price]) VALUES (7, 1, 7, CAST(27000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ProductCinema] OFF
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Id], [IdShowTime], [Amount], [Name]) VALUES (1, 1, 120, N'A')
INSERT [dbo].[Room] ([Id], [IdShowTime], [Amount], [Name]) VALUES (2, 2, 130, N'B')
INSERT [dbo].[Room] ([Id], [IdShowTime], [Amount], [Name]) VALUES (3, 3, 140, N'C')
INSERT [dbo].[Room] ([Id], [IdShowTime], [Amount], [Name]) VALUES (4, 4, 150, N'D')
SET IDENTITY_INSERT [dbo].[Room] OFF
SET IDENTITY_INSERT [dbo].[RoomDetail] ON 

INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (2, 1, 1, 1, N'f0f32d6c-36d1-4ae8-b89d-e058598fa421', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (3, 1, 1, 2, N'e428aa96-6610-4980-a7b8-4254d57e6e03', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (4, 1, 1, 3, N'397731ff-757e-4bc0-ae35-40dc6f351802', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (5, 1, 1, 4, N'26ff9afc-ab3a-4780-a631-d8bab2f88148', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (6, 1, 1, 5, N'318faa0e-bde9-449a-a735-b93915a5c917', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (7, 1, 1, 6, N'631c0f4d-ea52-4a09-a2e7-4204253c084f', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (8, 1, 1, 7, N'2c88114c-e963-42a3-afe6-a8b92bd981ac', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (9, 1, 1, 8, N'574b8c4a-3edc-4ced-9b42-a76441b3dbd4', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (11, 1, 1, 9, N'021246be-0ccf-40b5-9296-e05080ceb68b', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (12, 1, 1, 10, N'a57e0e0f-61cb-409c-96b7-f98c33a530e9', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (13, 1, 2, 1, N'0b8dc702-e4cf-4960-90c3-eb031512c39d', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (14, 1, 2, 2, N'7de67747-b028-4440-afea-0843b8e8615c', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (15, 1, 2, 3, N'7219e90c-7011-4682-9eb1-b1bf7b3179b1', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (16, 1, 2, 4, N'f97a3ba5-774a-42b5-b135-b05725612f38', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (17, 1, 2, 5, N'da8cd0b6-53bd-45b5-840f-acc21c4a568b', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (18, 1, 2, 6, N'6ecb3776-8091-47cf-b443-3ae0382db78d', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (19, 1, 2, 7, N'5f595550-13ab-4e63-8500-7e808d5dec36', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (20, 1, 2, 8, N'71bacafb-d190-48cb-aa22-178d3f723ce6', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (21, 1, 2, 9, N'935ecdce-f207-4db0-beae-632c9fb7d59f', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (22, 1, 2, 10, N'17549c41-c176-4e21-8e49-af2e055647f6', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (23, 1, 3, 1, N'4c582599-7485-46d7-befa-4eb76c6975c6', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (24, 1, 3, 2, N'bf47eae4-c03e-497e-9876-03a4ce048a5e', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (25, 1, 3, 3, N'08735f8e-c45b-4bc5-96f9-f22d2ef13d89', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (26, 1, 3, 4, N'80607a3c-13a1-4164-93d6-46886e58f022', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (27, 1, 3, 5, N'63a875cb-d0b5-4ee3-a957-de9f09c27d51', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (28, 1, 3, 6, N'fae8ec80-c336-461b-864e-71ae3a44eec0', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (29, 1, 3, 7, N'029c32c1-3311-4676-b173-4fba1db3821a', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (30, 1, 3, 8, N'53dd524c-c2b8-4fdd-8585-c77e6599ebb1', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (31, 1, 3, 9, N'a565b45a-099f-4e8d-a641-1c6db22e5e7e', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (32, 1, 3, 10, N'5f6a1d9f-b8a9-42c0-8b62-20f702855b7b', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (33, 1, 4, 1, N'466f3de1-9ebc-454f-b728-df6a6fc49418', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (34, 1, 4, 2, N'd490761b-34cb-408a-b5be-7f6222f6d47a', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (35, 1, 4, 3, N'd016039a-d3d5-4bce-b40c-ad04cd18df41', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (36, 1, 4, 4, N'e2f44893-35bf-4b52-92f4-00f88fa106e6', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (37, 1, 4, 5, N'42c12b83-4aac-45bf-b777-9bdb1257e128', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (38, 1, 4, 6, N'8837bfdc-4db9-4135-a4aa-edae48d14c91', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (39, 1, 4, 7, N'ce5259b6-b4ba-4f0a-8ba9-2d7c12ea532c', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (40, 1, 4, 8, N'383184b8-a504-4114-93e3-58c520351f68', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (41, 1, 4, 9, N'fa07990c-9c87-4def-9824-4c415cfc48f6', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (42, 1, 4, 10, N'8b12a919-c714-401b-a5d5-fba9dba1ee5e', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (43, 1, 5, 1, N'37776387-2b03-46de-9ba1-8e4503e0ac04', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (44, 1, 5, 2, N'd95c9da1-1748-4bfb-baf8-898138af22df', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (45, 1, 5, 3, N'8886c2c1-58ec-4464-a4bb-9406e6d34793', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (46, 1, 5, 4, N'a7e56773-a8c1-4cac-be20-705b4b658183', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (47, 1, 5, 5, N'5f5e847e-9d4f-479e-85de-69f0a71fc018', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (48, 1, 5, 6, N'423e72cf-1629-4135-b527-de98996049c1', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (49, 1, 5, 7, N'7ea5c07d-5a88-4cb0-8be8-58f701eb2477', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (50, 1, 5, 8, N'9ea768cf-1cdf-4343-97ab-636c2bf8c1d2', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (51, 1, 5, 9, N'0b03eb4f-b9b6-46a9-8d77-7c436eaa45c7', 1)
INSERT [dbo].[RoomDetail] ([Id], [IdRoom], [Column], [Row], [GUID], [IdProduct]) VALUES (52, 1, 5, 10, N'befdda0f-6502-4f51-b8e1-c951b6bbf219', 1)
SET IDENTITY_INSERT [dbo].[RoomDetail] OFF
SET IDENTITY_INSERT [dbo].[SeatType] ON 

INSERT [dbo].[SeatType] ([Id], [Type]) VALUES (1, N'Đơn')
INSERT [dbo].[SeatType] ([Id], [Type]) VALUES (2, N'Đôi')
INSERT [dbo].[SeatType] ([Id], [Type]) VALUES (3, N'Vip')
SET IDENTITY_INSERT [dbo].[SeatType] OFF
SET IDENTITY_INSERT [dbo].[ShowTime] ON 

INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (1, 10, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (2, 11, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 130)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (3, 12, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 140)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (4, 13, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 150)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (5, 17, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (6, 17, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (7, 17, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (8, 17, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (9, 13, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (10, 13, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (11, 13, CAST(N'13:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (12, 32, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (13, 32, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (14, 32, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (15, 32, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (16, 33, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (17, 33, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (18, 33, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (19, 33, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (20, 34, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (21, 34, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (22, 34, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (23, 34, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (24, 35, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (25, 35, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (26, 35, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (27, 35, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (28, 36, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (29, 36, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (30, 36, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (31, 36, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (32, 37, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (33, 37, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (34, 37, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (35, 37, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (36, 38, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (37, 38, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (38, 38, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (39, 38, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (40, 39, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (41, 39, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (42, 39, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (43, 39, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (44, 40, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (45, 40, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (46, 40, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (47, 40, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (48, 41, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (49, 41, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (50, 41, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (51, 41, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (52, 42, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (53, 42, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (54, 42, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (55, 42, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (56, 43, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (57, 43, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (58, 43, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (59, 43, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (60, 44, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (61, 44, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (62, 44, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (63, 44, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (64, 45, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (65, 45, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (66, 45, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (67, 45, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (68, 46, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (69, 46, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (70, 46, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (71, 46, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (72, 47, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (73, 47, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (74, 47, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (75, 47, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (76, 48, CAST(N'09:30:00' AS Time), CAST(N'11:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (77, 48, CAST(N'11:30:00' AS Time), CAST(N'12:05:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (78, 48, CAST(N'12:05:00' AS Time), CAST(N'13:30:00' AS Time), 120)
INSERT [dbo].[ShowTime] ([Id], [IdBookingDetail], [TimeStart], [TimeEnd], [Seat]) VALUES (79, 48, CAST(N'13:30:00' AS Time), CAST(N'14:10:00' AS Time), 120)
SET IDENTITY_INSERT [dbo].[ShowTime] OFF
ALTER TABLE [dbo].[NewsArticles] ADD  CONSTRAINT [DF__NewsArtic__autho__30F848ED]  DEFAULT (NULL) FOR [Author]
GO
ALTER TABLE [dbo].[NewsArticles] ADD  CONSTRAINT [DF__NewsArtic__sourc__31EC6D26]  DEFAULT (NULL) FOR [Source]
GO
ALTER TABLE [dbo].[NewsArticles] ADD  CONSTRAINT [DF__NewsArticl__tags__32E0915F]  DEFAULT (NULL) FOR [Tags]
GO
ALTER TABLE [dbo].[NewsArticles] ADD  CONSTRAINT [DF__NewsArtic__prior__33D4B598]  DEFAULT (NULL) FOR [Priority]
GO
ALTER TABLE [dbo].[NewsImage] ADD  DEFAULT (NULL) FOR [PhotoWidth]
GO
ALTER TABLE [dbo].[NewsImage] ADD  DEFAULT (NULL) FOR [PhotoHeight]
GO
ALTER TABLE [dbo].[RoomDetail] ADD  CONSTRAINT [DF__Room_Detai__GUID__607251E5]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [dbo].[RoomDetail] ADD  DEFAULT ((1)) FOR [IdProduct]
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK__Bill_Deta__Id_Bi__7755B73D] FOREIGN KEY([IdBill])
REFERENCES [dbo].[Bill] ([Id])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK__Bill_Deta__Id_Bi__7755B73D]
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Detail_Bill] FOREIGN KEY([IdBill])
REFERENCES [dbo].[Bill] ([Id])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK_Bill_Detail_Bill]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([IdRoomDetail])
REFERENCES [dbo].[RoomDetail] ([Id])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Room] FOREIGN KEY([IdRoom])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Room]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_SeatType] FOREIGN KEY([IdSeatType])
REFERENCES [dbo].[SeatType] ([Id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_SeatType]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Detail_Cinema] FOREIGN KEY([IdCinema])
REFERENCES [dbo].[Cinema] ([Id])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_Booking_Detail_Cinema]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Detail_Movie] FOREIGN KEY([IdMovie])
REFERENCES [dbo].[Movie] ([Id])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_Booking_Detail_Movie]
GO
ALTER TABLE [dbo].[NewsArticleCategories]  WITH CHECK ADD  CONSTRAINT [fk_artiID] FOREIGN KEY([NewsArticleId])
REFERENCES [dbo].[NewsArticles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsArticleCategories] CHECK CONSTRAINT [fk_artiID]
GO
ALTER TABLE [dbo].[NewsArticleCategories]  WITH CHECK ADD  CONSTRAINT [fk_cataID] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategories] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsArticleCategories] CHECK CONSTRAINT [fk_cataID]
GO
ALTER TABLE [dbo].[NewsImage]  WITH CHECK ADD  CONSTRAINT [fk_photo] FOREIGN KEY([ArticlePhotoId])
REFERENCES [dbo].[NewsArticles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsImage] CHECK CONSTRAINT [fk_photo]
GO
ALTER TABLE [dbo].[ProductCinema]  WITH CHECK ADD FOREIGN KEY([IdCinema])
REFERENCES [dbo].[Cinema] ([Id])
GO
ALTER TABLE [dbo].[ProductCinema]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Show_Time] FOREIGN KEY([IdShowTime])
REFERENCES [dbo].[ShowTime] ([Id])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Show_Time]
GO
ALTER TABLE [dbo].[RoomDetail]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ShowTime]  WITH CHECK ADD  CONSTRAINT [FK_Show_Time_Booking_Detail] FOREIGN KEY([IdBookingDetail])
REFERENCES [dbo].[BookingDetail] ([Id])
GO
ALTER TABLE [dbo].[ShowTime] CHECK CONSTRAINT [FK_Show_Time_Booking_Detail]
GO
