USE [VBilletera]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spSaveTarjeta] 
	
  @Foto varchar(50), 
  @Banco varchar(50),
  @Emisor varchar(50),
  @Dueño varchar(50), 
  @NumeroTarjeta int,
  @codigoCVV int,
  @fechaExp date

AS
BEGIN

INSERT INTO dbo.Tarjetas VALUES(@Foto, @Banco, @Emisor, @Dueño, @NumeroTarjeta, @codigoCVV , @fechaExp)

END
