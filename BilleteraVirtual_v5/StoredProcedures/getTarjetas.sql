create procedure GetTarjetas

  @Foto varchar(50), 
  @Banco varchar(50),
  @Emisor varchar(50),
  @Dueño varchar(50), 
  @NumeroTarjeta int,
  @codigoCVV int,
  @fechaExp date

 as

 Begin

  select Foto, Banco, Emisor, Dueño, NumeroTarjeta, codigoCVV, fechaExp

   from Tarjetas

   where NumeroTarjeta= @NumeroTarjeta;

   END

 GO