{Problem statement:
Dada una secuencia de números terminada en -1 (el cual no pertenece a la secuencia), escriba un planteo recursivo y
luego implemente en Pascal una función recursiva, que se corresponda con ese planteo, para
a) Contar la cantidad de números de la secuencia.
b) Sumar todos los números de la secuencia.
c) Calcular el mayor número de la secuencia.
d) Decidir si todos son números positivos.}

program project1;
var sonTodosPositivos:boolean;
  cantidad, sum, may:integer;

procedure varios(var cantNum,suma,mayor :integer; var sonPos:boolean);
var num:integer;
begin
  read(num);
  if (num <> -1) then
  begin
       cantNum := cantNum + 1; 
       suma := suma + num;
       if (num < 0) then
          sonPos := false;
       if (num > mayor)then
          mayor := num;
       varios(cantNum, suma, mayor, sonPos);
  end;
end;


begin
  cantidad:=0;
  sum:=0;
  may:=-(MaxInt);
  sonTodosPositivos :=true;

  writeln('Ingrese una cadena de numeros terminada en ');
  varios(cantidad, sum, may, sonTodosPositivos);

  writeln('Cantidad: ', cantidad, '  Suma: ', sum, '  Mayor: ', may, '  Son todos pos?: ',sonTodosPositivos);

  readln;  
  readln;
end.
