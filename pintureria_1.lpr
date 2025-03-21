program pintureria_1;

var
  N: integer;

begin
  writeln('Ingrese la cantidad de pintura requerida (litros): ');
  readln(N);

  write('Debe comprar: ');
  write(N*(9.5/4.5):0:2);

  readln();
end.

