with Ada.Text_IO,Ada.Integer_Text_IO,Ada.Float_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO,Ada.Float_Text_IO;
with coste_de_llamada;

procedure prueba_coste_de_llamada is
   -- Este programa sirve para probar el subprograma coste_de_llamada
   -- con diversos casos de prueba

   tipo, tel, min: Integer;
   tarifa_plana_moviles, tarifa_plana_fijos: Boolean:= False;
   coste:float:=0.0;
begin

   -- Caso de prueba 1. Numero corto y sin tarifas planas. Un minuto
   tel:=11818;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 1:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.000 y el tipo 1; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 2. Numero movil y sin tarifas planas. Un minuto
   tel:=656161244;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 2:" & tel'image & " y min: " & min'image & " (sin tarifa plana a moviles)");
     put_line("El coste deberia ser 0.020 y el tipo 2; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 3. Numero movil y sin tarifas plana. Un minuto
   tel:=800054578;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 3:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.000 y el tipo 3; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 4. Numero corto y sin tarifas planas. Un minuto
   tel:=902565656;
   min:=2;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 4:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.050 y el tipo 4; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 5. Numero corto y sin tarifas planas. Un minuto
   tel:=901585858;
   min:=5;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 5:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.06 y el tipo 5; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 6. Numero corto y sin tarifas planas. Un minuto
   tel:=803585956;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 6:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.3 y el tipo 6; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 7. Numero corto y sin tarifas planas. Un minuto
   tel:=806585956;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 7:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.3 y el tipo 6; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 8. Numero corto y sin tarifas planas. Un minuto
   tel:=807585956;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 8:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.3 y el tipo 6; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 9. Numero corto y sin tarifas planas. Un minuto
   tel:=905585956;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 9:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.3 y el tipo 6; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 10. Numero corto y sin tarifas planas. Un minuto
   tel:=907585956;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 10:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.3 y el tipo 6; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 11. Numero corto y sin tarifas planas. Un minuto
   tel:=945564589;
   min:=2;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 11:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.008 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 12. Numero corto y sin tarifas planas. Un minuto
   tel:=943254240;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 12:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.004 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 13. Numero corto y sin tarifas planas. Un minuto
   tel:=948457878;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 13:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.004 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 14. Numero corto y sin tarifas planas. Un minuto
   tel:=940252589;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 14:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.004 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 15. Numero corto y sin tarifas planas. Un minuto
   tel:=944787896;
   min:=1;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 15:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.004 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 16. Numero corto y sin tarifas planas. Un minuto
   tel:=946989863;
   min:=2;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 16:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.008 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 17. Numero corto y sin tarifas planas. Un minuto
   tel:=941585963;
   min:=2;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 17:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.02 y el tipo 8; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 18. Numero corto y sin tarifas planas. Un minuto
   tel:=942584123;
   min:=96;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 18:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.96 y el tipo 8; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 19. Numero corto y sin tarifas planas. Un minuto
   tel:=947854125;
   min:=11;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 19:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.11 y el tipo 8; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 20. Numero corto y sin tarifas planas. Un minuto
   tel:=949585963;
   min:=2;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 20:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.02 y el tipo 8; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 21. Numero corto y sin tarifas planas. Un minuto
   tarifa_plana_fijos:=true;
   tel:=940584123;
   min:=96;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 21:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.00 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 22. Numero corto y sin tarifas planas. Un minuto
   tarifa_plana_fijos:=true;
   tel:=943854125;
   min:=11;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 22:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.00 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 23. Numero corto y sin tarifas planas. Un minuto
   tarifa_plana_fijos:=true;
   tel:=944585963;
   min:=2;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 23:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.00 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 24. Numero corto y sin tarifas planas. Un minuto
   tel:=945584123;
   min:=96;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 24:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.00 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 25. Numero corto y sin tarifas planas. Un minuto
   tel:=946854125;
   min:=11;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 25:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.00 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 26. Numero corto y sin tarifas planas. Un minuto
   tel:=948585963;
   min:=2;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 26:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.00 y el tipo 7; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");

   -- Caso de prueba 27. Numero corto y sin tarifas planas. Un minuto
   tarifa_plana_moviles:=true;
   tel:=605956130;
   min:=96;
   coste_de_llamada(tel,min,tarifa_plana_moviles,tarifa_plana_fijos,tipo,coste);
   put_line("Caso 27:" & tel'image & " y min: " & min'image);
   put_line("El coste deberia ser 0.00 y el tipo 2; y segun tu programa sus valores son: ");
   put("              ");
   put(coste, exp=>0);
   put(" y ");
   put(tipo, width=>2);
   new_line;
   put_line("#################################");


end prueba_coste_de_llamada;