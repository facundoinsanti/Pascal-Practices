program facturacion;
type
  st32 = string[32];

//Función que calcula el IVA según el contribuyente
function impuesto(tipo: char; fact:real):real;
const
  ivaRI = 0.21; // Iva para responsables inscriptos
  iva = 0.31; // Iva + 10%
begin
     if tipo = 'S' then  // Si el tipo es 'S', es Responsable Inscripto
        impuesto := fact * ivaRi
     else
        impuesto := fact * iva;
end;
var
  nombre, nombreMenosFacturacion : st32;
    tipo : char;
    fact, menorFacturacion : real;
    meses : byte;

begin
  begin
    menorFacturacion := 9999999999;
    writeln('Cuantos meses de facturacion desea ver?');
    readln(meses);
    repeat
    writeln('Ingrese nombre de la empresa o "-" para terminar la carga de datos');
    readln(nombre);
    if nombre <> '-' then
        begin
        writeln('Es responsable inscripo?  (S / N)');
        readln(tipo);
        tipo := upcase(tipo);
        writeln('Cuanto facturo?');
        readln(fact);

        if (fact < menorFacturacion) and (tipo <> 'S') then
            begin
                menorFacturacion := fact;
                nombreMenosFacturacion := nombre;
            end;

        writeln(nombre,' RI: ', tipo, ' iva pagado: ', impuesto(tipo, fact):0:2);
        end

    until nombre = '-';

    writeln('Quien facturo menos de los no RI fue: ', nombreMenosFacturacion);
    readln();
end.
end.

