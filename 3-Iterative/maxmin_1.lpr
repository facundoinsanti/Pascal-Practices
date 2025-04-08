program maxmin_1;
var
cantNum, max, posMax, contMax, minImpar, num, i, min: integer;
hayImpar: boolean;

begin
contMax := 0;
hayImpar := false;

writeln('Ingrese cuantos numeros quiere ingresar: ');
readln(cantNum);

for i := 1 to cantNum do
 begin
      writeln('Ingrese un numero para calcular: ');
      readln(num);

    if (i = 1) then
       max := num;

    if (num > max) then
       begin
         max := num;
         contMax := 1;
       end
    else
        if (num = max) then
           contMax := contMax + 1;

    if (not hayImpar) and ((num mod 2) <> 0) then
  {"Si todavía no encontré ningún impar y el número actual es impar, entonces"}
        begin
            min := num;
            hayImpar := true;
        end;
 end;

 writeln(max, ' es el mayor y aparece ', contMax, ' veces.');

 if hayImpar then
    writeln(min, ' es el numero menor.')
 else
   writeln('No hay número minimo');

 readln();

end.

