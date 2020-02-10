SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Kapil Dhokai
-- Create date: 07 March, 2012
-- Description:	Log Custom Link Activity
-- =============================================
ALTER PROCEDURE [dbo].[fv_CustomLinkActivity] 
	-- Add the parameters for the stored procedure here
	@pSessionId VARCHAR(15)
	,@pClientId INT
	,@pUserId INT
	,@pUserIp VARCHAR(21)
	,@pHttpReferer VARCHAR(2000)
	,@pCustomLink VARCHAR(2000)
	,@ClientBrowserAgent VARCHAR(255)  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [CustomLinkActivity]
		([dtTm], [SessionID], [ClientID], [UserID], [UserIP], [HTTPReferer], [CustomLinkURL], [ClientBrowserAgent])
		VALUES(GETDATE(), @pSessionId, @pClientId, @pUserId, @pUserIp, @pHttpReferer, @pCustomLink, @ClientBrowserAgent)
END

GO
