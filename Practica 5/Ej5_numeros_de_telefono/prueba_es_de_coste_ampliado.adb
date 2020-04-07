with Ada.Text_IO;
use Ada.Text_IO;
with es_de_coste_ampliado;

procedure prueba_es_de_coste_ampliado is
   -- Este programa sirve para probar el subprograma es_de_coste_ampliado
   -- con diversos casos de prueba (podria faltar alguno)

   tel: Integer;

begin

   -- Caso de prueba 1 -- Es de coste ampliado 803.
   tel:=803010101;
   put_line("Caso 1: " & tel'image & " es de coste ampliado, y segun tu programa: ");
   put("              ");
   if(es_de_coste_ampliado(tel)) then put("CORRECTO. Es de coste ampliado.");
   else put("OH OH!! No es de coste ampliado... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 2 -- Es de coste ampliado 806.
   tel:=806010101;
   put_line("Caso 2: " & tel'image & "  es de coste ampliado, y segun tu programa: ");
   put("              ");
   if(es_de_coste_ampliado(tel)) then put("CORRECTO. Es de coste ampliado.");
   else put("OH OH!! No es de coste ampliado... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 3 -- Es de coste ampliado 807.
   tel:=807010101;
   put_line("Caso 3: " & tel'image & " es de coste ampliado, y segun tu programa: ");
   put("              ");
   if(es_de_coste_ampliado(tel)) then put("CORRECTO. Es de coste ampliado.");
   else put("OH OH!! No es de coste ampliado... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 4 -- Es de coste ampliado 905.
   tel:=905010101;
   put_line("Caso 4: " & tel'image & " es de coste ampliado, y segun tu programa: ");
   put("              ");
   if(es_de_coste_ampliado(tel)) then put("CORRECTO. Es de coste ampliado.");
   else put("OH OH!! No es de coste ampliado... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 5 -- Es de coste ampliado 907.
   tel:=907010101;
   put_line("Caso 5: " & tel'image & " es de coste ampliado, y segun tu programa: ");
   put("              ");
   if(es_de_coste_ampliado(tel)) then put("CORRECTO. Es de coste ampliado.");
   else put("OH OH!! No es de coste ampliado... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 6 -- Es un 900.
   tel:=900010101;
   put_line("Caso 6: " & tel'image & " no es de coste ampliado, y segun tu programa: ");
   put("              ");
   if(not es_de_coste_ampliado(tel)) then put("CORRECTO. No es de coste ampliado.");
   else put("OH OH!! Es de coste ampliado... ");
   end if;
   new_line;
   put_line("#################################");


end prueba_es_de_coste_ampliado;