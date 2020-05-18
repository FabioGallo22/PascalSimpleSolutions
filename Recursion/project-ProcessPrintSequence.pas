{Problem statement:
a) Escriba un planteo recursivo y un procedimiento recursivo en Pascal (que respete el planteo) que muestre todos
los elementos de una secuencia de enteros terminada en 0 según las siguientes restricciones:
- Mostrar por pantalla los enteros positivos en el orden en que aparecen
- luego mostrar por pantalla el caracter @,
- y a continuación los enteros negativos pero en orden inverso
- Si la secuencia está vacío (solo contiene al número 0), solo se mostrará el símbolo @.
Por ejemplo: Para la secuencia: 12 -4 -5 3 99 6 -1 0 el programa deberá mostrar: 12 3 99 6 @ -1 -5 -4
b) Escriba un programa que use y llame adecuadamente al procedimiento del inciso anterior.
}

program project1;

procedure mostrar();
var sec,ult : integer;
begin
  read(sec);
  if (sec = 0) then
     write (' @')
  else
  begin
    if (sec < 0) then
    begin
         mostrar();
         write(' ', sec);
    end
    else
    begin
      write(' ', sec);
      mostrar();
    end;
  end;
end;

begin

  writeln('Ingrese secuencia terminada en 0.') ;
  mostrar();

  readln;
  readln;
end.
