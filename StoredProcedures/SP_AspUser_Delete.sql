CREATE PROCEDURE [dbo].[SP_AspUser_Delete]
	@id INT
AS
	UPDATE AspUser
		SET [Disabled] = GETDATE()
		WHERE [Id] = @id
RETURN 0
