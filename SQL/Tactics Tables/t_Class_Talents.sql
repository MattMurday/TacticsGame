USE [TACTICS]
GO

/****** Object:  Table [dbo].[Class_Talents]    Script Date: 2019-07-10 2:10:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Class_Talents](
	[cTalent_ID] [int] IDENTITY(1,1) NOT NULL,
	[talent_name] [varchar](24) NOT NULL,
	[class] [varchar](24) NOT NULL,
	[req] [int] NULL,
	[tags] [varchar](255) NULL,
	[effect] [varchar](255) NULL,
	[notes] [varchar](255) NULL,
 CONSTRAINT [PK_Class_Talents] PRIMARY KEY CLUSTERED 
(
	[talent_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Class_Talents]  WITH CHECK ADD  CONSTRAINT [FK_Class_Talent_Class] FOREIGN KEY([class])
REFERENCES [dbo].[Classes] ([class])
GO

ALTER TABLE [dbo].[Class_Talents] CHECK CONSTRAINT [FK_Class_Talent_Class]
GO

ALTER TABLE [dbo].[Class_Talents]  WITH CHECK ADD  CONSTRAINT [FK_Class_Talent_Class_Talent] FOREIGN KEY([talent_name])
REFERENCES [dbo].[Class_Talents] ([talent_name])
GO

ALTER TABLE [dbo].[Class_Talents] CHECK CONSTRAINT [FK_Class_Talent_Class_Talent]
GO


