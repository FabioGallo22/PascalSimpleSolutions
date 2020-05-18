{Problem statement:
Escriba un planteo recursivo y luego implemente en Pascal una función recursiva para que dado un número
natural encuentre el número AIMPAR que resulta de reemplazar cada dígito par por su sucesor.
Por ejemplo, si N=11245, el número AIMPAR es 11355.
Si N=1218, el número AIMPAR ES 1319.
(Este ejercicio podrá ser entregado al asistente para su corrección)}
program project1;
var numPrueba: integer;

function calcularAImpar(num : integer): integer;
var digito:integer;
begin
     if num > 0 then
     begin
       digito:=num mod 10;
       if digito mod 2 = 0 then
          calcularAImpar:= (calcularAImpar(num div 10)*10) + (digito + 1)
        else
          calcularAImpar:= (calcularAImpar(num div 10)*10) + digito ;
     end
     else
       calcularAImpar:=0;
end;

begin
     numPrueba:=7;
     writeln('El num AImpar de ', numPrueba, ' es ', calcularAImpar(numPrueba));
     readln;
end.
