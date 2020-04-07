with vectores; use vectores;

procedure eliminar_tercer_elemento_ordenada (L:in out Lista_Enteros) is
   -- pre: los elementos de la lista estan ordenados
   -- post: si hay tres o mas elementos, el tercer elemento quedara eliminado
   --       y la lista mantendra el orden

   i:Integer;
begin
   i:=1;
   loop exit when i>L.Cont;
      if i>=3 then
         L.Numeros(i):=L.Numeros(i+1);
         if i=3 then
            L.Cont:= L.Cont - 1;
         end if;
      end if;
      i:=i+1;
   end loop;
end eliminar_tercer_elemento_ordenada;

