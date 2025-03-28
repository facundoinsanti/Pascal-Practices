program fechas_4;
var
  d1,d2,m1,m2, mes_antiguo: byte;
  a1,a2: word;

begin
  writeln('Ingrese la primer fecha (dia,mes,ano): ');
  readln(d1,m1,a1);

  writeln('Ingrese la segunda fecha (dia,mes,ano): ');
  readln(d2,m2,a2);

  //inicializo variable
  mes_antiguo:=0;

  //comparacion de fechas
  if a1<a2 then
  begin
    writeln('La primera fecha es mas antigua');
    mes_antiguo:=m1;
  end
  else if a1>a2 then
       begin
         writeln('La segunda fecha es mas antigua');
         mes_antiguo:=m2;
       end
  //si los años son iguales, comparo los meses
       else if m1<m2 then
            begin
              writeln('La primera fecha es mas antigua');
              mes_antiguo:=m1;
            end
            else if m1>m2 then
                 begin
                   writeln('La segunda fecha es mas antigua');
                   mes_antiguo:=m2;
                 end
                 //comparo dias
                 else if d1<d2 then
                      begin
                        writeln('La primera fecha es mas antigua');
                        mes_antiguo:=m1;
                      end
                      else if d1>d2 then
                           begin
                             writeln('La segunda fecha es mas antigua');
                             mes_antiguo:=m2;
                           end;



  //determino el trimestre
  case mes_antiguo of
  1..3: writeln('1er TRIMESTRE');
  4..6: writeln('2do TRIMESTRE');
  7..9: writeln('3er TRIMESTRE');
  10..12: writeln('4to TRIMESTRE');
  end;

  readln();


end.


{Dadas dos fechas (dia, mes y año)
indicar cuál es la más antigua y a qué trimestre pertenece.    }
