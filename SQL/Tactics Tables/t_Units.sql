USE [TACTICS]
GO

/****** Object:  Table [dbo].[Units]    Script Date: 2019-07-10 2:13:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Units](
	[unit_ID] [int] IDENTITY(1,1) NOT NULL,
	[unit_name] [varchar](255) NOT NULL,
	[unit_LeadID] [int] NOT NULL,
	[member2ID] [int] NULL,
	[member3ID] [int] NULL,
	[member4ID] [int] NULL,
	[member5ID] [int] NULL,
	[notes] [varchar](255) NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[unit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


