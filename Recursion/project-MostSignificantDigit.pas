{Problem statement:
Considere el siguiente planteo recursivo que resuelve el problema de calcular el dígito más significativo de un número
entero.
	dígito más significativo de N
	Caso Base: si N tiene sólo un dígito entonces el dígito más significativo de N es N.
	Caso General: si N tiene más de un dígito entonces el dígito más significativo de N
		es el dígito más significativo de N sin su último dígito.
}

program ejer1;

function digSignificativo(num: integer):integer;
begin
     if num < 10 then
        digSignificativo:= num
     else
         digSignificativo:= digSignificativo(num div 10);
end;
begin
   writeln('El dig mas significativo es: ', digSignificativo(4101));
  readln;
end.
