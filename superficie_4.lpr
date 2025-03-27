program superficie_4;
    var
      ancho_a_embaldosar, alto_a_embaldosar: real;

    const
      ancho_terreno=10;
      alto_terreno=30;
      sup_baldosa=0.0625;

begin
  writeln('Ingresar (Ancho, Alto) a embaldosar: ');
  readln(ancho_a_embaldosar, alto_a_embaldosar);

  writeln('La superficie a embaldosar es de: ',
  (ancho_a_embaldosar*alto_a_embaldosar):0:2,' metros cuadrados');

  writeln('Usted necesita: ',

  ((ancho_a_embaldosar*alto_a_embaldosar)/sup_baldosa):0:2,' baldosas');

  readln();

end.


{ ) Dado un terreno de 10 x 30 se quiere embaldosar una superficie de N x M.
Calcular e informar:
Qué superficie representa del total del terreno.Si cada baldosa es de
0.25 x 0.25. ¿Cuántas se deben comprar para hacer el trabajo?
