with datos;
use datos;

procedure intercambiar(Lista: in out Lista_tutorias_alumnos; posA,posB: in Integer) is
aux: Info_tutorias;
begin
   aux:=Lista.Tutorias(posB);
   Lista.Tutorias(posB):=Lista.Tutorias(posA);
   Lista.Tutorias(posA):=aux;
end intercambiar;