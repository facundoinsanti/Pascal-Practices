program supera_anterior;

var
  N, i, anterior, numActual, cantSupera: integer;

begin
  cantSupera := 0;

  writeln('Ingrese la cantidad de numeros a procesar: ');
  readln(N);

  if (N>0) then
  begin
    writeln('Ingrese el numero 1: ');
    readln(anterior);

    for i:=2 to N do
    begin
      writeln('Ingrese el numero ', i, ':');
      readln(numActual);

      if (numActual>anterior) then
        cantSupera:=cantSupera+1;

      anterior:=numActual;
    end;

    writeln('La cantidad de veces que un numero supero al anterior es: ', cantSupera);
  end;

  readln;
end.




{ahora este Ingresar N números enteros, informar cuántas veces un número supera al anterior. }
