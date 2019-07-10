USE [TACTICS]
GO

/****** Object:  Table [dbo].[Characters]    Script Date: 2019-07-10 2:10:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Characters](
	[char_ID] [int] IDENTITY(1,1) NOT NULL,
	[char_name] [varchar](255) NOT NULL,
	[element] [varchar](24) NOT NULL,
	[race] [varchar](24) NOT NULL,
	[class] [varchar](24) NOT NULL,
	[weapon] [varchar](24) NULL,
	[gen_talent] [varchar](24) NULL,
	[gen_talent2] [varchar](24) NULL,
	[class_talent] [varchar](24) NULL,
	[class_talent2] [varchar](24) NULL,
	[racial_talent] [varchar](24) NULL,
	[racial_talent2] [varchar](24) NULL,
	[skill1] [varchar](24) NULL,
	[skill2] [varchar](24) NULL,
	[skill3] [varchar](24) NULL,
	[skill4] [varchar](24) NULL,
	[skill5] [varchar](24) NULL,
	[item] [varchar](24) NULL,
	[item2] [varchar](24) NULL,
	[health] [int] NOT NULL,
	[phys_att] [int] NOT NULL,
	[phys_def] [int] NOT NULL,
	[mag_att] [int] NOT NULL,
	[mag_def] [int] NOT NULL,
	[speed] [int] NOT NULL,
	[init] [int] NOT NULL,
	[level] [int] NOT NULL,
	[tags] [varchar](255) NULL,
	[unitID] [int] NULL,
	[is_lead] [int] NOT NULL,
	[notes] [varchar](255) NULL,
	[created] [timestamp] NOT NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[char_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Class_Talent] FOREIGN KEY([class_talent])
REFERENCES [dbo].[Class_Talents] ([talent_name])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Class_Talent]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Class_Talent2] FOREIGN KEY([class_talent2])
REFERENCES [dbo].[Class_Talents] ([talent_name])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Class_Talent2]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Element] FOREIGN KEY([element])
REFERENCES [dbo].[Elements] ([element])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Element]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_General_Talent] FOREIGN KEY([gen_talent])
REFERENCES [dbo].[General_Talents] ([talent_name])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_General_Talent]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_General_Talent2] FOREIGN KEY([gen_talent2])
REFERENCES [dbo].[General_Talents] ([talent_name])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_General_Talent2]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Items] FOREIGN KEY([item])
REFERENCES [dbo].[Items] ([item_name])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Items]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Items1] FOREIGN KEY([item2])
REFERENCES [dbo].[Items] ([item_name])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Items1]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Race] FOREIGN KEY([race])
REFERENCES [dbo].[Races] ([race])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Race]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Racial_Talent] FOREIGN KEY([racial_talent])
REFERENCES [dbo].[Racial_Talents] ([talent_name])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Racial_Talent]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Racial_Talent2] FOREIGN KEY([racial_talent2])
REFERENCES [dbo].[Racial_Talents] ([talent_name])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Racial_Talent2]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Skills1] FOREIGN KEY([skill1])
REFERENCES [dbo].[Skills] ([skill])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Skills1]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Skills2] FOREIGN KEY([skill2])
REFERENCES [dbo].[Skills] ([skill])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Skills2]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Skills3] FOREIGN KEY([skill3])
REFERENCES [dbo].[Skills] ([skill])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Skills3]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Skills4] FOREIGN KEY([skill4])
REFERENCES [dbo].[Skills] ([skill])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Skills4]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Skills5] FOREIGN KEY([skill5])
REFERENCES [dbo].[Skills] ([skill])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Skills5]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Units] FOREIGN KEY([unitID])
REFERENCES [dbo].[Units] ([unit_ID])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Units]
GO

ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Weapon] FOREIGN KEY([weapon])
REFERENCES [dbo].[Weapons] ([weapon])
GO

ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Weapon]
GO


