CREATE DATABASE [Magaz3333]
USE [Magaz3333]
GO
CREATE TABLE [Knigi]
(
	[ID]				INT  IDENTITY (0, 1),
	[Name]				NVARCHAR(50)		NOT NULL,
	[Numberofpages]		INT					NOT NULL,
	[IDGenre]			INT CONSTRAINT FK_Knigi_IDGenre_Genre1_ID
	FOREIGN KEY REFERENCES [Genre1]([ID]),
	[IDAvtor]					INT CONSTRAINT FK_Knigi_IDAvtor_Avtor_ID
	FOREIGN KEY REFERENCES [Avtor]([ID]) ,
	[IDIzdatel]			INT CONSTRAINT FK_Knigi_IDIzdatel_Izdatel_ID
	FOREIGN KEY REFERENCES [Izdatel]([ID]),
	CONSTRAINT PK_Knigi_ID PRIMARY KEY ([ID])
)
go
CREATE TABLE [Genre1]
(
	[ID]					INT  IDENTITY (0, 1),	
	[Name]					 NVARCHAR(50)		 NOT NULL,
	CONSTRAINT PK_Genre1_ID PRIMARY KEY ([ID])
)
go
CREATE TABLE [Avtor]
(
	[ID]						INT  IDENTITY (0, 1),
	[Familya]					NVARCHAR(50)		NOT NULL,
	[Imya]						NVARCHAR(50)		NOT NULL,
	[Otchestvo]					NVARCHAR(50)		NOT NULL,
	[Data]						DateTime			NOT NULL,
	CONSTRAINT PK_Avtor_ID PRIMARY KEY ([ID])
)
CREATE TABLE [Izdatel]
(
	[ID]					    INT  IDENTITY (0, 1) ,
	[Naimenovanie]				NVARCHAR(50)		NOT NULL,
	[Adres]						NVARCHAR(50)		NOT NULL,
	[Strana]					NVARCHAR(50)		NOT NULL,
	CONSTRAINT PK_Izdatel1_ID PRIMARY KEY ([ID])
)