USE [crud_operations]
GO

/****** Object:  Table [dbo].[image_thumbnail]    Script Date: 17-10-2023 17:28:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[image_thumbnail](
	[imgid] [int] IDENTITY(1,1) NOT NULL,
	[imagename] [varchar](255) NULL,
	[imagedesc] [varchar](255) NULL,
	[imagefile] [varchar](255) NULL
) ON [PRIMARY]
GO


