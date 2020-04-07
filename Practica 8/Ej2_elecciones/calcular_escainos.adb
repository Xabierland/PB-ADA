with tipos; use tipos;
with ada.text_io; use ada.text_io;

with repartir_escainos, escribir_escainos;

procedure calcular_escainos (	LPV_Bizkaia, LPV_Araba, LPV_Gipuzkoa: in     T_Lista_Partidos_Votos;
                                Resultado                           : out    T_Lista_Escainos         )  is
   -- Pre:  las 3 variables de entrada contienen los resultados de las elecciones en
   --       cada una de las 3 provincias.
   -- Post:  el resultado es el numero de escainos de cada partido. Este resultado se
   --        calcula asignando los 25 escainos a repartir en cada provincia, y
   --        acumulandolos finalmente por cada partido.

   function esta ( Nombre_Partido : in     T_Nombre;
                   Escainos       : in     T_Lista_Escainos) return Integer is
      -- pre:
      -- post: el resultado es 0 si el partido no esta en "Escainos", y la posicion en que se encuentra en caso de que este
      I   : Integer;
      Enc : Boolean;
   begin
      i:=1;
      Enc:=False;
      loop exit when i>Escainos.Num_Partidos or Enc;
         if Escainos.Tabla_Escainos(i).Nombre=Nombre_Partido then
            Enc:=True;
         else
            i:=i+1;
         end if;
      end loop;
      if Enc=False then
         i:=0;
      end if;
      return(i);
   end esta;

   procedure acumular_escainos (Escainos_Totales : in out T_Lista_Escainos;
                                Escainos         : in     T_Lista_Escainos) is
      -- pre:
      -- post: se han sumado los escainos de "Escainos" a los de "Escainos_Totales"
      i, pos : Integer;

   begin
      i:=1;
      pos:=0;
      loop exit when i>Escainos.Num_Partidos;
         if esta(Escainos_Totales.Tabla_Escainos(i).Nombre, Escainos)=0 then
            Escainos_Totales.Num_Partidos:= Escainos_Totales.Num_Partidos + 1;
            Escainos_Totales.Tabla_Escainos(Escainos_Totales.Num_Partidos):=Escainos.Tabla_Escainos(i);
         else
            pos:= esta(Escainos_Totales.Tabla_Escainos(i).Nombre, Escainos);
            Escainos_Totales.Tabla_Escainos(pos).Escainos:=Escainos_Totales.Tabla_Escainos(pos).Escainos+Escainos.Tabla_Escainos(i).Escainos;
         end if;
         i:=i+1;
      end loop;
   end acumular_escainos;

   Escainos_Bizkaia, Escainos_Araba, Escainos_Gipuzkoa: T_Lista_Escainos;


begin  -- Comienzo del subprograma calcular_escainos
   Resultado.Num_Partidos:=0;
   repartir_escainos(LPV_Bizkaia, Escainos_Bizkaia);
   acumular_escainos(Resultado, Escainos_Bizkaia);
   repartir_escainos(LPV_Araba, Escainos_Araba);
   acumular_escainos(Resultado, Escainos_Araba);
   repartir_escainos(LPV_Gipuzkoa, Escainos_Gipuzkoa);
   acumular_escainos(Resultado, Escainos_Gipuzkoa);
end calcular_escainos;


