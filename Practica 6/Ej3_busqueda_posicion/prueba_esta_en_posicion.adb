with Ada.Text_Io,Ada.Integer_Text_IO; use Ada.Text_Io,Ada.Integer_Text_IO;
with vectores; use vectores;
with esta_en_posicion;

procedure prueba_esta_en_posicion is
   -- este programa hace llamadas a la funcion Esta_en_vector y es util
   -- para comprobar si su funcionamiento es correcto

vector1: Vector_de_enteros(1..10);
pos:integer;
begin

   vector1 := (1, 3, 5, 7, 19, 6, 13, 15, 17, 9);
   put_line("Caso 1: el valor esta en medio");
   put_line(" esta_en_posicion(13, (1, 3, 5, 7, 19, 6, 13, 15, 17, 9))");
   put_line(" debe ser 7 y el resultado es ");
   pos:=esta_en_posicion(13, (1, 3, 5, 7, 19, 6, 13, 15, 17, 9));
   put(pos);
   new_line(3);
   put_line("Pulsa return para continuar");
   skip_line;
   new_line(3);

   vector1 := (1, 3, 5, 7, 19, 6, 13, 15, 17, 9);
   put_line("Caso 2: el valor esta al final");
   put_line(" esta_en_posicion(9, (1, 3, 5, 7, 19, 6, 13, 15, 17, 9))");
   put_line(" debe ser 10 y el resultado es ");
   pos:=esta_en_posicion(9, (1, 3, 5, 7, 19, 6, 13, 15, 17, 9));
   put(pos);
   new_line(3);
   put_line("Pulsa return para continuar");
   skip_line;
   new_line(3);

   Vector1 := (1, 3, 5, 7, 19, 6, 13, 15, 17, 9);
   put_line("Caso 3: el valor no esta, se debe recorrer todo el vector");
   put_line(" esta_en_posicion(45, (1, 3, 5, 7, 19, 6, 13, 15, 17, 9))");
   put_line(" debe ser -1 y el resultado es ");
   pos:=esta_en_posicion(45, (1, 3, 5, 7, 19, 6, 13, 15, 17, 9));
   put(pos);
   new_line(3);
   put_line("Pulsa return para continuar");
   skip_line;
   new_line(3);

   vector1 := (1, 3, 5, 7, 19, 6, 13, 15, 17, 9);
   put_line("Caso 4: el valor esta al principio");
   put_line(" esta_en_posicion(1, (1, 3, 5, 7, 19, 6, 13, 15, 17, 9))");
   put_line(" debe ser 1 y el resultado es ");
   pos:=esta_en_posicion(1, (1, 3, 5, 7, 19, 6, 13, 15, 17, 9));
   put(pos);
   new_line(3);
   put_line("Pulsa return para continuar");
   skip_line;
   new_line(3);



end prueba_esta_en_posicion;

