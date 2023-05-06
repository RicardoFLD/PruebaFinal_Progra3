USE [VBilletera]

GO
/****** Object:  StoredProcedure [dbo].[spSaveFavoriteBook]    Script Date: 23/03/2023 04:39:15 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[spSaveTarjeta] 
	
	@bookId int,
	@Email varchar(100)

AS
BEGIN

INSERT INTO dbo.Tarjetas VALUES(@NumeroTa, @Email)

END
