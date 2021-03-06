USE [master]
GO
/****** Object:  Database [shanti_realstate]    Script Date: 8/23/2021 8:44:04 PM ******/
CREATE DATABASE [shanti_realstate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shanti_realstate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\shanti_realstate.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shanti_realstate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\shanti_realstate_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shanti_realstate] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shanti_realstate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shanti_realstate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shanti_realstate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shanti_realstate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shanti_realstate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shanti_realstate] SET ARITHABORT OFF 
GO
ALTER DATABASE [shanti_realstate] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shanti_realstate] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [shanti_realstate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shanti_realstate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shanti_realstate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shanti_realstate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shanti_realstate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shanti_realstate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shanti_realstate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shanti_realstate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shanti_realstate] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shanti_realstate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shanti_realstate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shanti_realstate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shanti_realstate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shanti_realstate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shanti_realstate] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shanti_realstate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shanti_realstate] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [shanti_realstate] SET  MULTI_USER 
GO
ALTER DATABASE [shanti_realstate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shanti_realstate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shanti_realstate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shanti_realstate] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [shanti_realstate]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 8/23/2021 8:44:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[age] [int] NOT NULL,
	[salary] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[enquiry]    Script Date: 8/23/2021 8:44:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[enquiry](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clientname] [varchar](100) NOT NULL,
	[email] [varchar](200) NOT NULL,
	[phoneno] [varchar](100) NOT NULL,
	[message] [text] NOT NULL,
	[prop_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orders]    Script Date: 8/23/2021 8:44:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[custmer_id] [int] NULL,
	[amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[realstate]    Script Date: 8/23/2021 8:44:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[realstate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[propertyname] [varchar](500) NOT NULL,
	[minimumprice] [varchar](200) NOT NULL,
	[maximumprice] [varchar](200) NOT NULL,
	[uploadphoto] [text] NOT NULL,
	[facebookurl] [varchar](200) NULL,
	[instagram] [varchar](200) NULL,
	[whatsapp] [varchar](200) NULL,
	[youtube] [varchar](200) NULL,
	[areasqft] [varchar](100) NOT NULL,
	[bedrooms] [varchar](100) NOT NULL,
	[bathrooms] [varchar](200) NOT NULL,
	[garage] [varchar](100) NOT NULL,
	[propertylist] [varchar](200) NOT NULL,
	[ihave] [varchar](200) NOT NULL,
	[propertytype] [varchar](200) NOT NULL,
	[available] [varchar](200) NOT NULL,
	[googleurl] [text] NOT NULL,
	[propshort] [text] NOT NULL,
	[proplong] [text] NOT NULL,
	[nearby] [text] NOT NULL,
	[land_mark] [text] NOT NULL,
	[city] [varchar](100) NOT NULL,
	[pincode] [varchar](100) NOT NULL,
	[fulladdress] [text] NOT NULL,
	[slugname] [varchar](500) NOT NULL,
	[active] [varchar](50) NULL CONSTRAINT [DF_realstate_active]  DEFAULT ('Y'),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role]    Script Date: 8/23/2021 8:44:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 8/23/2021 8:44:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Pass_user] [varchar](200) NOT NULL,
	[fname_user] [varchar](200) NOT NULL,
	[lname_user] [varchar](200) NOT NULL,
	[role_id] [int] NULL,
	[username] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([id], [name], [age], [salary]) VALUES (1, N'Shanti', 20, 30000)
INSERT [dbo].[customer] ([id], [name], [age], [salary]) VALUES (2, N'Diksha', 21, 33000)
INSERT [dbo].[customer] ([id], [name], [age], [salary]) VALUES (3, N'Kashish', 22, 32000)
INSERT [dbo].[customer] ([id], [name], [age], [salary]) VALUES (4, N'Sakshi', 19, 29000)
INSERT [dbo].[customer] ([id], [name], [age], [salary]) VALUES (5, N'Manali', 23, 25000)
SET IDENTITY_INSERT [dbo].[customer] OFF
SET IDENTITY_INSERT [dbo].[enquiry] ON 

INSERT [dbo].[enquiry] ([id], [clientname], [email], [phoneno], [message], [prop_id]) VALUES (1, N'shanti', N'diksha@gmail.com', N'8978867356', N'asdasdasd', 7)
INSERT [dbo].[enquiry] ([id], [clientname], [email], [phoneno], [message], [prop_id]) VALUES (2, N'Diksha', N'shanti@gmail.com', N'8978867356', N'tyyyyyyyyyyyyy', 6)
INSERT [dbo].[enquiry] ([id], [clientname], [email], [phoneno], [message], [prop_id]) VALUES (3, N'Suraj', N'suraj@gmail.com', N'78945462222', N'askdtaysjdgasjdtadasdasd', 6)
INSERT [dbo].[enquiry] ([id], [clientname], [email], [phoneno], [message], [prop_id]) VALUES (1002, N'Suraj', N'student@thelastyogi.com', N'7666666', N'Hello', 6)
INSERT [dbo].[enquiry] ([id], [clientname], [email], [phoneno], [message], [prop_id]) VALUES (2002, N'shanti', N'shanti.rajbhar1999@gmail.com', N'8928894774', N'gdgdhfghfgh', 6)
SET IDENTITY_INSERT [dbo].[enquiry] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([orderid], [custmer_id], [amount]) VALUES (31, 1, 4000)
INSERT [dbo].[orders] ([orderid], [custmer_id], [amount]) VALUES (33, 2, 2000)
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[realstate] ON 

