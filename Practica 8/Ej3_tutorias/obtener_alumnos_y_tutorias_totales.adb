with datos, posicion_de_dni, eliminar_repetidos, ordenar;
use datos;

procedure obtener_alumnos_y_tutorias_totales (Calendario: in out Info_calendario;
                                              Lista: out Lista_tutorias_alumnos) is
  -- Pre: Calendario contiene informacion sobre la asistencia a tutorias (por cada dia
  --      laborable del cuatrimestre, la fecha y los numeros de DNI de quienes han acudido
  --      a tutorias).
  -- Post: Lista esta ORDENADA por el numero total de tutorias a las que han asistido los
  --       estudiantes.
  --       Si un alumno ha acudido mas de una vez a tutorias el mismo dia, solamente se le
  --       contabilizara una vez por ese dia para computar el numero total de asistencias.
   i,j,pos: Integer;

begin
   Lista.Cuantas:=0;

   j:=1;
   i:=1;
   pos:=0;
   loop exit when i>Calendario.Cuantos_Dias;
      eliminar_repetidos(Calendario.Dias(i));
      loop exit when j>Calendario.Dias(i).Cuantos_alumn;
         if posicion_de_dni(Lista, Calendario.Dias(i).DNIs(j))=-1 then
            Lista.Cuantas:=Lista.Cuantas+1;
            Lista.Tutorias(Lista.Cuantas).DNI:= Calendario.Dias(i).DNIs(j);
            Lista.Tutorias(Lista.Cuantas).Tutorias_Totales:=1;
         else
            pos:=posicion_de_dni(Lista, Calendario.Dias(i).DNIs(j));
            Lista.Tutorias(pos).Tutorias_Totales:=Lista.Tutorias(pos).Tutorias_Totales + 1;
         end if;
         j:=j+1;
      end loop;
      i:=i+1;
      j:=1;
   end loop;
   ordenar(Lista);
end obtener_alumnos_y_tutorias_totales;