CREATE PROCEDURE [dbo].[SP_AspUser_GetById]
	@id INT
AS
	SELECT * FROM V_AspUser_Enable WHERE Id = @id
RETURN 0
