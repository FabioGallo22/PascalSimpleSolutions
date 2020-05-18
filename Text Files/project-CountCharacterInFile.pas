{Problem statement:
Escriba un programa que cuente cuántas veces está un carácter ingresado por el usuario
en cada línea de un archivo de texto.
}

Program project1; 
VAR
  T: TEXT; cant:integer;
  numLinea : integer; {cuenta la cantidad de saltos de lineas que tiene el archivo}
  letra, letraLeida : char;
begin
  assign(T, 'texto.txt');
  reset(T);
  cant:=0;
  numLinea := 1;

  writeln('Ingrese la letra a buscar: ');
  read(letra);

  while not eof(T) do
  begin
    while(not(eoln(T)))do
    begin
         read(T, letraLeida);
         if(letra = letraLeida)then
             cant := cant + 1;
    end;
    read(T, letraLeida);
    read(T, letraLeida);
    writeln('La letra ', letra, ' en la linea ', numLinea, ' esta ', cant, ' veces.');
    cant := 0;
    numLinea := numLinea + 1;
  end;
  close(T);
  readln;      
  readln;
end.
