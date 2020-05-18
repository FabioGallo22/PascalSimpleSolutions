{Problem statement:
Dado un número m y una secuencia de números terminada en -1 (el cual no pertenece a la secuencia), escriba un
planteo recursivo y luego implemente en Pascal una función recursiva, que se corresponda con ese planteo, para
	a) Calcular cuántos números son múltiplos de m.
	b) Contar la cantidad de apariciones del número m.
	c) Decidir si m está ausente en la secuencia.
}

program project1;
var numM, cantM,cantA:integer;
  estaAus : boolean;

procedure operacionesVarias  (var m, cantMult, cantApar:integer; var esAusente:boolean);
  procedure recorrerSecuencia(var m, cantMult, cantApar:integer);
  var numSec : integer;
  begin
    read(numSec);
    if (numSec <> -1) then
    begin
      if (numSec mod m = 0) then
         cantMult:=cantMult + 1;
      if (numSec = m) then
         cantApar:=cantApar + 1;
      recorrerSecuencia(m, cantMult, cantApar);
    end;
  end; // fin del sub-procedamiento
begin
  cantMult := 0;
  cantApar := 0;
  esAusente := false;
  recorrerSecuencia(m,cantMult, cantApar);
  if cantApar = 0 then
     esAusente:= true;
end;


begin
  numM := 33;
  writeln('Ingrese una secuencia de numeros terminada en -1');

  operacionesVarias(numM, cantM, cantA, estaAus);

  writeln('Cantidad de multiplos de ', numM, ': ', cantM);
  writeln('Cantidad de apariciones de ', numM, ': ', cantA);
  writeln('Esta ausente ', numM, ' en la secuencia? ', estaAus);

  readln;
  readln;

end.

