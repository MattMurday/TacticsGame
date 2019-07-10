USE [TACTICS]
GO

/****** Object:  Table [dbo].[Races]    Script Date: 2019-07-10 2:12:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Races](
	[race_ID] [int] IDENTITY(1,1) NOT NULL,
	[race] [varchar](24) NOT NULL,
	[health] [int] NULL,
	[phys_att] [int] NULL,
	[phys_def] [int] NULL,
	[mag_att] [int] NULL,
	[mag_def] [int] NULL,
	[speed] [int] NULL,
	[init] [int] NULL,
 CONSTRAINT [PK_Races] PRIMARY KEY CLUSTERED 
(
	[race] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


