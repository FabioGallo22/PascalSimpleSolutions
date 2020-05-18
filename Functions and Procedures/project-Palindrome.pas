{ Problem statement:
	Given a integer number provided for the user, determine if it is palindrome or not.
}

program project1;
var
   num: integer;
   resp : boolean;

function Invertir( num: integer ):integer;
 {Objetivo: Invierte el orden de los dígitos del número entero Num}
  var
     inv: integer;
  begin
    inv := 0;
    while num > 0 do
    begin
      inv := inv * 10 + (num mod 10);
      num := num div 10;
    end;
    Invertir := inv;
end;

function esCapicua(num: integer):boolean;
     {Retorna true si es capicua, retorna false caso contrario}
var
   numInv, digito, digInv : integer;
   respuesta : boolean ;
begin
   numInv:= Invertir(num);
   respuesta := true;
   while (num > 0) and (respuesta = true)do
   begin
        digito := num mod 10;
        num := num div 10;
        digInv := numInv mod 10;
        numInv := numInv div 10;
        // writeln('.. compara ', digito, ' y ', digInv);
        if (digito <> digInv) then
           respuesta := false;
   end;
   esCapicua := respuesta;
end;
begin
	 writeln('Ingrese valor (-1 para terminar): ');
     readln(num);	     
     resp := esCapicua(num);
     if (resp = true)then
          writeln('Es capicual el num: ', num)
     else
          writeln('No es capicual el num: ', num);
     readln;
end.
