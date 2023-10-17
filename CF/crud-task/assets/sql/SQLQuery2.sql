USE [crud_operations]
GO

/****** Object:  Table [dbo].[table_crud]    Script Date: 17-10-2023 12:05:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[table_crud](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](255) NULL,
	[lname] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[gender] [varchar](255) NULL,
	[age] [int] NULL,
	[loc] [varchar](255) NULL
) ON [PRIMARY]
GO


