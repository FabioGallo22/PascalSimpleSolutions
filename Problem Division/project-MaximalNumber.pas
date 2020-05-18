{Problem statement:
Se dice que M es el número maximal para N, si M es el mayor número que puede formarse usando los
dígitos de N. Ejemplos: Si N=125345, el número maximal M es 554321; si N=2756, M es 7652.
	a) Realice una función que determine si un número es maximal.
	b) Realice una función que dado un número retorne el maximal que puede formarse utilizando sus dígitos.
	c) Escriba un programa en Pascal que lea dos números naturales a y b y muestre por pantalla todos
       los números Num comprendidos entre a y b que verifiquen la propiedad de ser maximal.
}
program project1;
var numPrueba:integer;
//a) Realice una función que determine si un número es maximal.
function esMaximal(num:integer):boolean;
var cont:boolean; antDig,digito:integer;
begin
     cont:= true;
     antDig := 0;
     while (num > 0) and (cont) do
     begin
       digito:=num mod 10;
       num := num div 10;
       if digito < antDig then
          cont := false;
       antDig := digito;
     end;

     esMaximal:=cont;
end;

//b) Realice una función que dado un número retorne el maximal que puede formarse utilizando sus dígitos.
function contarAparicionDigito(digito, num:integer):integer;
var cantidad: integer;
begin
     cantidad:=0;
     while(num>0)do
     begin
          if (digito = num mod 10)then
             cantidad:= cantidad + 1;
          num := num div 10;
     end;
     contarAparicionDigito:=cantidad;
end;

function formarMaximal(num:integer):integer;
var numMax,d,c, cantApa : integer;
begin
     numMax:=0;
     for d:=9 downto 0 do
     begin
          cantApa:=contarAparicionDigito(d,num);
          if cantApa > 0 then
          begin
            for c:= 1 to cantApa do
                numMax:=(numMax * 10) + d;
          end;
     end;
     formarMaximal:=numMax;
end;

//c) Escriba un programa en Pascal que lea dos números naturales a y b y muestre por pantalla todos
//los números Num comprendidos entre a y b que verifiquen la propiedad de ser maximal.


begin
     numPrueba:=802;
     if (esMaximal(numPrueba))then
        writeln('Es maximal')
     else
        writeln('No es maximal');

     writeln('Cantidad de veces q aparece 7 es: ', contarAparicionDigito(7, numPrueba));

     writeln('El num maxinal que se puede formar con ', numPrueba, ' es ', formarMaximal(numPrueba));

     readln;
end.
