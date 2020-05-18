{Problem statement:
Considere el siguiente planteo recursivo que resuelve el problema de calcular la
cantidad de dígitos presentes en un número N que sean menores a un dígito D dado.

Por ejemplo, MENORES (123456, 4) retornará 3, MENORES (8756, 5) retornará 0 y MENORES (123123, 4) retornará 6.
Implemente en Pascal una función que respete el planteo propuesto.
MENORES:
Caso Base: si N es igual a 0, MENORES de N es 0.
Caso General: si N es mayor a 0 entonces, si el último dígito de N es menor a D, MENORES de N es
MENORES de N’ más 1, sino MENORES de N es MENORES de N’. Donde N’ es N sin su último dígito.
}

program project1;
var numPrueba, digitoPrueba:integer;

function contarDigitosPresentes(num, dig: integer):integer;
begin
    if num = 0 then
       contarDigitosPresentes:= 0
    else
    begin
      if num mod 10 < dig then
         contarDigitosPresentes:= contarDigitosPresentes(num div 10, dig) + 1
      else
         contarDigitosPresentes:= contarDigitosPresentes(num div 10, dig);
    end;
end;

begin
  numPrueba:=123456;
  digitoPrueba:=6;
  writeln('En el num ', numPrueba, ' hay ', contarDigitosPresentes(numPrueba,digitoPrueba), ' digitos menores a ', digitoPrueba);
  readln;
end.
