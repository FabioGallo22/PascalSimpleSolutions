{Problem statement:
Escriba un programa que indique cuántas líneas tiene un archivo de texto.
}

Program project1; 
VAR T: TEXT; cant:integer;
begin
  assign(T, 'texto.txt');
  reset(T);
  cant:=0;
  while not eof(T) do
  begin
    readln(T);
    cant:=cant+1;
  end;
  writeln('Cantidad de líneas: ', cant);
  close(T);
  readln;
end.
