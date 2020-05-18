{Problem statement:
Un número N es creciente si sus dígitos están dispuestos de forma creciente.
Esto es, N es creciente (N = dm dm-1 … d1 d) si se cumple que para todo i (0≤ i ≤m) se verifica di+1 ≤ di.

Por ejemplo: 1227, 359, 88 o 139 son números crecientes, y 1221 no es creciente.
  Planteo: Creciente
    CB: Si N tiene un solo dígito, N es creciente.
    CR: Si N tiene más de un dígito, N es creciente si y solo si, el último dígito de N es mayor o igual al
    anteúltimo dígito de N, y además, N’ es creciente. N’ es el número N sin su último dígito.
Implemente un procedimiento o una función que se corresponda con el planteo dado para determinar si un número
N es creciente.
}

program project1;
var numPrueba:integer;

function esCreciente(num:integer):boolean;
var ultimo, anteUlt:integer;
begin
    if (num <10) then
       esCreciente:=true
    else
    begin
        ultimo:=num mod 10;
        num := num div 10;
        anteUlt:=num mod 10;
        if (ultimo >= anteUlt) and esCreciente(num)then
           esCreciente:=true
        else
           esCreciente:=false;
    end;
end;

begin
  numPrueba:=5;
  if (esCreciente(numPrueba)) then
     writeln('El num ', numPrueba, ' es creciente.')
  else

     writeln('El num ', numPrueba, ' NO es creciente.');
  readln;
end.
