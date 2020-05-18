{Problem statement:
Dado un número natural, definiremos como su número promedio al número que se obtiene de sumar sus dígitos
impares y restar sus dígitos pares.
Por ejemplo, el número promedio de 1227 es 1 – 2 – 2 + 7 = 4
Escriba el planteo recursivo e implemente en Pascal una función para obtener el número promedio de N.
}

program project1;
var numPrueba : integer;
function calcularNumProm(num: integer):integer;
var digito:integer;
begin
  if num > 0 then
  begin
       digito:=num mod 10;
       num:=num div 10;
       if digito mod 2 = 0 then
          calcularNumProm:= calcularNumProm(num) - digito
       else
          calcularNumProm:= calcularNumProm(num) + digito;
  end
  else
      calcularNumProm:= 0;
end;

begin
  numPrueba:=1827;
  writeln('El numero promedio de ', numPrueba, ' es: ', calcularNumProm(numPrueba));
  readln;
end.
