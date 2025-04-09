program sueldos_2;
var
  emp, ant: byte;
  nom, nomMax: string;
  sueldoNeto, adicional, sueldoBruto, cargas, sueldoMax: real;
  i: integer;

const
  sueldoBasico = 15000;
  seguro = 500;

begin
  writeln('Ingrese la cantidad de empleados: ');
  readln(emp);

  for i := 1 to emp do
  begin
    writeln('Ingrese nombre: ');
    readln(nom);

    writeln('Ingrese antiguedad: ');
    readln(ant);

    if (5 = ant) or (5 > ant) then
      adicional := sueldoBasico * 0.05
    else if (10 = ant) or (10 > ant) then
            adicional := sueldoBasico * 0.08
         else if (15 = ant) or (15 > ant) then
                 adicional := sueldoBasico * 0.12
              else
                      adicional := sueldoBasico * 0.20;
    sueldoBruto := sueldoBasico + adicional;

    cargas := sueldoBruto * 0.11;

    sueldoNeto := sueldoBruto - cargas - seguro;

    if i = 1 then
     begin
      nomMax := nom;
      sueldoMax := sueldoNeto;
     end;

    if sueldoNeto > sueldoMax then
     begin
       nomMax := nom;
       sueldoMax := sueldoNeto;
     end;


  writeln(nom, ' $', sueldoNeto:0:2);
  end;

 writeln('El empleado que mas cobra es: ', nomMax);
 writeln('El monto promedio es: ', (sueldoNeto / emp):0:2);

 readln()


end.

