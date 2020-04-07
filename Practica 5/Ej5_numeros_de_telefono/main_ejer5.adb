with prueba_coste_de_llamada, prueba_es_de_cobro_revertido,
     prueba_es_de_coste_ampliado, prueba_es_de_coste_compartido,
     prueba_es_de_coste_semi_ampliado, prueba_es_fijo_local,
     prueba_es_numero_corto, prueba_es_un_movil;
with Ada.Text_IO;
use Ada.Text_IO;

procedure main_ejer5 is

   procedure pausa is
   begin
      new_line(2);
      put_line("Pulsa una tecla para continuar...");
      skip_line;
      new_line(2);
   end pausa;

begin

prueba_es_de_cobro_revertido;
pausa;
prueba_es_de_coste_ampliado;
pausa;
prueba_es_de_coste_compartido;
pausa;
prueba_es_de_coste_semi_ampliado;
pausa;
prueba_es_fijo_local;
pausa;
prueba_es_numero_corto;
pausa;
prueba_es_un_movil;
pausa;

prueba_coste_de_llamada;

end main_ejer5;
