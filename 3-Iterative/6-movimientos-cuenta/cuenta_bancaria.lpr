program cuenta_bancaria;
var
  saldoInicial, monto, saldoFinal: real;
  movimiento: char;

begin
  writeln('Ingrese el saldo incial: ');
  readln(saldoInicial);

  writeln('Seleccione que movimiento va a realizar, D=Deposito / R=Retiro / F=Fin del movimiento');
  writeln('Ingresar (D / R / F): ');
  readln(movimiento);
  upcase(movimiento);

  while movimiento <> 'F' do
    begin
        if movimiento = 'D' then
           begin
             writeln('Cuanto dinero quiere depositar: ');
             readln(monto);
             saldoFinal := saldoInicial + monto;
           end
        else
            if movimiento = 'R' then
               begin
                 writeln('Cuanto dinero desea retirar: ');
                 readln(monto);
                 if saldoInicial > monto then
                    saldoFinal := saldoInicial - monto
                 else
                     writeln('Saldo insuficiente');
               end;
        writeln('Saldo actual $', saldoFinal:0:2);
        writeln('Ingrese un movimiento a realizar (D / R / F)');
        readln(movimiento);
        upcase(movimiento);
   end;

  readln();
end.

{Se conoce el saldo inicial de una cuenta bancaria y una serie de movimientos realizados, por cada
uno:
 - código de movimiento (D=depósito, R=retiro ó F= fin de datos).
 - monto
Escribir un programa que ingrese dichos datos y determine el saldo exacto de la cuenta después de
procesar las transacciones. }

