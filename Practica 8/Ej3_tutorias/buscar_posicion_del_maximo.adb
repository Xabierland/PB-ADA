with datos;
use datos;

procedure buscar_posicion_del_maximo(Lista: in Lista_tutorias_alumnos; posComienzo: in Integer; maximo: in out Integer) is
   L: Lista_tutorias_alumnos;
   pos: Integer;

begin
   L := Lista;
   pos:= posComienzo;
   maximo:=Lista.Cuantas;
   loop exit when pos>L.Cuantas;
      if L.Tutorias(pos).Tutorias_Totales>L.Tutorias(maximo).Tutorias_Totales then
         maximo:=pos;
      end if;
      pos:=pos+1;
   end loop;
end buscar_posicion_del_maximo;