USE [crud_operations]
GO

/****** Object:  Table [dbo].[table_page]    Script Date: 18-10-2023 17:29:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[table_page](
	[pageid] [int] IDENTITY(1,1) NOT NULL,
	[pagename] [varchar](255) NULL,
	[pagedesc] [varchar](255) NULL
) ON [PRIMARY]
GO


