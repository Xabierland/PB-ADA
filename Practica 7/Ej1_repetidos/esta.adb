with def_datos; use def_datos;

function esta (
      N        : in     Integer;
      L        : in     Lista_De_Enteros   )
  return Boolean is
   -- Precondición:
   -- Postcondición: el resultado es True si N se encuentra en L y False si no
   esta:Boolean;
   i:Integer;

begin
   i:=1;
   esta:=False;
   loop exit when i>L.Cuantos or esta;
      if L.Numeros(i)=N then
         esta:=True;
      end if;
      i:=i+1;
   end loop;
   return(esta);
end esta;

