USE [Prueba]
GO
/****** Object:  Table [dbo].[tbl_Countries]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Countries](
	[Ctry_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ctry_Name] [varchar](150) NULL,
 CONSTRAINT [PK_tbl_Countries] PRIMARY KEY CLUSTERED 
(
	[Ctry_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Countries] ON
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (1, N'Argentina')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (2, N'Australia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (3, N'Belarus')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (4, N'Belgium')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (5, N'Bosnia and Herzegovina')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (6, N'Brazil')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (7, N'Bulgaria')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (8, N'Canada')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (9, N'Chile')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (10, N'China')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (11, N'Colombia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (12, N'Croatia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (13, N'Czech Republic')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (14, N'Estonia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (15, N'Finland')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (16, N'France')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (17, N'Germany')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (18, N'Greece')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (19, N'Hungary')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (20, N'India')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (21, N'Indonesia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (22, N'Iran')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (23, N'Ireland')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (24, N'Israel')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (25, N'Italy')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (26, N'Latvia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (27, N'Lithuania')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (28, N'Malaysia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (29, N'Mexico')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (30, N'Netherlands')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (31, N'Norway')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (32, N'Pakistan')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (33, N'Peru')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (34, N'Philippines')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (35, N'Poland')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (36, N'Portugal')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (37, N'Republic of Macedonia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (38, N'Romania')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (39, N'Russia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (40, N'Serbia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (41, N'Slovenia')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (42, N'South Korea')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (43, N'Spain')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (44, N'Sweden')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (45, N'Switzerland')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (46, N'Taiwan')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (47, N'Turkey')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (48, N'USA')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (49, N'Ukraine')
INSERT [dbo].[tbl_Countries] ([Ctry_ID], [Ctry_Name]) VALUES (50, N'United Kingdom')
SET IDENTITY_INSERT [dbo].[tbl_Countries] OFF
/****** Object:  Table [dbo].[tbl_Money_Types]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Money_Types](
	[Mny_ID] [int] IDENTITY(1,1) NOT NULL,
	[Country_ID] [int] NOT NULL,
	[Mny_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_MONEY_TYPES] PRIMARY KEY CLUSTERED 
(
	[Mny_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Money_Types] ON
INSERT [dbo].[tbl_Money_Types] ([Mny_ID], [Country_ID], [Mny_Name]) VALUES (3, 0, N'Gold')
INSERT [dbo].[tbl_Money_Types] ([Mny_ID], [Country_ID], [Mny_Name]) VALUES (4, 48, N'USD')
INSERT [dbo].[tbl_Money_Types] ([Mny_ID], [Country_ID], [Mny_Name]) VALUES (5, 29, N'MXN')
SET IDENTITY_INSERT [dbo].[tbl_Money_Types] OFF
/****** Object:  Table [dbo].[tbl_Items]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Items](
	[Item_ID] [int] NOT NULL,
	[Item_Name] [varchar](50) NULL,
	[ItemIDRawProduce] [int] NULL,
 CONSTRAINT [PK_tbl_Items] PRIMARY KEY CLUSTERED 
(
	[Item_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (1, N'Iron', NULL)
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (2, N'Grain', NULL)
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (3, N'Oil', NULL)
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (5, N'Wood', NULL)
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (6, N'Diamond', NULL)
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (7, N'Weapon', 1)
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (8, N'House', 5)
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (9, N'Gift', 6)
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (10, N'Food', 2)
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (11, N'Ticket', 3)
INSERT [dbo].[tbl_Items] ([Item_ID], [Item_Name], [ItemIDRawProduce]) VALUES (14, N'Estate', NULL)
/****** Object:  Table [dbo].[tbl_Regions]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Regions](
	[Region_ID] [int] IDENTITY(1,1) NOT NULL,
	[Country_ID] [int] NULL,
	[Region_Name] [varchar](150) NULL,
	[Region_OcupedBY] [int] NULL,
 CONSTRAINT [PK_tbl_Regions] PRIMARY KEY CLUSTERED 
(
	[Region_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Regions] ON
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (1, 48, N'Central USA', 48)
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (2, 48, N'Western USA', 48)
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (3, 48, N'USA Pacific Coast', 48)
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (4, 48, N'USA East Coast', 48)
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (5, 48, N'USA Gulf of Mexico', 48)
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (6, 48, N'Alaska', 48)
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (8, 29, N'The Bajio', 48)
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (9, 29, N'Mexico Pacific Coast', 48)
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (10, 29, N'Yucatan Peninsula', 48)
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (11, 29, N'Baja California', 48)
INSERT [dbo].[tbl_Regions] ([Region_ID], [Country_ID], [Region_Name], [Region_OcupedBY]) VALUES (12, 29, N'Northern Mexico', 48)
SET IDENTITY_INSERT [dbo].[tbl_Regions] OFF
/****** Object:  Table [dbo].[tbl_USERS]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_USERS](
	[Usr_id] [int] IDENTITY(1,1) NOT NULL,
	[Usr_Name] [nvarchar](50) NOT NULL,
	[Usr_Password] [nvarchar](50) NOT NULL,
	[Usr_BirthDay] [datetime] NOT NULL,
	[Usr_TotalTrainingSessions] [int] NULL,
	[Usr_TotalDamageDone] [int] NULL,
	[Usr_Strength] [int] NULL,
	[Usr_Citizenship] [int] NOT NULL,
	[Usr_Location] [int] NOT NULL,
	[Usr_Experience] [int] NULL,
	[Usr_EconomySkill] [int] NULL,
	[Usr_TitleJob] [nvarchar](50) NULL,
	[Usr_FoodLimit] [int] NULL,
	[Usr_GiftLimit] [int] NULL,
	[Usr_WorkDaysInRow] [int] NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[Usr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_USERS] ON
INSERT [dbo].[tbl_USERS] ([Usr_id], [Usr_Name], [Usr_Password], [Usr_BirthDay], [Usr_TotalTrainingSessions], [Usr_TotalDamageDone], [Usr_Strength], [Usr_Citizenship], [Usr_Location], [Usr_Experience], [Usr_EconomySkill], [Usr_TitleJob], [Usr_FoodLimit], [Usr_GiftLimit], [Usr_WorkDaysInRow]) VALUES (6, N'Mariobeto', N'97SlEy+0MX8=', CAST(0x0000A13E00C434C8 AS DateTime), 0, 0, 0, 48, 1, 26, 2, N'Junior', 10, 10, 2)
INSERT [dbo].[tbl_USERS] ([Usr_id], [Usr_Name], [Usr_Password], [Usr_BirthDay], [Usr_TotalTrainingSessions], [Usr_TotalDamageDone], [Usr_Strength], [Usr_Citizenship], [Usr_Location], [Usr_Experience], [Usr_EconomySkill], [Usr_TitleJob], [Usr_FoodLimit], [Usr_GiftLimit], [Usr_WorkDaysInRow]) VALUES (8, N'Jorgelopez', N'4GRMk1whH9M=', CAST(0x0000A14501610D74 AS DateTime), 0, 0, 0, 48, 1, 2, 1, N'Assistant', 10, 10, 0)
SET IDENTITY_INSERT [dbo].[tbl_USERS] OFF
/****** Object:  Table [dbo].[tbl_Training]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Training](
	[Train_ID] [int] IDENTITY(1,1) NOT NULL,
	[Train_Date] [smalldatetime] NOT NULL,
	[User_ID] [int] NULL,
 CONSTRAINT [PK_TRAININGS] PRIMARY KEY CLUSTERED 
(
	[Train_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Training] ON
INSERT [dbo].[tbl_Training] ([Train_ID], [Train_Date], [User_ID]) VALUES (23, CAST(0xA1410534 AS SmallDateTime), 6)
INSERT [dbo].[tbl_Training] ([Train_ID], [Train_Date], [User_ID]) VALUES (24, CAST(0xA142056A AS SmallDateTime), 6)
INSERT [dbo].[tbl_Training] ([Train_ID], [Train_Date], [User_ID]) VALUES (25, CAST(0xA144025F AS SmallDateTime), 6)
INSERT [dbo].[tbl_Training] ([Train_ID], [Train_Date], [User_ID]) VALUES (26, CAST(0xA145022D AS SmallDateTime), 6)
INSERT [dbo].[tbl_Training] ([Train_ID], [Train_Date], [User_ID]) VALUES (27, CAST(0xA146025C AS SmallDateTime), 8)
INSERT [dbo].[tbl_Training] ([Train_ID], [Train_Date], [User_ID]) VALUES (31, CAST(0xA14602FE AS SmallDateTime), 6)
SET IDENTITY_INSERT [dbo].[tbl_Training] OFF
/****** Object:  Table [dbo].[tbl_Companies]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Companies](
	[Compny_ID] [int] IDENTITY(1,1) NOT NULL,
	[Country_ID] [int] NOT NULL,
	[Compny_Name] [varchar](50) NOT NULL,
	[Item_ID] [int] NOT NULL,
	[User_OwnerID] [int] NOT NULL,
	[Company_Level] [int] NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Compny_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Companies] ON
INSERT [dbo].[tbl_Companies] ([Compny_ID], [Country_ID], [Compny_Name], [Item_ID], [User_OwnerID], [Company_Level]) VALUES (3, 48, N'WeaponMachin', 7, 6, 1)
SET IDENTITY_INSERT [dbo].[tbl_Companies] OFF
/****** Object:  Table [dbo].[tbl_Bank]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bank](
	[Bank_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Mny_ID] [int] NOT NULL,
	[Bank_Quantity] [money] NOT NULL,
 CONSTRAINT [PK_tbl_Bank] PRIMARY KEY CLUSTERED 
(
	[Bank_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Bank] ON
INSERT [dbo].[tbl_Bank] ([Bank_ID], [User_ID], [Mny_ID], [Bank_Quantity]) VALUES (3, 6, 4, 40.0000)
INSERT [dbo].[tbl_Bank] ([Bank_ID], [User_ID], [Mny_ID], [Bank_Quantity]) VALUES (11, 8, 4, 11.0000)
SET IDENTITY_INSERT [dbo].[tbl_Bank] OFF
/****** Object:  Table [dbo].[tbl_Inventory]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Inventory](
	[Invtry_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Invtry_Item_Quantity] [int] NOT NULL,
	[Item_ID] [int] NOT NULL,
	[Invtry_Item_Quality] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Inventory] PRIMARY KEY CLUSTERED 
(
	[Invtry_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Inventory] ON
INSERT [dbo].[tbl_Inventory] ([Invtry_ID], [User_ID], [Invtry_Item_Quantity], [Item_ID], [Invtry_Item_Quality]) VALUES (5, 6, 160, 1, 1)
INSERT [dbo].[tbl_Inventory] ([Invtry_ID], [User_ID], [Invtry_Item_Quantity], [Item_ID], [Invtry_Item_Quality]) VALUES (10, 6, 1340, 7, 1)
SET IDENTITY_INSERT [dbo].[tbl_Inventory] OFF
/****** Object:  Table [dbo].[tbl_Workers]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Workers](
	[Compny_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Salary] [money] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Workers] ([Compny_ID], [User_ID], [Salary]) VALUES (3, 6, 1.0000)
INSERT [dbo].[tbl_Workers] ([Compny_ID], [User_ID], [Salary]) VALUES (3, 8, 5.5000)
/****** Object:  Table [dbo].[tbl_Workdays]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Workdays](
	[Workday_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Workday_Date] [date] NOT NULL,
	[Company_ID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Workdays_1] PRIMARY KEY CLUSTERED 
(
	[Workday_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Workdays] ON
INSERT [dbo].[tbl_Workdays] ([Workday_ID], [User_ID], [Workday_Date], [Company_ID]) VALUES (22, 6, CAST(0xA0360B00 AS Date), 3)
INSERT [dbo].[tbl_Workdays] ([Workday_ID], [User_ID], [Workday_Date], [Company_ID]) VALUES (23, 6, CAST(0x9F360B00 AS Date), 3)
INSERT [dbo].[tbl_Workdays] ([Workday_ID], [User_ID], [Workday_Date], [Company_ID]) VALUES (26, 6, CAST(0xA1360B00 AS Date), 3)
INSERT [dbo].[tbl_Workdays] ([Workday_ID], [User_ID], [Workday_Date], [Company_ID]) VALUES (27, 8, CAST(0xA1360B00 AS Date), 3)
SET IDENTITY_INSERT [dbo].[tbl_Workdays] OFF
/****** Object:  View [dbo].[View_UserInfo]    Script Date: 01/14/2013 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_UserInfo]
AS
SELECT     dbo.tbl_Workers.Compny_ID, dbo.tbl_Companies.Country_ID, dbo.tbl_USERS.Usr_WorkDaysInRow, dbo.tbl_USERS.Usr_Experience, 
                      dbo.tbl_Companies.Company_Level, dbo.tbl_Workers.Salary, dbo.tbl_Companies.Item_ID AS ItemToProduceID, dbo.tbl_Items.Item_Name AS ItemNameToProduce, 
                      dbo.tbl_Bank.Bank_Quantity, dbo.tbl_Bank.Mny_ID, dbo.tbl_Bank.Bank_ID, dbo.tbl_USERS.Usr_Location, dbo.tbl_Workers.User_ID, dbo.tbl_USERS.Usr_TitleJob, 
                      dbo.tbl_USERS.Usr_Name, dbo.tbl_Money_Types.Mny_ID AS MnyTypeID, dbo.tbl_Money_Types.Country_ID AS MnyTypeCountryID, 
                      dbo.tbl_USERS.Usr_EconomySkill, dbo.tbl_Companies.User_OwnerID
FROM         dbo.tbl_USERS INNER JOIN
                      dbo.tbl_Workers ON dbo.tbl_Workers.User_ID = dbo.tbl_USERS.Usr_id LEFT OUTER JOIN
                      dbo.tbl_Bank ON dbo.tbl_USERS.Usr_id = dbo.tbl_Bank.User_ID INNER JOIN
                      dbo.tbl_Companies ON dbo.tbl_Companies.Compny_ID = dbo.tbl_Companies.Compny_ID INNER JOIN
                      dbo.tbl_Items ON dbo.tbl_Companies.Item_ID = dbo.tbl_Items.Item_ID LEFT OUTER JOIN
                      dbo.tbl_Money_Types ON dbo.tbl_Companies.Country_ID = dbo.tbl_Money_Types.Country_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_USERS"
            Begin Extent = 
               Top = 6
               Left = 637
               Bottom = 185
               Right = 902
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Workers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 150
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Bank"
            Begin Extent = 
               Top = 6
               Left = 439
               Bottom = 146
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Companies"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 172
               Right = 397
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tbl_Money_Types"
            Begin Extent = 
               Top = 6
               Left = 940
               Bottom = 119
               Right = 1100
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Items"
            Begin Extent = 
               Top = 150
               Left = 38
               Bottom = 254
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 22
         Width = 284
         Width = 1500
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UserInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UserInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UserInfo'
GO
/****** Object:  Default [DF_tbl_USERS_Usr_BirthDay]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS] ADD  CONSTRAINT [DF_tbl_USERS_Usr_BirthDay]  DEFAULT (getdate()) FOR [Usr_BirthDay]
GO
/****** Object:  Default [DF_tbl_USERS_Usr_TotalTrainingSessions]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS] ADD  CONSTRAINT [DF_tbl_USERS_Usr_TotalTrainingSessions]  DEFAULT ((0)) FOR [Usr_TotalTrainingSessions]
GO
/****** Object:  Default [DF_tbl_USERS_Usr_TotalDamageDone]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS] ADD  CONSTRAINT [DF_tbl_USERS_Usr_TotalDamageDone]  DEFAULT ((0)) FOR [Usr_TotalDamageDone]
GO
/****** Object:  Default [DF_tbl_USERS_Usr_Strength]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS] ADD  CONSTRAINT [DF_tbl_USERS_Usr_Strength]  DEFAULT ((0)) FOR [Usr_Strength]
GO
/****** Object:  Default [DF_tbl_USERS_Usr_Experience]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS] ADD  CONSTRAINT [DF_tbl_USERS_Usr_Experience]  DEFAULT ((0)) FOR [Usr_Experience]
GO
/****** Object:  Default [DF_tbl_USERS_Usr_EconomySkill]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS] ADD  CONSTRAINT [DF_tbl_USERS_Usr_EconomySkill]  DEFAULT ((0)) FOR [Usr_EconomySkill]
GO
/****** Object:  Default [DF_tbl_USERS_Usr_TitleJob]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS] ADD  CONSTRAINT [DF_tbl_USERS_Usr_TitleJob]  DEFAULT (N'Apprentice') FOR [Usr_TitleJob]
GO
/****** Object:  Default [DF_tbl_USERS_Usr_FoodLimit]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS] ADD  CONSTRAINT [DF_tbl_USERS_Usr_FoodLimit]  DEFAULT ((10)) FOR [Usr_FoodLimit]
GO
/****** Object:  Default [DF_tbl_USERS_Usr_GiftLimit]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS] ADD  CONSTRAINT [DF_tbl_USERS_Usr_GiftLimit]  DEFAULT ((10)) FOR [Usr_GiftLimit]
GO
/****** Object:  Default [DF_tbl_USERS_Usr_WorkDaysInRow]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS] ADD  CONSTRAINT [DF_tbl_USERS_Usr_WorkDaysInRow]  DEFAULT ((0)) FOR [Usr_WorkDaysInRow]
GO
/****** Object:  ForeignKey [FK_tbl_Bank_tbl_MONEY_TYPES]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Bank]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Bank_tbl_MONEY_TYPES] FOREIGN KEY([Mny_ID])
REFERENCES [dbo].[tbl_Money_Types] ([Mny_ID])
GO
ALTER TABLE [dbo].[tbl_Bank] CHECK CONSTRAINT [FK_tbl_Bank_tbl_MONEY_TYPES]
GO
/****** Object:  ForeignKey [FK_tbl_Bank_tbl_USERS]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Bank]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Bank_tbl_USERS] FOREIGN KEY([User_ID])
REFERENCES [dbo].[tbl_USERS] ([Usr_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Bank] CHECK CONSTRAINT [FK_tbl_Bank_tbl_USERS]
GO
/****** Object:  ForeignKey [FK_Companies_tbl_USERS]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Companies]  WITH CHECK ADD  CONSTRAINT [FK_Companies_tbl_USERS] FOREIGN KEY([User_OwnerID])
REFERENCES [dbo].[tbl_USERS] ([Usr_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Companies] CHECK CONSTRAINT [FK_Companies_tbl_USERS]
GO
/****** Object:  ForeignKey [FK_tbl_Inventory_tbl_Items]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Inventory_tbl_Items] FOREIGN KEY([Item_ID])
REFERENCES [dbo].[tbl_Items] ([Item_ID])
GO
ALTER TABLE [dbo].[tbl_Inventory] CHECK CONSTRAINT [FK_tbl_Inventory_tbl_Items]
GO
/****** Object:  ForeignKey [FK_tbl_Inventory_tbl_USERS]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Inventory_tbl_USERS] FOREIGN KEY([User_ID])
REFERENCES [dbo].[tbl_USERS] ([Usr_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Inventory] CHECK CONSTRAINT [FK_tbl_Inventory_tbl_USERS]
GO
/****** Object:  ForeignKey [FK_tbl_Regions_tbl_Countries]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Regions]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Regions_tbl_Countries] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[tbl_Countries] ([Ctry_ID])
GO
ALTER TABLE [dbo].[tbl_Regions] CHECK CONSTRAINT [FK_tbl_Regions_tbl_Countries]
GO
/****** Object:  ForeignKey [FK_TRAININGS_USERS]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Training]  WITH CHECK ADD  CONSTRAINT [FK_TRAININGS_USERS] FOREIGN KEY([User_ID])
REFERENCES [dbo].[tbl_USERS] ([Usr_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Training] CHECK CONSTRAINT [FK_TRAININGS_USERS]
GO
/****** Object:  ForeignKey [FK_tbl_USERS_tbl_Countries]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS]  WITH CHECK ADD  CONSTRAINT [FK_tbl_USERS_tbl_Countries] FOREIGN KEY([Usr_Citizenship])
REFERENCES [dbo].[tbl_Countries] ([Ctry_ID])
GO
ALTER TABLE [dbo].[tbl_USERS] CHECK CONSTRAINT [FK_tbl_USERS_tbl_Countries]
GO
/****** Object:  ForeignKey [FK_tbl_USERS_tbl_Regions]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_USERS]  WITH CHECK ADD  CONSTRAINT [FK_tbl_USERS_tbl_Regions] FOREIGN KEY([Usr_Location])
REFERENCES [dbo].[tbl_Regions] ([Region_ID])
GO
ALTER TABLE [dbo].[tbl_USERS] CHECK CONSTRAINT [FK_tbl_USERS_tbl_Regions]
GO
/****** Object:  ForeignKey [FK_tbl_Workdays_tbl_Companies]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Workdays]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Workdays_tbl_Companies] FOREIGN KEY([Company_ID])
REFERENCES [dbo].[tbl_Companies] ([Compny_ID])
GO
ALTER TABLE [dbo].[tbl_Workdays] CHECK CONSTRAINT [FK_tbl_Workdays_tbl_Companies]
GO
/****** Object:  ForeignKey [FK_tbl_Workdays_tbl_USERS]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Workdays]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Workdays_tbl_USERS] FOREIGN KEY([User_ID])
REFERENCES [dbo].[tbl_USERS] ([Usr_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Workdays] CHECK CONSTRAINT [FK_tbl_Workdays_tbl_USERS]
GO
/****** Object:  ForeignKey [FK_Workers_Companies]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Workers]  WITH CHECK ADD  CONSTRAINT [FK_Workers_Companies] FOREIGN KEY([Compny_ID])
REFERENCES [dbo].[tbl_Companies] ([Compny_ID])
GO
ALTER TABLE [dbo].[tbl_Workers] CHECK CONSTRAINT [FK_Workers_Companies]
GO
/****** Object:  ForeignKey [FK_Workers_tbl_USERS]    Script Date: 01/14/2013 17:29:38 ******/
ALTER TABLE [dbo].[tbl_Workers]  WITH CHECK ADD  CONSTRAINT [FK_Workers_tbl_USERS] FOREIGN KEY([User_ID])
REFERENCES [dbo].[tbl_USERS] ([Usr_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Workers] CHECK CONSTRAINT [FK_Workers_tbl_USERS]
GO
