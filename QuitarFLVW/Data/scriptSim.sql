USE [dbwsim]
GO
/****** Object:  Table [dbo].[tbl_MONEY_TYPES]    Script Date: 01/03/2013 16:54:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MONEY_TYPES](
	[Mny_ID] [int] NOT NULL,
	[Mny_Type] [varchar](50) NULL,
	[Mny_Country] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_MONEY_TYPES] PRIMARY KEY CLUSTERED 
(
	[Mny_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_USERS]    Script Date: 01/03/2013 16:54:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_USERS](
	[Usr_id] [int] IDENTITY(1,1) NOT NULL,
	[Usr_Name] [nvarchar](50) NULL,
	[Usr_Password] [nvarchar](50) NULL,
	[Usr_BirthDay] [datetime] NULL,
	[Usr_Damage] [int] NULL,
	[Usr_TotalTrainingSessions] [int] NULL,
	[Usr_TotalDamageDone] [int] NULL,
	[Usr_Streng] [int] NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[Usr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_USERS] ON
INSERT [dbo].[tbl_USERS] ([Usr_id], [Usr_Name], [Usr_Password], [Usr_BirthDay], [Usr_Damage], [Usr_TotalTrainingSessions], [Usr_TotalDamageDone], [Usr_Streng]) VALUES (1, N'Mariobeto', N'mario82', CAST(0x0000A13700000000 AS DateTime), 0, 4, 0, 80)
SET IDENTITY_INSERT [dbo].[tbl_USERS] OFF
/****** Object:  Table [dbo].[tbl_TRAININGS]    Script Date: 01/03/2013 16:54:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TRAININGS](
	[Train_ID] [int] IDENTITY(1,1) NOT NULL,
	[Train_Date] [smalldatetime] NOT NULL,
	[User_ID] [int] NULL,
 CONSTRAINT [PK_TRAININGS] PRIMARY KEY CLUSTERED 
(
	[Train_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_TRAININGS] ON
INSERT [dbo].[tbl_TRAININGS] ([Train_ID], [Train_Date], [User_ID]) VALUES (15, CAST(0xA13801A5 AS SmallDateTime), 1)
INSERT [dbo].[tbl_TRAININGS] ([Train_ID], [Train_Date], [User_ID]) VALUES (16, CAST(0xA139029F AS SmallDateTime), 1)
INSERT [dbo].[tbl_TRAININGS] ([Train_ID], [Train_Date], [User_ID]) VALUES (17, CAST(0xA13A0459 AS SmallDateTime), 1)
INSERT [dbo].[tbl_TRAININGS] ([Train_ID], [Train_Date], [User_ID]) VALUES (18, CAST(0xA13B02BA AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[tbl_TRAININGS] OFF
/****** Object:  ForeignKey [FK_TRAININGS_USERS]    Script Date: 01/03/2013 16:54:50 ******/
ALTER TABLE [dbo].[tbl_TRAININGS]  WITH CHECK ADD  CONSTRAINT [FK_TRAININGS_USERS] FOREIGN KEY([User_ID])
REFERENCES [dbo].[tbl_USERS] ([Usr_id])
GO
ALTER TABLE [dbo].[tbl_TRAININGS] CHECK CONSTRAINT [FK_TRAININGS_USERS]
GO
