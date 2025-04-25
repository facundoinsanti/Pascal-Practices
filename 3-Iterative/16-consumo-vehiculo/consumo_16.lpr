program consumo_16;
var
arch: text;

auto, autoMasViajes: string[6];
contViajes, masViajes: integer;

km, distanciaTotal, litros, menorDistancia, ConsumoMenorDistancia, num: real;



begin
  assign(arch, 'datos.txt');
  reset(arch);

  num := 99;     // Inicializarlo me asegura que el while funcione la primera vez
  contMasViajes := 0;
  masViajesTuvo := 0;
  consumoMenorRecorrido := 0.0;
  menorDistancia := 99999; // Lo que recorrio el que menor distancia hizo

  //estructura general
  while not eof(arch) do
  begin
    read(arch, auto); // Lo primero del archivo → guarda en 'auto' (NVH 031)
    read(arch, consumo); //Lo segundo → guarda en 'litros' (120)

    //inicializo contadores
    contMasViajes := 0;
    contConsumo := 0;

    read(arch, num); //Lo tercero → km del primer viaje (10)

    while (num <> 0) do
          contMasViajes := contMasViajes + 1;
          distanciaTotal := distanciaTotal + num;

          read(arch, num); //lee el siguiente valor (120, luego 100, luego 80)
          //cuando lea un 0 termina ese auto y pasa al siguiente
  end;
  // a
  writeln(auto, ' consumio ', consumio:0:2, ' litros de nafta en ', distanciaTotal:0:2, 'kms');

  // b
  if (contMasViajes > masViajesTuvo) then
     begin
       autoMasViajes := auto;
       masViajesTuvo := contMasViajes;
     end;

  // c
  if (distanciaTotal < menorDistancia) then
     begin
       menorDistancia := DistanciaTotal;
       consumoMenorRecorrido := consumo;
     end;

     readln(arch); // pasa a la siguiente linea

  end;

  //b
  writeln('Hizo mas viajes el de patente: ', autoMasViajes);

  //c
  writeln(('El que recorrio la menor cantidad de kms consumio: ', consumoMenorRecorrido:0:2);

  close(arch);
  readln();

end.


{
Una empresa de autos de alquiler posee N vehículos y ha registrado la siguiente información de los
viajes realizados, por cada uno de ellos:
 Patente
 Total de litros de combustible consumidos
Y por cada viaje realizado
 - Kilómetros recorridos. (0 indica fin de datos).
Se pide ingresar los datos e informar:
a) Por cada vehículo el consumo que tuvo (cantidad de litros por km. recorrido)
b) Patente del vehículo que más viajes hizo.
c) Total de litros consumidos por el auto que hizo la menor cantidad de kms. }

