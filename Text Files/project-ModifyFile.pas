{Problem statement
Escriba un programa que modifique un archivo de texto de forma 
que cada oración comience en una nueva línea.
}

Program project1;
Uses sysutils;
VAR
  T,TAux: TEXT;
  letraLeida : char;
begin
  assign(T, 'texto.txt');
  reset(T);
  assign(TAux, 'textoAux.txt');
  rewrite(TAux);

  while not eof(T) do
  begin
    read(T, letraLeida);
    write(TAux, letraLeida);
    if (letraLeida = '.' )then
       writeln(TAux);
  end;
  close(T);    
  close(TAux);

  DeleteFile('texto.txt');
  RenameFile ('textoAux.txt', 'texto.txt');
  DeleteFile('textoAux.txt');

  writeln('Procesamiento terminado!');
  readln;
end.
