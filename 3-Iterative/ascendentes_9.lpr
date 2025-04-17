program ascendentes_9;
var
  arch: text;
  num, numA: integer; //num actual, numAnterior
  ascendente: boolean;

begin
  //input

  {Con assign lo que hago es asociar la variable arch con el archivo físico 'numeros.txt'}
  assign(arch, 'numeros.txt');
  reset(arch);



  numA := -9999;
  {Doy un número muy bajo, entonces el primero que lea el archivo siempre será el mayor}
  ascendente := true;

  //cálculos
  while not eof(arch) do
  begin
    readln(arch, num);
    {Lee el archivo arch y lo guarda en la variable num}

    if num < numA then
       ascendente := false
    else
        numA := num;

  end; {Termina de leer el archivo}

  //Output
  close(arch);

  if ascendente then
     writeln('Los numeros son ascendentes')
  else
      writeln('Los numeros no son ascendentes');

  readln();


end.

{ Dado un conjunto de números leídos desde un archivo, informar si están ordenados en forma
ascendente }

