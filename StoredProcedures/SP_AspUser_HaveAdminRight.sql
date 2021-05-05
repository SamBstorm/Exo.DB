CREATE PROCEDURE [dbo].[SP_AspUser_HaveAdminRight]
	@userid INTEGER
AS
	SELECT AspUserId FROM AspUser_UserRight WHERE UserRightId =(
		SELECT Id FROM UserRight WHERE [Right] LIKE 'Admin'
	)
	AND AspUserId = @userid
RETURN 0
