program TPInicial_1a;

var
  N, i, contador: integer;
  suma, promedio: real;
  numeros: array[1..100] of integer; //Declaro un arreglo de capacidad maxima de 10o numeros.

begin
  // pido la cantidad de numeros
  writeln('Ingrese la cantidad de numeros (N) ');
  readln(N);

  // inicializo variables
  suma:=0;
  contador:=0;

  //pido los N numeros
  writeln('Ingrese los', N ,'numeros:');
  for i:= 1 to N do
  begin
    readln(numeros[i]);
    suma:= suma + numeros[i];
  end;

  // Calculo el promedio
  promedio:= suma / N;

  //Cuento cuantos superan el promedio
  for i:=1 to N do
  begin
    if numeros[i]>promedio then
    contador:= contador + 1;
  end;

  //Muestro el resultado
  writeln('El promedio es: ', promedio:02);
  writeln('Cantidad de numeros que superan el promedio: ', contador);
  readln;



end.

