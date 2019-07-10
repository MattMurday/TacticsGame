USE [TACTICS]
GO

/****** Object:  Table [dbo].[Items]    Script Date: 2019-07-10 2:11:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Items](
	[item_ID] [int] IDENTITY(1,1) NOT NULL,
	[item_name] [varchar](24) NOT NULL,
	[reqs] [int] NULL,
	[tags] [varchar](255) NULL,
	[effect] [varchar](255) NULL,
	[notes] [varchar](255) NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[item_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


