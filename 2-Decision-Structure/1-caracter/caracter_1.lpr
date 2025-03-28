program caracter_1;
var
  car:char;

begin
  writeln('Ingrese un caracter: ');
  readln(car);

  case car of 'a'..'z','A'..'Z':

       if(car=upcase(car)) then
          writeln('Es mayuscula')
       else
          writeln('Es minuscula');

   else
       writeln('Es otro');


  end;

  readln();

end.


{ Informar si un caracter ingresado es letra minúscula,
mayúscula u otro cualquiera }
