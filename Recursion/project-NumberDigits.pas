{Problem statement:
Escriba un planteo recursivo y luego implemente en Pascal una función recursiva que se corresponda con ese
planteo, para que dado un entero N:
	a) Calcule la cantidad de dígitos de N.
	b) Calcule el mayor dígito de N.
}
program project1;
var numPrueba:integer;

// a) Calcule la cantidad de dígitos de N.
function contarDigitos(num:integer):integer;
begin
     if num < 10 then
         contarDigitos:=1
     else
         contarDigitos:= contarDigitos(num div 10) + 1;
end;

// b) Calcule el mayor dígito de N.
function calcularMayorUnParametro(num:integer):integer;
var m:integer;
  function calcularMay(num, mayor:integer):integer;
  var digito:integer;
  begin
       if num >0 then
       begin
         digito:=num mod 10;
         if (digito > mayor) then
             mayor:=digito;
         mayor:=calcularMay(num div 10, mayor);
       end;
       calcularMay:=mayor;
  end;
begin
  m:=-(MaxInt);
  calcularMayorUnParametro:= calcularMay(num,m);
end;

begin
     numPrueba:=45611;
     writeln('La cantidad de digitos del  ', numPrueba, ' es ', contarDigitos(numPrueba));

     writeln('El mayor digito de ', numPrueba, ' es ', calcularMayorUnParametro(numPrueba));

     readln;
end.
