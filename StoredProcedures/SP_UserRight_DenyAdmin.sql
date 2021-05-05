CREATE PROCEDURE [dbo].[SP_UserRight_DenyAdmin]
	@userid INTEGER
AS
	IF EXISTS (
					SELECT * 
					FROM AspUser_UserRight 
					WHERE UserRightId = (SELECT Id 
											FROM UserRight 
											WHERE [Right] LIKE 'Admin')
					AND AspUserId = @userid)
		DELETE FROM AspUser_UserRight 
		WHERE AspUserId = @userid
			AND UserRightId = (SELECT Id 
								FROM UserRight 
								WHERE [Right] LIKE 'Admin')
RETURN 0
