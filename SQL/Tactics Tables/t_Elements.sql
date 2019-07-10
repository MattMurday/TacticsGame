USE [TACTICS]
GO

/****** Object:  Table [dbo].[Elements]    Script Date: 2019-07-10 2:11:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Elements](
	[ele_id] [int] IDENTITY(1,1) NOT NULL,
	[element] [varchar](24) NOT NULL,
	[strong1] [varchar](24) NULL,
	[strong2] [varchar](24) NULL,
	[strong3] [varchar](24) NULL,
	[weak1] [varchar](24) NULL,
	[weak2] [varchar](24) NULL,
	[weak3] [varchar](24) NULL,
 CONSTRAINT [PK_Element] PRIMARY KEY CLUSTERED 
(
	[element] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


