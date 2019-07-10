USE [TACTICS]
GO

/****** Object:  Table [dbo].[Classes]    Script Date: 2019-07-10 2:10:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Classes](
	[class_ID] [int] IDENTITY(1,1) NOT NULL,
	[class] [varchar](24) NOT NULL,
	[health] [int] NULL,
	[phys_att] [int] NULL,
	[mag_att] [int] NULL,
	[phys_def] [int] NULL,
	[mag_def] [int] NULL,
	[speed] [int] NULL,
	[init] [int] NULL,
	[feat1] [varchar](255) NULL,
	[feat2] [varchar](255) NULL,
	[feat3] [varchar](255) NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[class] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Class_Class] FOREIGN KEY([class])
REFERENCES [dbo].[Classes] ([class])
GO

ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Class_Class]
GO


