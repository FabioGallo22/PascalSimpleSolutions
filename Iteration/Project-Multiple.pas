{
Se desea realizar una aplicación que solicite al usuario tres números naturales (A, B, y N), y que muestre
por pantalla todos los múltiplos de N que estén entre A y B inclusive. Asuma que los datos son ingresados
correctamente, es decir, el usuario ingresa N ≥ 0, y 0 ≤ A < B. Realice un algoritmo antes de escribir el programa,
luego implemente en Pascal utilizando un ciclo FOR. ¿Qué casos de prueba usaría?
	Ejemplo: Ingrese un natural N: 4
	Ingrese dos naturales para el rango [A..B]: 3 17
	Los múltiplos de 4 entre 3 y 17 son: 4 8 12 16
}

program Project1;
var
  A,B,N, i: Integer;
begin
    writeln('Ingrese A, B, N');
    read(A,B,N);
    readln;
    writeln('Valores ingresados: A: ', A, ' - B: ', B, ' - N: ', N);
    for i:= A to B do
        begin
          {writeln('Valor de i: ', i);}
          if i mod N = 0 then
             writeln('Multiplo de ', N, ' es: ', i);
        end;
    readln;
end.

