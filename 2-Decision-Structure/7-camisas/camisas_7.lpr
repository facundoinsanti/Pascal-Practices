program camisas_7;
var
  cantidad: word;
  sexo, talle: char;
  precioBase, subtotal, descuentoTalle, subtotalConDescuento, IVA, subtotalIVA,
    descuentoMayorista, total: real;

begin
  writeln('Ingrese que cantidad de camisas va a llevar: ');
  readln(cantidad);

  writeln('Ingrese sexo de la camisa H/M (Hombre/Mujer): ');
  readln(sexo);
  sexo:=upcase(sexo);

  writeln('Ingrese talle (S,N,L,X)');
  readln(talle);
  talle:=upcase(talle);

  //determinar el precio base
  if (sexo='H') then
  precioBase := 1000
  else if (sexo='M') then
       precioBase := 1200
       else
         begin
           writeln('Sexo invalido.');
         end;

  //calcular el subtotal
  subtotal:= cantidad * precioBase;

  //Aplicar el descuento del 5% si corresponde
  descuentoTalle:=0;
  if ((sexo='H') and (talle='S')) or ((sexo='M') and (talle='X')) then
       descuentoTalle:= subtotal * 0.05;

  subtotalConDescuento:= subtotal - descuentoTalle;

  //calcular el IVA del 21%
  IVA:= subtotalConDescuento * 0.21;
  subtotalIVA:= subtotalConDescuento + IVA;

  //Aplicar el descuento mayorista del 7% si corresponde
  descuentoMayorista:=0;
  if cantidad>12 then
       descuentoMayorista:= subtotalIVA * 0.07;

  total:= subtotalIVA - descuentoMayorista;

  //Mostrar resultados

  writeln('Subtotal: $', subtotal:0:2);
  writeln('Descuento por talle: $', descuentoTalle:0:2);
  writeln('IVA(21%): $', IVA:0:2);
  writeln('Descuento mayorista: $', descuentoMayorista:0:2);
  writeln('Importe final: $', total:0:2);

  readln();

end.

