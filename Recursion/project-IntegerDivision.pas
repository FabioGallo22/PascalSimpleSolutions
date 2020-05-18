{Problem statement:
Implemente en Pascal una función recursiva que se corresponda con el siguiente planteo, para calcular la división
entera entre dos números A y B, utilizando como operaciones aritméticas la suma y la resta.
Planteo: División Entera
CB: Si A es menor que B, División Entera es cero.
CR: Si A es mayor o igual a B, División Entera es uno más la División Entera entre A-B y B}

program ejer2;

function divEntera(a,b:integer):integer;
begin
     if a < b then
       divEntera:= 0
     else
       divEntera:= divEntera(a-b, b) + 1;
end;

begin
  writeln('Res: ', divEntera(23,5));
  readln;
end.
