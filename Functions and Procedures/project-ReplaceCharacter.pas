{Problem statement:
Escriba un programa en Pascal que procese una secuencia de caracteres ingresada por teclado y terminada
en punto, codificándola de la siguiente manera: cada vocal se reemplaza por el carácter que se indica en la tabla que
sigue, el resto de los caracteres se mantienen sin cambios.
	A, a: @
	E, e: #
	I, i: $
	O, o: %
	U, u: &

(Implemente una función que reciba una vocal y retorne la codificación correspondiente. Utilice la sentencia CASE para
la transformación.)
	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
	La salida del programa debería ser: @y#r, l&n#s, s@l$m%s @ l@s %nc# y 10.
}

program project1;

var
  ingreso:char;

function convertir_caracter(letra: char): char;
begin
     case letra of
         'A','a': letra:= '@';
         'E','e': letra:= '#';
         'I','i': letra:= '$';
         'O','o': letra:= '%';
         'U','u': letra:= '&';
     end;
     convertir_caracter:= letra;
end;

begin
    writeln('Ingrese cadena:');
    read(ingreso);
    writeln;
    while(ingreso <> '.') do
    begin
         Write(convertir_caracter(ingreso));
         read(ingreso);
    end;
    
    readln;
    readln;
end.
