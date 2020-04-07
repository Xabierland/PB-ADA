with Ada.Text_IO;
use Ada.Text_IO;
with es_de_coste_semi_ampliado;

procedure prueba_es_de_coste_semi_ampliado is
   -- Este programa sirve para probar el subprograma es_de_coste_semi_ampliado
   -- con diversos casos de prueba (podria faltar alguno)

   tel: Integer;

begin

   -- Caso de prueba 1 -- Es de coste semi-ampliado
   tel:=902010101;
   put_line("Caso 1: " & tel'image & " es de coste semi-ampliado, y segun tu programa: ");
   put("              ");
   if(es_de_coste_semi_ampliado(tel)) then put("CORRECTO. Es de coste semi-ampliado.");
   else put("OH OH!! No es de coste semi-ampliado... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 2 -- Es un numero fijo de cobro revertido
   tel:=900010101;
   put_line("Caso 2: " & tel'image & " no es de coste semi-ampliado, y segun tu programa: ");
   put("              ");
   if(not es_de_coste_semi_ampliado(tel)) then put("CORRECTO. No es de coste semi-ampliado.");
   else put("OH OH!! Es de coste semi-ampliado... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 3 -- Es un numero fijo local
   tel:=944010101;
   put_line("Caso 3: " & tel'image & " no es de coste semi-ampliado, y segun tu programa: ");
   put("              ");
   if(not es_de_coste_semi_ampliado(tel)) then put("CORRECTO. No es de coste semi-ampliado.");
   else put("OH OH!! Es de coste semi-ampliado... ");
   end if;
   new_line;
   put_line("#################################");


end prueba_es_de_coste_semi_ampliado;