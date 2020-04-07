with Ada.Text_IO, es_de_cobro_revertido;
use Ada.Text_IO;

procedure prueba_es_de_cobro_revertido is
   -- Este programa sirve para probar el subprograma es_de_cobro_revertido
   -- con diversos casos de prueba (podria faltar alguno)

   tel: Integer;

begin

   -- Caso de prueba 1 -- Es un numero de cobro revertido 800
   tel:=800010101;
   put_line("Caso 1: " & tel'image & " es de cobro revertido, y segun tu programa: ");
   put("              ");
   if(es_de_cobro_revertido(tel)) then put("CORRECTO. Es de cobro revertido.");
   else put("OH OH!! No es de cobro revertido...");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 2 -- Es un numero de cobro revertido 900
   tel:=900010101;
   put_line("Caso 2: " & tel'image & " es de cobro revertido, y segun tu programa: ");
   put("              ");
   if(es_de_cobro_revertido(tel)) then put("CORRECTO. Es de cobro revertido.");
   else put("OH OH!! No es de cobro revertido...");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 3 -- Es un 901
   tel:=901010101;
   put_line("Caso 3: " & tel'image & " no es de cobro revertido, y segun tu programa: ");
   put("              ");
   if(not es_de_cobro_revertido(tel)) then put("CORRECTO. No es de cobro revertido.");
   else put("OH OH!! Es de cobro revertido... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 4 -- Es un numero corto
   tel:=18018;
   put_line("Caso 4: " & tel'image & " no es de cobro revertido, y segun tu programa: ");
   put("              ");
   if(not es_de_cobro_revertido(tel)) then put("CORRECTO. No es de cobro revertido.");
   else put("OH OH!! Es de cobro revertido... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 5 -- Es un numero fijo local
   tel:=944117777;
   put_line("Caso 5: " & tel'image & " no es de cobro revertido, y segun tu programa: ");
   put("              ");
   if(not es_de_cobro_revertido(tel)) then put("CORRECTO. No es de cobro revertido.");
   else put("OH OH!! Es de cobro revertido... ");
   end if;
   new_line;
   put_line("#################################");


end prueba_es_de_cobro_revertido;