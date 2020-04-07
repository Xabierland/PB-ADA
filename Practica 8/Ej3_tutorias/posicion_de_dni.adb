with datos;
use datos;

function posicion_de_dni (Lista: in Lista_tutorias_alumnos; DNI: in Positive) return Integer is
   -- Pre: Lista no contiene numeros de DNI repetidos
   -- Post: Devuelve la posicion de Lista en la que se encuentra el DNI
   --       Si el DNI no se encuentra en Lista, se devuelve el valor -1

   i:Integer;
   encontrado:boolean;

begin
   i:=1;
   encontrado:=False;
   loop exit when i>Lista.Cuantas or encontrado;
      if Lista.Tutorias(i).DNI = DNI then
         encontrado:=True;
      else
         i:=i+1;
      end if;
   end loop;

   if encontrado=False then
      i:=-1;
   end if;

   return (i);
end posicion_de_dni;