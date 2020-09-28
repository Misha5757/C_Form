CREATE DATABASE [MAGAZ22]
USE [MAGAZ22]
go
CREATE TABLE [contract]
(
	[ID]       INT IDENTITY (0, 1) ,  
	[IDclient] INT CONSTRAINT FK_contract_IDclient_Client_ID FOREIGN KEY REFERENCES [Client]([ID]) ,
	[IDEmloyee] INT CONSTRAINT FK_contract_IDEmloyee_Employee_ID FOREIGN KEY REFERENCES [Employee]([ID]) ,
	[IDTour]   INT CONSTRAINT FK_contract_IDTour FOREIGN KEY REFERENCES [Tour]([ID]) ,
	CONSTRAINT PK_contract_ID PRIMARY KEY ([ID]) 
)
go
CREATE TABLE [Client]
(
	[ID] INT IDENTITY (0, 1),
	[FirstName]  NVARCHAR(Max) NOT NULL,
	[LastName]   NVARCHAR(Max) NOT NULL,
	[MiddleName] NVARCHAR(Max) NOT NULL,
	[IDTour]     INT CONSTRAINT FK_Client_IDTour_Tour_ID FOREIGN KEY REFERENCES [Tour]([ID]) ,
	CONSTRAINT PK_Client_ID PRIMARY KEY ([ID]),
)
go
CREATE TABLE [Passport]
(
	[ID]       INT IDENTITY (0, 1),
	[Region]   INT NOT NULL,
	[Number]   INT NOT NULL,
	[Series]   INT NOT NULL,
	[Date]	   DATE NOT NULL,
	[IDClient] INT CONSTRAINT FK_Passport_IDClient_Client_ID FOREIGN KEY REFERENCES [Client]([ID]),
	CONSTRAINT PK_Pssport_ID PRIMARY KEY ([ID]),
)
go
CREATE TABLE [Tour]
(
	[ID]	INT IDENTITY (0, 1) ,
	[Title] NVARCHAR (max) NOT NULL,
	CONSTRAINT PK_Tour_ID PRIMARY KEY ([ID]),
)
go
CREATE TABLE [Employee]
(
	[ID]			INT IDENTITY (0, 1),
	[FirstName]     NVARCHAR(MAX) NOT NULL,
	[LastName]      NVARCHAR(MAX) NOT NULL,
	[MiddieName]    NVARCHAR(MAX) NOT NULL,
	[IDPosition] INT CONSTRAINT FK_Employee_IDPosition_Position_ID FOREIGN KEY REFERENCES  [Position]([ID]),
	CONSTRAINT PK_Employee_ID PRIMARY KEY ([ID])
)
go
CREATE TABLE [Position] 
(
[ID]	INT IDENTITY (0, 1),
[Title] NVARCHAR (MAX) NOT NULL,
CONSTRAINT PK_Postion_ID PRIMARY KEY ([ID])
)
