program factorial_4;

function factorial(numero: word): word;
begin
     if (numero=0) or (numero=1) then
        factorial := 1
     else
        factorial := numero*factorial(numero-1);

end;


var
   n: word;


begin
     writeln('Ingrese un numero para calcular su factorial');
     readln(n);


     writeln('El factorial de ', n, ' es: ', factorial(n));

     readln();

end.







{Desarrollar una función para calcular el factorial de un número}
