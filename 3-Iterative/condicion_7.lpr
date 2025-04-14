program condicion_7;
var
  nombre, condicion: string[50];
  cantAlum, cantApro: byte;
  nota1, nota2, nota3, promAlumno: real;

begin
   cantAlum := 0;
   cantApro := 0;

  writeln('Ingrese el nombre del alumno o *** para fin de datos: ');
  readln(nombre);

  while (nombre <> '***') do
  begin
    cantAlum := cantAlum + 1;

    writeln('Ingrese nota 1: ');
    readln(nota1);

    writeln('Ingrese nota 2: ');
    readln(nota2);

    writeln('Ingrese nota 3: ');
    readln(nota3);

    promAlumno := (nota1 + nota2 + nota3) / 3;
    if (promAlumno = 4) or (promAlumno > 4) then
       begin
         writeln('El alumno ', nombre, ' se encuentra APROBADO con ', promAlumno:0:2);
         cantApro := cantApro + 1;
       end

    else
     writeln('El alumno ', nombre, ' se encuentra DESAPROBADO con ', promAlumno:0:2);

    writeln('Ingrese el nombre del alumno o *** para fin de datos: ');
    readln(nombre);

  end;

  if (cantAlum <> 0) then
     writeln('El porcentaje de alumnos aprobados es ', (cantApro/cantAlum)*100:0:2,' %');

  readln();



end.

{ Dado un conjunto de alumnos, no se sabe cuántos son, de cada uno de ellos se conoce:
- Nombre (‘***’ indica fin de datos)
- Nota1, Nota2 y Nota3
Ingresar la información e informar:
a) El promedio de cada alumno y su condición:
UNMDP – FI Programación I
Pág. 2
Numero Frecuencia
2 2
3 4
7 1
9 3
− ‘Aprobado’ si su promedio es mayor o igual a 4
− ‘Desaprobado’ si su promedio es menor a 4.
 b) Porcentaje de alumnos Aprobados
}

