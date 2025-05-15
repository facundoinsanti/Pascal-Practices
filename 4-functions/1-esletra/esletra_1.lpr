program esletra_1;
function esLetra(letra: char): boolean;
begin
     letra := upcase(letra);
     if (letra in ['A'..'Z']) then
        esLetra := True
     else
         esLetra := False;
end;
var
  car: char;

begin
  writeln('Ingrese un caracter para ver si es o no letra: ');
  readln(car);

  if esLetra(car) then
     writeln(car, ' es una letra')
  else
     writeln(car, ' no es una letra');

  readln();
end.

