with Ada.Text_IO, es_un_movil;
use Ada.Text_IO;

procedure prueba_es_un_movil is
   -- Este programa sirve para probar el subprograma es_un_movil
   -- con diversos casos de prueba (podria faltar alguno)

   tel: Integer;

begin

   -- Caso de prueba 1 -- Telefono movil 6xx
   tel:=673245622;
   put_line("Caso 1: " & tel'image & " es un movil, y segun tu programa: ");
   put("              ");
   if(es_un_movil(tel)) then put("CORRECTO. Es un movil.");
   else put("OH OH!! No es un movil... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 2 -- Telefono movil 7xx
   tel:=773245622;
   put_line("Caso 2: " & tel'image & " es un movil, y segun tu programa: ");
   put("              ");
   if(es_un_movil(tel)) then put("CORRECTO. Es un movil.");
   else put("OH OH!! No es un movil... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 3 -- Telefono fijo local (Gipuzkoa)
   tel:=943010101;
   put_line("Caso 3: " & tel'image & " no es un numero movil, y segun tu programa: ");
   put("              ");
   if(not es_un_movil(tel)) then put("CORRECTO. No es un movil.");
   else put("OH OH!! Es un movil... ");
   end if;
   new_line;
   put_line("#################################");

end prueba_es_un_movil;