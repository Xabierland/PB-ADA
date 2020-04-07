with datos;
use datos;

procedure eliminar_repetidos (Un_dia: in out Info_dia) is
   -- Pre:
   -- Post: Se han eliminado las apariciones repetidas de DNI en Un_dia (es decir, que si
   --       un mismo DNI se encontraba mas de una vez en Un_dia, ahora solamente aparece una vez)
   --       El orden en el que queden los DNIs una vez eliminados los repetidos no es relevante, lo
   --       que significa que, por eficiencia, puede no mantenerse el orden original de los DNIs
   i,j:Integer;
begin
   i:=1;
   j:=1;
   loop exit when i>Un_dia.Cuantos_alumn;
      loop exit when j>Un_dia.Cuantos_alumn;
         if Un_dia.DNIs(i)=Un_dia.DNIs(j) and i/=j then
            Un_dia.DNIs(j):=Un_dia.DNIs(Un_dia.Cuantos_alumn);
            Un_dia.Cuantos_alumn:=Un_dia.Cuantos_alumn-1;
         end if;
         j:=j+1;
      end loop;
      i:=i+1;
      j:=1;
   end loop;
end eliminar_repetidos;
