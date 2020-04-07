with Ada.Text_Io; use Ada.Text_Io;
with vectores; use vectores;
with rotar_derecha, escribir_vector;

procedure prueba_rotar_derecha is
   -- este programa hace llamadas a rotar_derecha y es util
   -- para comprobar si su funcionamiento es correcto

Vector1: Vector_de_enteros(1..10);

begin


   vector1 := (1, 3, 5, 7, 19, 6, 13, 15, 17, 9);
   put_line("Caso 1: (1, 3, 5, 7, 19, 6, 13, 15, 17, 9)");
   put_line(" rotar_derecha((1, 3, 5, 7, 19, 6, 13, 15, 17, 9))");
   put_Line(" debe dar como resultado ");
   put_line(" 9, 1, 3, 5, 7, 19, 6, 13, 15, 17");
   rotar_derecha(vector1);
   escribir_vector(vector1);
   new_line(3);
   put_line("Pulsa return para continuar");
   skip_line;

   vector1 := (1, 3, 5, 7, 19, 6, 13, 15, 17, 33);
   put_line("Caso 2: (1, 3, 5, 7, 19, 6, 13, 15, 17,33)");
   put_line(" rotar_derecha((1, 3, 5, 7, 19, 6, 13, 15, 17, 33))");
   put_Line(" debe dar como resultado ");
   put_line(" 33, 1, 3, 5, 7, 19, 6, 13, 15, 17");
   rotar_derecha(vector1);
   escribir_vector(vector1);
   new_line(3);
   put_line("Pulsa return para continuar");
   skip_line;

   vector1 := (1, 3, 5, 7, 19, 6, 13, 15, 17, 110);
   put_line("Caso 3: (1, 3, 5, 7, 19, 6, 13, 15, 17, 110)");
   put_line(" rotar_derecha((1, 3, 5, 7, 19, 6, 13, 15, 17, 110))");
   put_Line(" debe dar como resultado ");
   put_line(" 110, 1, 3, 5, 7, 19, 6, 13, 15, 17");
   rotar_derecha(vector1);
   escribir_vector(vector1);
   new_line(3);
   put_line("Pulsa return para continuar");
   skip_line;
end prueba_rotar_derecha;

