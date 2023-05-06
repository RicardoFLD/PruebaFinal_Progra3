USE [VBilletera]
GO
/****** Object:  StoredProcedure [dbo].[GetTarjetas]    Script Date: 6/5/2023 04:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE spSaveTarjeta
  @Foto varchar(50), 
  @Banco varchar(50),
  @Emisor varchar(50),
  @Dueño varchar(50), 
  @NumeroTarjeta int,
  @codigoCVV int,
  @fechaExp date
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Tarjetas(Foto, Banco, Emisor, Dueño, NumeroTarjeta,codigoCVV, fechaExp)
    VALUES (  @Foto, @Banco, @Emisor, @Dueño,  @NumeroTarjeta, @codigoCVV, @fechaExp)
END
