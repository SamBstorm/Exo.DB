CREATE PROCEDURE [dbo].[SP_AspUser_Insert]
	@mail NVARCHAR(256),
	@password NVARCHAR(32),
	@lastname NVARCHAR(64),
	@firstname NVARCHAR(64),
	@birthdate DATE,
	@regnational CHAR(11),
	@bio NVARCHAR(120)
AS
	DECLARE @uid UNIQUEIDENTIFIER;
	SET @uid = NEWID();
	INSERT INTO AspUser(
		[Mail],
		[Password],
		[Salt],
		[LastName],
		[FirstName],
		[BirthDate],
		[RegNational],
		[Bio])
	OUTPUT inserted.[Id]
	VALUES (
		@mail,
		[dbo].SF_SaltAndHash(@password,@uid),
		@uid,
		@lastname,
		@firstname,
		@birthdate,
		@regnational,
		@bio)
RETURN 0
