CREATE TABLE [dbo].[UserRight]
(
	[Id] INT IDENTITY,
	[Right] NVARCHAR(8) NOT NULL,
	CONSTRAINT PK_UserRight PRIMARY KEY ([Id]),
	CONSTRAINT UK_UserRight_Right UNIQUE ([Right])
)
