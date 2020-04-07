with Ada.Text_IO, es_fijo_local;
use Ada.Text_IO;

procedure prueba_es_fijo_local is
   -- Este programa sirve para probar el subprograma es_fijo_local
   -- con diversos casos de prueba (podria faltar alguno)

   tel: Integer;

begin

   -- Caso de prueba 1 -- telefono local (Araba)
   tel:=945010101;
   put_line("Caso 1: " & tel'image & " es fijo local, y segun tu programa: ");
   put("              ");
   if(es_fijo_local(tel)) then put("CORRECTO. Es fijo local.");
   else put("OH OH!! No es fijo local... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 2 -- telefono local (Bizkaia)
   tel:=944110101;
   put_line("Caso 2: " & tel'image & " es fijo local, y segun tu programa: ");
   put("              ");
   if(es_fijo_local(tel)) then put("CORRECTO. Es fijo local.");
   else put("OH OH!! No es fijo local... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 3 -- telefono local (Gipuzkoa)
   tel:=943010101;
   put_line("Caso 3: " & tel'image & " es fijo local, y segun tu programa: ");
   put("              ");
   if(es_fijo_local(tel)) then put("CORRECTO. Es fijo local.");
   else put("OH OH!! No es fijo local... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 4 -- telefono local (Navarra)
   tel:=948010101;
   put_line("Caso 4: " & tel'image & " es fijo local, y segun tu programa: ");
   put("              ");
   if(es_fijo_local(tel)) then put("CORRECTO. Es fijo local.");
   else put("OH OH!! No es fijo local... ");
   end if;
   new_line;
   put_line("#################################");


   -- Caso de prueba 5 -- telefono no local (La Rioja)
   tel:=941110101;
   put_line("Caso 5: " & tel'image & " no es fijo local, y segun tu programa: ");
   put("              ");
   if(not es_fijo_local(tel)) then put("CORRECTO. No es fijo local.");
   else put("OH OH!! Es fijo local... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 6 -- telefono no local (Guadalajara)
   tel:=949110101;
   put_line("Caso 6: " & tel'image & " no es fijo local, y segun tu programa: ");
   put("              ");
   if(not es_fijo_local(tel)) then put("CORRECTO. No es fijo local.");
   else put("OH OH!! Es fijo local... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 7 -- telefono no local (Cantabria)
   tel:=942110101;
   put_line("Caso 7: " & tel'image & " no es fijo local, y segun tu programa: ");
   put("              ");
   if(not es_fijo_local(tel)) then put("CORRECTO. No es fijo local.");
   else put("OH OH!! Es fijo local... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 8 -- telefono no local (Burgos)
   tel:=947110101;
   put_line("Caso 8: " & tel'image & " no es fijo local, y segun tu programa: ");
   put("              ");
   if(not es_fijo_local(tel)) then put("CORRECTO. No es fijo local.");
   else put("OH OH!! Es fijo local... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 9 -- telefono no local (Salamanca)
   tel:=923110101;
   put_line("Caso 9: " & tel'image & " no es fijo local, y segun tu programa: ");
   put("              ");
   if(not es_fijo_local(tel)) then put("CORRECTO. No es fijo local.");
   else put("OH OH!! Es fijo local... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 10 -- telefono fijo de cobro revertido
   tel:=900110101;
   put_line("Caso 10: " & tel'image & " no es fijo local, y segun tu programa: ");
   put("              ");
   if(not es_fijo_local(tel)) then put("CORRECTO. No es fijo local.");
   else put("OH OH!! Es fijo local... ");
   end if;
   new_line;
   put_line("#################################");



end prueba_es_fijo_local;