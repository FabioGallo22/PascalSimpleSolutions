{
Escriba un programa que dados dos archivos de números enteros ya creados “enteros1.dat” (F1) y
“enteros2.dat” (F2), junte el contenido de ambos archivos en un tercer archivo nuevo “enteros1y2.dat”
(F3), de forma tal que en F3 queden intercalados un elemento de F1 y F2 mientras sea posible. (Tener en cuenta que
los archivos pueden tener distinto tamaño).
}

program project1;
type
  archivosEnteros = File of integer;
var
   file_ent1, file_ent2, file_ent1y2 : archivosEnteros;
   valor : integer;
begin
   // Se abren los archivos 1 y 2 para cargar
   assign(file_ent1, 'enteros1.dat');
   rewrite(file_enT1);
   assign(file_ent2, 'enteros2.dat');
   rewrite(file_ent2);
   assign(file_ent1y2, 'enteros1y2.dat');
   rewrite(file_ent1y2);

   for valor:= 1 to 5 do
       begin
            write(file_ent1, valor);        
            write(file_ent1, valor + 5);
            write(file_ent2, valor + 20);
       end;

   writeln('Listado de valores del archivo * 1 *: ');
   reset(file_ent1);
   while not(EOF(file_ent1)) do
   begin
        read(file_ent1, valor);
        writeln('valor leido: ', valor);
   end;

   writeln('Listado de valores del archivo * 2 *: ');
   reset(file_ent2);
   while not(EOF(file_ent2)) do
   begin
        read(file_ent2, valor);
        writeln('valor leido: ', valor);
   end;

   writeln;
   writeln;
   writeln;
   writeln('==================================');

   // comienza intercalación
    writeln('Listado de valores del archivo * 1 *: ');
   reset(file_ent1);
   reset(file_ent2);
   while not(EOF(file_ent1)) or not(EOF(file_ent2)) do
   begin
        if not(EOF(file_ent1)) then
        begin
             read(file_ent1, valor);
             write(file_ent1y2, valor);
        end;
        if not(EOF(file_ent2)) then
        begin
             read(file_ent2, valor);
             write(file_ent1y2, valor);
        end;

   end;

   // impresión del archivo intercalado
   writeln('Listado de valores del archivo * INTERCALADO *: ');
   reset(file_ent1y2);
   while not(EOF(file_ent1y2)) do
   begin
        read(file_ent1y2, valor);
        writeln('valor leido: ', valor);
   end;

   close(file_ent1);        
   close(file_ent2);
   close(file_ent1y2);
   readln;
end.