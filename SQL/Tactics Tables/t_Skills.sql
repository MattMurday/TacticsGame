USE [TACTICS]
GO

/****** Object:  Table [dbo].[Skills]    Script Date: 2019-07-10 2:12:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Skills](
	[skill_ID] [int] IDENTITY(1,1) NOT NULL,
	[skill] [varchar](24) NOT NULL,
	[element] [varchar](24) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[range] [varchar](24) NOT NULL,
	[req] [int] NULL,
	[minor_tags] [varchar](255) NULL,
	[major_tags] [varchar](255) NULL,
	[effect] [varchar](255) NULL,
	[damage] [int] NULL,
	[level_req] [int] NULL,
	[notes] [varchar](255) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[skill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Skills]  WITH CHECK ADD  CONSTRAINT [FK_Skills_Element] FOREIGN KEY([element])
REFERENCES [dbo].[Elements] ([element])
GO

ALTER TABLE [dbo].[Skills] CHECK CONSTRAINT [FK_Skills_Element]
GO


