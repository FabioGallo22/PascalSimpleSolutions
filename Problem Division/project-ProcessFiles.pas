{Problem statement:
Un profesor almacenó los datos de los alumnos de su materia en un archivo alumnos.txt. En cada línea
guardó el número de inscripción del alumno y sus tres notas finales (oral, escrito y trabajos prácticos). El
archivo está ordenado por número de inscripción.
En otro archivo, ordenado alfabéticamente por apellido, guarda por línea, número de inscripción, apellido y
nombre de cada uno.
Desea escribir un programa para generar un archivo Promoción.txt con los apellidos y nombres de los
alumnos que promocionan la materia, esto es, alumnos que el promedio de las tres notas supere los 7 puntos.
El archivo debe quedar ordenado alfabéticamente.
}

program project1;

var
  nroIns: integer;
  letra: char;
  archAlu, archNom, archPro: Text;

procedure copiar(var archO, archD:Text);
var letra: char;
begin
     while(not(eof(archO)) and not(eoln(archO)))do
     begin
         read(archO,letra);
         write(archD, letra);
     end;
     writeln(archD);
end;

function promociona(nroAbuscar:integer; var arch:Text):boolean;
var promedio: real; oral, escrito, tp, nro: integer;
  enc : boolean;
begin
  reset(arch); // se abre y cierra dentro de esta función porque con cada búsqueda debe empezar buscando desde el principio.
  enc := false;
  while(not(eof(arch)) and not(enc)) do
  begin
      read(arch,nro);
      if (nro = nroAbuscar)then
      begin
        enc := true;
        readln(arch, oral, escrito, tp);// se leen las notas del oral, escrito y TP
      end
      else
          readln(arch); // se completa la lectura de la linea, salteando las notas de la fila
  end;
  close(arch);
  promociona:=false;
  if(enc)then
  begin
    promedio := (oral + escrito + tp) / 3;
    //writeln('   promedio de ', nroAbuscar,' es ', promedio:5:2);
    if(promedio >= 7)then
      promociona:= true;
  end;
end;

begin
     assign(archAlu, 'alumnos.txt');
     assign(archNom, 'nombres.txt');
     assign(archPro, 'promociones.txt');
     reset(archNom);
     rewrite(archPro);

     while(not(eof(archNom)))do
     begin
         read(archNom, nroIns);
         if (promociona(nroIns, archAlu))then
            copiar (archNom,archPro)
         else
            readln(archNom); // si no promociona, se termina de leer la linea y se descarta

     end;
     close(archNom);
     close(archPro);
     writeln('Fin del prcesamiento del archivo de promociones!');
     readln;
end.
