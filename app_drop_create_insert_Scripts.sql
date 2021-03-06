USE [jbpm715]
GO
ALTER TABLE [dbo].[minerva_bpm_user_role] DROP CONSTRAINT [FKcq9ncxam4q11bdrr565sslqst]
GO
ALTER TABLE [dbo].[minerva_bpm_user_role] DROP CONSTRAINT [FK74u2ru6tw0snfqnjqdr304m80]
GO
/****** Object:  Table [dbo].[minerva_bpm_user_role]    Script Date: 9/9/2021 2:22:16 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[minerva_bpm_user_role]') AND type in (N'U'))
DROP TABLE [dbo].[minerva_bpm_user_role]
GO
/****** Object:  Table [dbo].[minerva_bpm_user]    Script Date: 9/9/2021 2:22:16 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[minerva_bpm_user]') AND type in (N'U'))
DROP TABLE [dbo].[minerva_bpm_user]
GO
/****** Object:  Table [dbo].[minerva_bpm_role]    Script Date: 9/9/2021 2:22:16 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[minerva_bpm_role]') AND type in (N'U'))
DROP TABLE [dbo].[minerva_bpm_role]
GO
/****** Object:  Table [dbo].[minerva_bpm_role]    Script Date: 9/9/2021 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[minerva_bpm_role](
	[id] [int] NOT NULL,
	[rolename] [varchar](255) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[minerva_bpm_user]    Script Date: 9/9/2021 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[minerva_bpm_user](
	[id] [int] NOT NULL,
	[password] [varchar](255) NULL,
	[status] [int] NOT NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[minerva_bpm_user_role]    Script Date: 9/9/2021 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[minerva_bpm_user_role](
	[id] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[uid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[minerva_bpm_user_role]  WITH CHECK ADD  CONSTRAINT [FK74u2ru6tw0snfqnjqdr304m80] FOREIGN KEY([rid])
REFERENCES [dbo].[minerva_bpm_role] ([id])
GO
ALTER TABLE [dbo].[minerva_bpm_user_role] CHECK CONSTRAINT [FK74u2ru6tw0snfqnjqdr304m80]
GO
ALTER TABLE [dbo].[minerva_bpm_user_role]  WITH CHECK ADD  CONSTRAINT [FKcq9ncxam4q11bdrr565sslqst] FOREIGN KEY([uid])
REFERENCES [dbo].[minerva_bpm_user] ([id])
GO
ALTER TABLE [dbo].[minerva_bpm_user_role] CHECK CONSTRAINT [FKcq9ncxam4q11bdrr565sslqst]
GO
INSERT [dbo].[minerva_bpm_role] ([id], [rolename], [status]) VALUES (1, N'Administrators', 1)
INSERT [dbo].[minerva_bpm_role] ([id], [rolename], [status]) VALUES (2, N'PM', 1)
INSERT [dbo].[minerva_bpm_role] ([id], [rolename], [status]) VALUES (3, N'SVP', 1)
INSERT [dbo].[minerva_bpm_role] ([id], [rolename], [status]) VALUES (4, N'EVP', 1)
INSERT [dbo].[minerva_bpm_role] ([id], [rolename], [status]) VALUES (5, N'Admin', 1)
GO
INSERT [dbo].[minerva_bpm_user] ([id], [password], [status], [username]) VALUES (1, N'$2a$10$6NQ7ZWOGHT.W7JhlIa6hQOpABmGlBW7Essr5m78Pu.S3Gav7rha/K', 1, N'praful')
INSERT [dbo].[minerva_bpm_user] ([id], [password], [status], [username]) VALUES (2, N'$2a$10$6NQ7ZWOGHT.W7JhlIa6hQOpABmGlBW7Essr5m78Pu.S3Gav7rha/K', 1, N'shikha')
INSERT [dbo].[minerva_bpm_user] ([id], [password], [status], [username]) VALUES (3, N'$2a$10$6NQ7ZWOGHT.W7JhlIa6hQOpABmGlBW7Essr5m78Pu.S3Gav7rha/K', 1, N'soni')
INSERT [dbo].[minerva_bpm_user] ([id], [password], [status], [username]) VALUES (4, N'$2a$10$6NQ7ZWOGHT.W7JhlIa6hQOpABmGlBW7Essr5m78Pu.S3Gav7rha/K', 1, N'mohan')
INSERT [dbo].[minerva_bpm_user] ([id], [password], [status], [username]) VALUES (5, N'$2a$10$6NQ7ZWOGHT.W7JhlIa6hQOpABmGlBW7Essr5m78Pu.S3Gav7rha/K', 1, N'Administrator')
GO
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (1, 1, 1)
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (2, 3, 2)
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (3, 4, 3)
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (4, 2, 1)
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (5, 3, 1)
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (6, 4, 2)
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (7, 1, 2)
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (8, 5, 1)
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (9, 5, 2)
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (10, 5, 3)
INSERT [dbo].[minerva_bpm_user_role] ([id], [rid], [uid]) VALUES (11, 1, 4)
GO

