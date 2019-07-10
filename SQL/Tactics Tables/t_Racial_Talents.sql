USE [TACTICS]
GO

/****** Object:  Table [dbo].[Racial_Talents]    Script Date: 2019-07-10 2:12:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Racial_Talents](
	[rTalent_ID] [int] IDENTITY(1,1) NOT NULL,
	[talent_name] [varchar](24) NOT NULL,
	[race] [varchar](24) NOT NULL,
	[req] [int] NULL,
	[tags] [varchar](255) NULL,
	[effect] [varchar](255) NULL,
	[notes] [varchar](255) NULL,
 CONSTRAINT [PK_Race_Talents] PRIMARY KEY CLUSTERED 
(
	[talent_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Racial_Talents]  WITH CHECK ADD  CONSTRAINT [FK_Racial_Talent_Race] FOREIGN KEY([race])
REFERENCES [dbo].[Races] ([race])
GO

ALTER TABLE [dbo].[Racial_Talents] CHECK CONSTRAINT [FK_Racial_Talent_Race]
GO


