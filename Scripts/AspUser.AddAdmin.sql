EXEC SP_AspUser_Insert	@mail = 'admin@admin.adm',
						@password = 'Admin1234#',
						@lastname = 'Admin',
						@firstname = 'Admin',
						@birthdate = '01-01-01',
						@regnational = '01010199999',
						@bio = 'Administrator account'


DECLARE @adminID INTEGER = (SELECT Id FROM AspUser WHERE Mail LIKE 'admin@admin.adm')

EXEC SP_UserRight_GrantDefault @userid = @adminID

EXEC SP_UserRight_GrantAdmin @userid = @adminID
