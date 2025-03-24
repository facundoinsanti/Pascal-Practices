program sueldo_3;

var
  hs_trabajadas: word;
  sueldo_bruto, sueldo_neto: real;

const
  sueldo_ph=200;

begin


  write('Ingrese la cantidad de horas trabajadas: ');
  readln(hs_trabajadas);

  sueldo_bruto:=sueldo_ph*hs_trabajadas;

  writeln('Su sueldo bruto es de: ',(sueldo_bruto):0:2);

  sueldo_neto:= sueldo_bruto-((sueldo_bruto*0.11)+(sueldo_bruto*0.05));

  writeln('Y su sueldo neto es de: ',(sueldo_neto):0:2);


  readln();
end.

