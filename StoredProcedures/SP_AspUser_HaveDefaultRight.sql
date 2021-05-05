CREATE PROCEDURE [dbo].[SP_AspUser_HaveDefaultRight]
	@userid INTEGER
AS
	SELECT AspUserId FROM AspUser_UserRight WHERE UserRightId =(
		SELECT Id FROM UserRight WHERE [Right] LIKE 'Default'
	)
	AND AspUserId = @userid
RETURN 0
