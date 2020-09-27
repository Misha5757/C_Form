create database [Magaz333]
use [Magaz333]
go
create table [Knigi]
(
	[ID]				INT  IDENTITY (0, 1),
	[Name]				NVARCHAR(50)		NOT NULL,
	[Numberofpages]		INT					NOT NULL,
	[IDGenre]			INT CONSTRAINT FK_Knigi_IDGenre_Genre1_ID
	FOREIGN KEY REFERENCES [Genre1]([ID]),
	[IDAvtor]					NCHAR(1) CONSTRAINT FK_Knigi_IDAvtor_Avtor_ID
	FOREIGN KEY REFERENCES [Avtor]([ID]) ,
	[IDIzdatel]			NCHAR(1) CONSTRAINT FK_Knigi_IDIzdatel_Izdatel_ID
	FOREIGN KEY REFERENCES [Izdatel]([ID]),
)
go
create table [Genre1]
(
	[ID]					 INT Not null,	
	[Name2]					 VARCHAR(50)		 NOT NULL,
	CONSTRAINT PK_Genre1_ID PRIMARY KEY ([ID])
)
go
create table [Avtor]
(
	[ID]						NCHAR(1),
	[Familya]					NVARCHAR(50)		NOT NULL,
	[Imya]						NVARCHAR(50)		NOT NULL,
	[Otchestvo]					NVARCHAR(50)		NOT NULL,
	[Data]						DateTime			NOT NULL,
	CONSTRAINT PK_Avtor_ID PRIMARY KEY ([ID])
)
create table [Izdatel]
(
	[ID]					    NCHAR(1) ,
	[Naimenovanie]				NVARCHAR(50)		NOT NULL,
	[Adres]						NVARCHAR(50)		NOT NULL,
	[Strana]					NVARCHAR(50)		NOT NULL,
	CONSTRAINT PK_Izdatel1_ID PRIMARY KEY ([ID])
)