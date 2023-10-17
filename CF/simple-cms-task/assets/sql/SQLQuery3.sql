USE [crud_operations]
GO

/****** Object:  Table [dbo].[table_user]    Script Date: 16-10-2023 20:38:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[table_user](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[pwd] [varchar](255) NULL,
	[role] [varchar](255) NULL
) ON [PRIMARY]
GO


