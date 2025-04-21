program contiene_letra;
var
  arch: text;
  letra, car: char;
  contador: integer;
  contieneLetra, dentroPalabra: boolean;

begin
  assign(arch, 'frase.txt');
  reset(arch);

  writeln('Ingrese la letra que quiera analizar: ');
  readln(letra);
  letra := upcase(letra);

  contador := 0;
  contieneLetra := false;
  dentroPalabra := false;

  read(arch, car);
  car := upcase(car);


  while not eof(arch) and (car <> '.') do
  begin
    if car in ['A'..'Z'] then
    begin
         dentroPalabra := true;
         if car = letra then
            contieneLetra := true;
    end
    else
        if car = ' ' then
        begin
             if dentroPalabra and contieneLetra then
             contador := contador + 1;

             dentroPalabra := false;
             contieneLetra := false;
        end;

    read(arch, car);
    car := upcase(car);

  end;

  { Evaluo la última palabra si el archivo no termina con espacio }
  if dentroPalabra and contieneLetra then
    contador := contador + 1;
  writeln('Cantidad de palabras que comienzan con la letra ',letra,' es de: ',contador, ' palabras.');

  close(arch);
  readln();

end.

