program comienza_letra;
var
  arch: text;
  letra, car: char;
  contador: integer;
  inicioPalabra: boolean;

begin
  assign(arch, 'frase.txt'); // Asocia el archivo al nombre
  reset(arch); // Abre el archivo en modo de lectura

  writeln('Ingrese la letra que quiera analizar: ');
  readln(letra);
  letra := upcase(letra);

  contador := 0;
  inicioPalabra := true;   // El primer caracter puede ser incio de palabra

  car := ' ';

  {Leer caracter por caracter}
  while not eof(arch) and (car <> '.') do
  begin
   read(arch, car);
   car := upcase(car);  //Tambien paso a mayus el caracter leido

    if inicioPalabra and (car in ['A'..'Z']) then
    begin
      if car = letra then
         begin
         contador := contador + 1;

         inicioPalabra := false; //porque ya estoy en una palabra
         end
    end
    else
        if car = ' ' then
           inicioPalabra := true;
    {Si termino en blanco es el final de una palabra, entonces el prox. caracter
    puede ser el inicio de de una nueva palabra}


    read(arch, car);
    car := upcase(car);


  end;
  writeln('Cantidad de palabras que comienzan con la letra ',letra,' es de: ',contador, ' palabras.');
  readln();

end.

