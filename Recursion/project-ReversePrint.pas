{Problem statement:
Dada una secuencia de caracteres terminada en #, escriba un planteo recursivo y luego implemente en Pascal un
procedimiento recursivo, que se corresponda con ese planteo, para:
a) Mostrarla en orden inverso.
b) Mostrarla en orden inverso sin mostrar las vocales
}
program project1;

procedure mostrarInverso();
var letra:char;
begin
  read(letra);
  if (letra <> '#')  then
  begin
       mostrarInverso();
       write(letra, ' ');
  end;
end;

procedure mostrarInversoSinVocales();
var letra:char;
begin
  read(letra);
  if (letra <> '#')  then
  begin
       mostrarInversoSinVocales();
       case (letra) of
       'a','e','i','o','u', 'A','E','I','O','U': write('');
       else
         write(letra, ' ')
       end;
  end;
end;

begin
  writeln ('Ingrese una secuencia de caracteres terminada por #');
  //mostrarInverso();
  mostrarInversoSinVocales();
  readln;
  readln;
end.
