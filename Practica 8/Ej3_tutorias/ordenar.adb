with datos,intercambiar,buscar_posicion_del_maximo;
use datos;

procedure ordenar (Lista: in out Lista_tutorias_alumnos) is
   -- Pre:
   -- Post: Lista esta ordenada de mayor a menor numero total de asistencias a tutorias

   i,posm:Integer;

begin
   i:=1;
   posm:=0;
      loop exit when i>Lista.Cuantas;
         buscar_posicion_del_maximo(Lista, i, posm);
         intercambiar(Lista, i, posm);
         i:=i+1;
      end loop;

end ordenar;