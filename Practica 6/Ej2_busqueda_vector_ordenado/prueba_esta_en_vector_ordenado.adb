with Ada.Text_Io; use Ada.Text_Io;
with vectores; use vectores;
with esta_en_vector_ordenado;

procedure prueba_esta_en_vector_ordenado is
   -- este programa hace llamadas a la funcion esta_en_vector_ordenado y es util
   -- para comprobar si su funcionamiento es correcto

 procedure escribir_booleano(valor: in Boolean) is
   begin
      if(valor) then
         put("True");
      else
         put("False");
      end if;
   end escribir_booleano;

vector1: Vector_de_enteros(1..10);
rdo: boolean;
begin

   vector1 :=(1,3,5,7,9,11,13,15,17,19);
   put_line("Caso 1: el valor esta en medio");
   put_line(" esta_en_vector_ordenado(13, (1,3,5,7,9,11,13,15,17,19))");
   put_Line(" debe ser True y el resultado es ");
   rdo:=esta_en_vector_ordenado(13, (1,3,5,7,9,11,13,15,17,19));
   escribir_booleano(rdo);
   new_line(3);
   put_Line("Pulsa return para continuar");
   skip_line;
   new_line(3);

   vector1 :=(1,3,5,7,9,11,13,15,17,19);
   put_line("Caso 2: el valor esta al final");
   put_line(" esta_en_vector_ordenado(19, (1,3,5,7,9,11,13,15,17,19))");
   put_line(" debe ser True y el resultado es ");
   rdo:=esta_en_vector_ordenado(19, (1,3,5,7,9,11,13,15,17,19));
     escribir_booleano(rdo);
   new_line(3);
   put_Line("Pulsa return para continuar");
   skip_line;
   new_line(3);

   vector1 :=(1,3,5,7,9,11,13,15,17,19);
   put_line("Caso 3: el valor no esta, se debe recorrer todo el vector");
   put_line(" esta_en_vector_ordenado(45, (1,3,5,7,9,11,13,15,17,19))");
   put_line(" debe ser False y el resultado es ");
   rdo:=esta_en_vector_ordenado(45, (1,3,5,7,9,11,13,15,17,19));
   escribir_booleano(rdo);
   new_line(3);
   put_Line("Pulsa return para continuar");
   skip_line;
   new_line(3);

   vector1 :=(1,3,5,7,9,11,13,15,17,19);
   put_line("Caso 4: el valor esta al principio");
   put_line(" esta_en_vector_ordenado(1, (1,3,5,7,9,11,13,15,17,19))");
   put_line(" debe ser False y el resultado es ");
   rdo:=esta_en_vector_ordenado(1, (1,3,5,7,9,11,13,15,17,19));
   escribir_booleano(rdo);
   new_line(3);
   put_Line("Pulsa return para continuar");
   skip_line;
   new_line(3);



end prueba_esta_en_vector_ordenado;

