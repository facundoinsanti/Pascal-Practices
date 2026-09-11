program supermercado_17;

var
  nomCliente, clienteMasOfertas: String[20];
  precioBase, montoTotal, totalDescuento, precioFinal: real;
  esPromocion: char;
  cantOfertasCliente, cantArticulos, i: integer;
  maxOfertas, cantClientesSoloOfertas: integer;

begin
  maxOfertas := -1;
  cantClientesSoloOfertas := 0;

  writeln('Ingrese el nombre del cliente ("****" para finalizar): ');
  readln(nomCliente);

  while (nomCliente <> '****') do
  begin
    montoTotal := 0;
    totalDescuento := 0;
    cantOfertasCliente := 0;

    writeln('Ingrese la cantidad de articulos comprados: ');
    readln(cantArticulos);

    for i := 1 to cantArticulos do
    begin
      writeln('Precio base del articulo: ');
      readln(precioBase);

      writeln('Esta en promocion (S/N)?');
      readln(esPromocion);

      montoTotal := montoTotal + precioBase;

      if (UpCase(esPromocion) = 'S') then
      begin
        cantOfertasCliente := cantOfertasCliente + 1;
        totalDescuento := totalDescuento + (precioBase * 0.10);
      end;
    end;

    precioFinal := montoTotal - totalDescuento;

    writeln('Monto total: $', montoTotal:0:2);
    writeln('Total descuento: $', totalDescuento:0:2);
    writeln('Precio final a pagar: $', precioFinal:0:2);

    if (cantOfertasCliente > maxOfertas) then
    begin
      maxOfertas := cantOfertasCliente;
      clienteMasOfertas := nomCliente;
    end;

    if (cantArticulos > 0) and (cantOfertasCliente = cantArticulos) then
      cantClientesSoloOfertas := cantClientesSoloOfertas + 1;

    writeln('Ingrese el nombre del cliente ("****" para finalizar): ');
    readln(nomCliente);
  end;

  if (maxOfertas > 0) then
    writeln('El cliente que compro mayor cantidad de articulos en oferta fue: ', clienteMasOfertas, ' (', maxOfertas, ' articulos)')
  else
    writeln('Ningun cliente compro articulos en oferta.');

  writeln('Cantidad de clientes que compraron SOLO articulos en oferta: ', cantClientesSoloOfertas);

  readln;
end.

