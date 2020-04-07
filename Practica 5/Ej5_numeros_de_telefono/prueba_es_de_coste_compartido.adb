with Ada.Text_IO;
use Ada.Text_IO;
with es_de_coste_compartido;

procedure prueba_es_de_coste_compartido is
   -- Este programa sirve para probar el subprograma es_de_coste_compartido
   -- con diversos casos de prueba (podria faltar alguno)

   tel: Integer;

begin

   -- Caso de prueba 1 -- Es de coste compartido.
   tel:=901010101;
   put_line("Caso 1: " & tel'image & " es de coste compartido, y segun tu programa: ");
   put("              ");
   if(es_de_coste_compartido(tel)) then put("CORRECTO. Es de coste compartido.");
   else put("OH OH!! No es de coste compartido... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 2 -- Es un 900.
   tel:=900010101;
   put_line("Caso 2: " & tel'image & " no es de coste compartido, y segun tu programa: ");
   put("              ");
   if(not es_de_coste_compartido(tel)) then put("CORRECTO. NO es de coste compartido.");
   else put("OH OH!! Es de coste compartido... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 3 -- Es un numero fijo local.
   tel:=944010101;
   put_line("Caso 3: " & tel'image & " no es de coste compartido, y segun tu programa: ");
   put("              ");
   if(not es_de_coste_compartido(tel)) then put("CORRECTO. NO es de coste compartido.");
   else put("OH OH!! Es de coste compartido... ");
   end if;
   new_line;
   put_line("#################################");

end prueba_es_de_coste_compartido;