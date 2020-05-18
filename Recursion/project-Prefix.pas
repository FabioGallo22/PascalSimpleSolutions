{Problem statement:
Determinar si un número natural P es prefijo de un número natural Q.
	Por ejemplo:
	esPrefijo (25, 2545) es verdadero
	esPrefijo (4,5604) es falso
	esPrefijo(459,45) es falso
	esPrefijo (25,25) es verdadero
}

program project1;
var numP, numQ:integer;

function esPrefijo(p,q:integer):boolean;
begin
  if  p<= q then
  begin
    if (p=q)then
       esPrefijo:=true
    else
        esPrefijo:=esPrefijo(p,q div 10);
  end
  else
      esPrefijo:= false;
end;

begin
  numP := 542;   // p es prefijo de q???
  numQ := 542;

  if (esPrefijo(numP, numQ))then
     writeln(numP, ' es prefijo de ', numQ)
  else
     writeln(numP, '  NO es prefijo de ', numQ);
  readln;
end.

