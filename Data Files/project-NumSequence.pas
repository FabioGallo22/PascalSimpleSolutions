{Problem statement:
	a) Escriba un programa que permita ingresar por teclado una secuencia de números enteros finalizada en -1 y
	genere un archivo llamado “enteros.dat” con los números ingresados.
	b) Escriba un programa que muestre en pantalla el contenido del archivo de enteros “enteros.dat”.
	c) Escriba un programa que indique si el archivo de números de enteros “enteros.dat” tiene elementos o está
	vacío.
	d) Dado el archivo “enteros.dat”, escriba un programa que cuente la cantidad de elementos que tiene dicho
	archivo.
	e) Escriba un programa que busque cuántas veces está el entero E (ingresado por el usuario) en el archivo
	“enteros.dat”. Proponga casos de prueba.
}

program project1;
var
   file_int : File of integer;
   valor : integer;
begin
   // ejercicio 1
   assign(file_int, 'mis-numeros.dat');
   rewrite(file_int);
   repeat
         writeln('Ingrese valor (-1 para terminar): ');
         readln(valor);
         if (valor <> -1) then
            write(file_int, valor);
   until valor = -1;

   writeln('Listado de valores: ');
   reset(file_int);
   while not(EOF(file_int)) do
   begin
        read(file_int, valor);
        writeln('valor leido: ', valor);
   end;
   close(file_int);
   readln;
end.