{Problem statement:
Una secuencia S = a_1 a_2 ... a_k b_k ... b_2 b_1 de longitud par se dice que es palíndromo si para todo i en [1...k] se verifica
a_i=b_i

Por ejemplo: S = abcdbb (longitud=6) no es palíndromo,
S = abba (longitud=4) es palíndromo,
Si S es una secuencia vacía (longitud=0) es palíndromo.
Dada esta definición, proponga un planteo recursivo e implemente un procedimiento para decidir si una secuencia
de caracteres es palíndromo.
}

program project1;
var lon: integer; esPal:boolean;

procedure esPalindromo(longitud: integer; var  es:  boolean);
var essp: boolean; {es s prima}
  pri, ult: char;
begin
  if longitud = 0 then
     es:= true
  else
  begin
    read(pri);
    esPalindromo(longitud - 2, essp);
    read(ult);
    if (essp) and (pri = ult) then
       es:=true
    else
       es:= false;
  end;
end;

begin
     writeln('Ingrese longitud ');
     readln(lon);
     writeln('ingrese la secuencia');
     esPalindromo(lon, esPal);
     if esPal then
        writeln('Es palindromo')
     else
        writeln('No es palindromo');

     readln;
     readln;
end.
