CREATE TABLE [dbo].[AspUser_UserRight]
(
	[AspUserId] INT NOT NULL,
	[UserRightId] INT NOT NULL,
	CONSTRAINT PK_AspUser_UserRight PRIMARY KEY ([AspUserId],[UserRightId]),
	CONSTRAINT FK_AspUser_UserRight_AspUserId FOREIGN KEY ([AspUserId]) REFERENCES [AspUser]([Id]),
	CONSTRAINT FK_AspUser_UserRight_UserRightId FOREIGN KEY ([UserRightId]) REFERENCES [UserRight]([Id])
)