INSERT [dbo].[realstate] ([id], [propertyname], [minimumprice], [maximumprice], [uploadphoto], [facebookurl], [instagram], [whatsapp], [youtube], [areasqft], [bedrooms], [bathrooms], [garage], [propertylist], [ihave], [propertytype], [available], [googleurl], [propshort], [proplong], [nearby], [land_mark], [city], [pincode], [fulladdress], [slugname], [active]) VALUES (5, N'Banglobcfsdbcfdsvbh', N'8cr', N'16cr', N'', N'www.facebook.com', N'www.instagram.com', N'8976543324', N'youtube.com', N'80', N'60', N'50', N'10', N'For Sale', N'Residential', N'Apartment', N'', N'!1m18!1m12!1m3!1d103137.18730222873!2d72.93141930796347!3d19.21404075236611!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b8fcfe76fd59%3A0xcf367d85f7c50283!2sThane%2C%20Maharashtra!5e1!3m2!1sen!2sin!4v1627621378543!5m2!1sen!2sin" width="600"', N'AIPL Business Club, Sector 62, Gurugram, Haryana 122102, India', N'<p>About City: Backed by strong infrastructure and job creations, the real estate of Delhi/NCR is moving up. With increasing investments from builders in regions like Noida, Greater Noida, Gurgaon and Faridabad, the increasing demands are being catered to affecting the realty market positively. Additionally, other factors contributing to this positivity are the metro smoothening connectivity between different parts of the city and a number of expressways and flyovers letting you skip the traffic. The positivity in the job market leading to migration of working professionals from around the country to the city also contributes to a positivity in the job market</p>
', N'<p>AIPL Business Club, Sector 62, Gurugram, Haryana 122102, India</p>
', N'Thane', N'Thane', N'400603', N'Hariyana west new', N'banglo', N'N')
INSERT [dbo].[realstate] ([id], [propertyname], [minimumprice], [maximumprice], [uploadphoto], [facebookurl], [instagram], [whatsapp], [youtube], [areasqft], [bedrooms], [bathrooms], [garage], [propertylist], [ihave], [propertytype], [available], [googleurl], [propshort], [proplong], [nearby], [land_mark], [city], [pincode], [fulladdress], [slugname], [active]) VALUES (6, N'Elan Miracle , Sector 84, Gurugram, Haryana 122004, IndiaSahil', N'6cr', N'15cr', N'Upload\9a6dbc97-294f-4942-b5fc-47ac0ec3465elogin4.jpg', N'www.facebook.com', N'www.instagram.com', N'9585757585', N'youtube.com', N'10', N'20', N'30', N'10', N'For Sale', N'Residential', N'Apartment', N'', N'!1m18!1m12!1m3!1d103137.18730222873!2d72.93141930796347!3d19.21404075236611!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b8fcfe76fd59%3A0xcf367d85f7c50283!2sThane%2C%20Maharashtra!5e1!3m2!1sen!2sin!4v1627621378543!5m2!1sen!2sin', N'About City: Backed by strong infrastructure and job creations, the real estate of Delhi/NCR is moving up. With increasing investments from builders in regions like Noida, Greater Noida, Gurgaon and Faridabad, the increasing demands are being catered to affecting the realty market positively. Additionally, other factors contributing to this positivity are the metro smoothening connectivity between different parts of the city and a number of expressways and flyovers letting you skip the traffic. The positivity in the job market leading to migration of working professionals from around the country to the city also contributes to a positivity in the job market', N'<p>About City: Backed by strong infrastructure and job creations, the real estate of Delhi/NCR is moving up. With increasing investments from builders in regions like Noida, Greater Noida, Gurgaon and Faridabad, the increasing demands are being catered to affecting the realty market positively. Additionally, other factors contributing to this positivity are the metro smoothening connectivity between different parts of the city and a number of expressways and flyovers letting you skip the traffic. The positivity in the job market leading to migration of working professionals from around the country to the city also contributes to a positivity in the job market</p>
', N'<p>About City: Backed by strong infrastructure and job creations, the real estate of Delhi/NCR is moving up. With increasing investments from builders in regions like Noida, Greater Noida, Gurgaon and Faridabad, the increasing demands are being catered to affecting the realty market positively. Additionally, other factors contributing to this positivity are the metro smoothening connectivity between different parts of the city and a number of expressways and flyovers letting you skip the traffic. The positivity in the job market leading to migration of working professionals from around the country to the city also contributes to a positivity in the job market</p>
', N'Manpada', N'Mulund', N'400607', N'Mulund', N'elan_miracle_sector_84_gurugram_haryana_122004_india', N'Y')
INSERT [dbo].[realstate] ([id], [propertyname], [minimumprice], [maximumprice], [uploadphoto], [facebookurl], [instagram], [whatsapp], [youtube], [areasqft], [bedrooms], [bathrooms], [garage], [propertylist], [ihave], [propertytype], [available], [googleurl], [propshort], [proplong], [nearby], [land_mark], [city], [pincode], [fulladdress], [slugname], [active]) VALUES (7, N'Flate', N'2cr', N'20cr', N'Upload\16d093b0-b83e-4f38-9f4d-aafcf84374echome2.jpg.jpg', N'www.facebook.com', N'www.instagram.com', N'9094874743', N'youtube.com', N'', N'', N'', N'', N'For Sale', N'Residential', N'Apartment', N'Resale', N'hjdgcfejmw', N'fergktlbjhnk', N'<p>bkjkfngvjfbn</p>
', N'<p>vxbdbgdthytjuhb</p>
', N'Borivali', N'Borivali', N'400609', N'Mumbai ', N'flate', N'Y')
INSERT [dbo].[realstate] ([id], [propertyname], [minimumprice], [maximumprice], [uploadphoto], [facebookurl], [instagram], [whatsapp], [youtube], [areasqft], [bedrooms], [bathrooms], [garage], [propertylist], [ihave], [propertytype], [available], [googleurl], [propshort], [proplong], [nearby], [land_mark], [city], [pincode], [fulladdress], [slugname], [active]) VALUES (1002, N'Elan Town Centre, Sector 67, Gurugram, Haryana, India', N'1.43cr', N'5.34cr', N'Upload\2c05b8e8-98d5-48d1-bb24-93302e40f332login4.jpg', N'facebook.com', N'instagram.com', N'98778867', N'sfgraefea', N'1400', N'98', N'60', N'', N'For Sale', N'Residential', N'Apartment', N'Resale', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d120562.19154963724!2d72.93141930796347!3d19.21404075236611!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b8fcfe76fd59%3A0xcf367d85f7c50283!2sThane%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1627453433099!5m2!1sen!2sin', N'', N'', N'', N'', N'', N'', N'', N'elan_town_centre_sector_67_gurugram_haryana_india', N'Y')
INSERT [dbo].[realstate] ([id], [propertyname], [minimumprice], [maximumprice], [uploadphoto], [facebookurl], [instagram], [whatsapp], [youtube], [areasqft], [bedrooms], [bathrooms], [garage], [propertylist], [ihave], [propertytype], [available], [googleurl], [propshort], [proplong], [nearby], [land_mark], [city], [pincode], [fulladdress], [slugname], [active]) VALUES (1004, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'For Sale', N'Residential', N'Apartment', N'Resale', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Y')
SET IDENTITY_INSERT [dbo].[realstate] OFF
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id], [name]) VALUES (1, N'ADMIN')
INSERT [dbo].[role] ([id], [name]) VALUES (2, N'USER')
SET IDENTITY_INSERT [dbo].[role] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [Pass_user], [fname_user], [lname_user], [role_id], [username]) VALUES (1, N'$2a$13$QXsFXDkOkdYX4s7Js4lSP..qlttK7OtByAYV9sou5lLMfbzCT2sWq', N'Shanti', N'Rajbhar', 1, N'Shanti123')
INSERT [dbo].[users] ([id], [Pass_user], [fname_user], [lname_user], [role_id], [username]) VALUES (2, N'$2a$13$fK8XbXo9d5uXNGOw/Oo5yeiNfSDOEsAPBY9O6ngFnDpDcNsSSej7O', N'Aarti', N'gupta', NULL, N'aarti1')
INSERT [dbo].[users] ([id], [Pass_user], [fname_user], [lname_user], [role_id], [username]) VALUES (5, N'$2a$13$1j1DsrBbJTjg2Qu.X/jloOGUNzv1N8gfVycYSmTblvBjYGvK3rVY2', N'manali', N'desai', NULL, N'manali')
SET IDENTITY_INSERT [dbo].[users] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__realstat__FEC0D00FB6B2FE5C]    Script Date: 8/23/2021 8:44:05 PM ******/
ALTER TABLE [dbo].[realstate] ADD UNIQUE NONCLUSTERED 
(
	[slugname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__users__F3DBC572F22B427C]    Script Date: 8/23/2021 8:44:05 PM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[enquiry]  WITH CHECK ADD FOREIGN KEY([prop_id])
REFERENCES [dbo].[realstate] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([custmer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
USE [master]
GO
ALTER DATABASE [shanti_realstate] SET  READ_WRITE 
GO
