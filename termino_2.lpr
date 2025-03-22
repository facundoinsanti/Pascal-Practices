program termino_2;
var
  termino:byte;

begin
  writeln('Ingrese un numero para asignarlo a la sucesion: ');
  readln(termino);

  write('El k-esimo termino es:  ');
  writeln(1+3*(termino-1));

  write('La diferencia entre el termino y su siguiente es: ');
  write(1+3*(termino)-1+3*(termino-1));

  readln();
end.


{ Sea la siguiente sucesión: an = a1 + 3 (n-1), indica que es el n-ésimo término, y a1=1. Se pide:
a) ¿Cuál es el K-ésimo término, siendo K un valor ingresado por teclado?
b) ¿Cuál es la diferencia entre los términos k y (k+1)?  }

