with Ada.Text_IO, es_numero_corto;
use Ada.Text_IO;

procedure prueba_es_numero_corto is
   -- Este programa sirve para probar el subprograma es_numero_corto
   -- con diversos casos de prueba (podria faltar alguno)

   tel: Integer;

begin

   -- Caso de prueba 1 -- Telefono corto
   tel:=18018;
   put_line("Caso 1: " & tel'image & "  es un numero corto, y segun tu programa: ");
   put("              ");
   if(es_numero_corto(tel)) then put("CORRECTO. Es un numero corto.");
   else put("OH OH!! No es un numero corto... ");
   end if;
   new_line;
   put_line("#################################");

   -- Caso de prueba 2 -- Telefono fijo local (Gipuzkoa)
   tel:=943010101;
   put_line("Caso 2: " & tel'image & " no es un numero corto, y segun tu programa: ");
   put("              ");
   if(not es_numero_corto(tel)) then put("CORRECTO. No es un numero corto.");
   else put("OH OH!! Es un numero corto... ");
   end if;
   new_line;
   put_line("#################################");



end prueba_es_numero_corto;