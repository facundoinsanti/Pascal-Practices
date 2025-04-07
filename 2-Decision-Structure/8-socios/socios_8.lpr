program socios_8;
var
  edad, dep, pago: Byte;
  practicaPileta: char;
  cuotaBasica, costosAdicionales, costoPileta, subtotal, recargoDia, precioFinal: real;
begin


   writeln('Ingrese la edad del socio: ');
   readln(edad);

   writeln('Ingrese la cantidad de deportes adicionales: ');
   readln(dep);

   writeln('Practica pileta escuela? (S/N)');
   readln(practicaPileta);
   upcase(practicaPileta);

   writeln('Ingrese el dia de pago (1 al 31): ');
   readln(pago);

   {Determinar la cuota basica}
   if edad > 18 then
   cuotaBasica := 1800
   else if (edad > 13) and (edad <= 18) then
           cuotaBasica := 1200
        else if (edad > 5) and (edad <= 12) then
                cuotaBasica := 750
             else
                 cuotaBasica := 0;
   //Los if else deben alinearse y NO llevar ;  ej cuotaBasica := 1200 NO ;

   {Calcular los costos adicionales}
   costosAdicionales:= dep * 250;

   if practicaPileta = 'S' then
   costoPileta := 800
   else
   costoPileta := 0;

   //siempre = 'S' debe ir entre comillas

   subtotal := cuotaBasica + costosAdicionales + costoPileta;

   {Recargo 5%}
   recargoDia := subtotal * 0.05;

   if pago > 15 then
   precioFinal := subtotal + recargoDia
   else
   precioFinal := subtotal;

   {Mostrar}

   writeln('Total a pagar: ', precioFinal:0:2);

   readln();

end.

