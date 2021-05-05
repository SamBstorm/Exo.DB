CREATE PROCEDURE [dbo].[SP_AspUser_Update]
	@id INT,
	@password NVARCHAR(32),
	@lastname NVARCHAR(64),
	@firstname NVARCHAR(64),
	@birthdate DATE,
	@regnational CHAR(11),
	@bio NVARCHAR(120)
AS
	UPDATE AspUser
	SET LastName = @lastname,
		FirstName = @firstname,
		[Password] = [dbo].SF_SaltAndHash(@password,[Salt]),
		BirthDate = @birthdate,
		RegNational = @regnational,
		Bio = @bio
	WHERE Id = @id
		AND [Disabled] IS NULL
RETURN 0
