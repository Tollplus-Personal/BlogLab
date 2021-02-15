CREATE PROCEDURE [dbo].[Account_GetByUsername]
	@NormalizedUsername VARCHAR(20)
AS
	SELECT 
		 [ApplicationUserId]
		,[Username]
		,[NormalizedUsername]
	    ,[Email]
	    ,[NormalizedEmail]
	    ,[Fullname]
	    ,[PasswordHash]
	FROM 
		[dbo].[ApplicationUser] t1
	WHERE 
		t1.[NormalizedUsername] = @NormalizedUsername


