CREATE PROCEDURE [dbo].[SP_UserRight_GrantAdmin]
	@userid INTEGER
AS
	IF NOT EXISTS (
					SELECT * 
					FROM AspUser_UserRight 
					WHERE UserRightId = (SELECT Id 
											FROM UserRight 
											WHERE [Right] LIKE 'Admin')
					AND AspUserId = @userid)
		INSERT INTO AspUser_UserRight VALUES (@userid,
			(SELECT Id 
			FROM UserRight 
			WHERE [Right] LIKE 'Admin'))
RETURN 0
