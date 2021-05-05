CREATE PROCEDURE [dbo].[SP_AspUser_CheckPassword]
	@identifier NVARCHAR(256),
	@password NVARCHAR(32)
AS
	SELECT Id
		FROM AspUser
		WHERE [Mail] = @identifier
			AND [Password] = [dbo].SF_SaltAndHash(@password,[Salt])
			AND [Disabled] IS NULL
RETURN 0
