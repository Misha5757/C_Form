create database [Avtoriz2]
use [Avtoriz2]
go
create table [Role]
(
	[ID]				NCHAR (1),
	[TITLE]				NVARCHAR(50)		NOT NULL,
	CONSTRAINT PK_ROLE_ID PRIMARY KEY ([ID])
)
INSERT [Role]([ID],[Title]) VALUES('A','Admin')
INSERT [Role]([ID],[Title]) VALUES('U','USER')
go
create table [User]
(
	[ID]				INT IDENTITY (0, 1) ,	
	[Name]			   NVARCHAR(50)		 NOT NULL,
	[Password]		   NVARCHAR(50)		 NOT NULL,
	[IDRole]			NCHAR(1) CONSTRAINT FK_USER_IDRole_Role_ID
	FOREIGN KEY REFERENCES [Role]([ID])  NOT NULL,
	CONSTRAINT PK_USER_ID PRIMARY KEY ([ID])
)
go
INSERT INTO [User]([Name],[Password],[IDRole]) VALUES('vckit','#hello','A')
INSERT INTO [User]([Name],[Password],[IDRole]) VALUES('thevckit','#hello','U')
SELECT * FROM [USER]
