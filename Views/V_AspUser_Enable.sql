CREATE VIEW [dbo].[V_AspUser_Enable]
	AS	SELECT 
			[Id],
			[Mail],
			'********' AS [Password],
			[LastName],
			[FirstName],
			[BirthDate],
			[RegNational],
			[Bio]
		FROM AspUser
		WHERE [Disabled] IS NULL
