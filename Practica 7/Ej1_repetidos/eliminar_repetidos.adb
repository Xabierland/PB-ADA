with def_datos; use def_datos;
with esta;

procedure eliminar_repetidos (
      Lista_Original     : in   Lista_De_Enteros;
      Lista_Resultado    : out 	Lista_De_Enteros  ) is
   -- Precondición:
   -- Postcondición: Lista_Resultado contiene los elementos de Lista_Original pero sin repetidos
   i:Integer;


begin
   if Lista_Original.Cuantos>0 then
      i:=1;
      Lista_Resultado.Cuantos:=1;
      Lista_Resultado.Numeros(1):=Lista_Original.Numeros(1);
      loop exit when i>Lista_Original.Cuantos;
         if not esta(Lista_Original.Numeros(i),Lista_Resultado) then
            Lista_Resultado.Cuantos:=Lista_Resultado.Cuantos + 1;
            Lista_Resultado.Numeros(Lista_Resultado.Cuantos):=Lista_Original.Numeros(i);
         end if;
         i:=i+1;
      end loop;
   else
      Lista_Resultado.Cuantos:=0;
   end if;


end eliminar_repetidos;

