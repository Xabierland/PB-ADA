with vectores; use vectores;

procedure eliminar_tercer_elemento (L: in out Lista_Enteros) is
   -- pre: los elementos de la lista no tienen por que estar ordenados
   -- post: si hay tres o mas elementos, el tercer elemento quedara eliminado
   --       y la lista no tiene por que mantener ningun orden particular (ni con
   --       respecto al orden que tenia inicialmente)
   i:Integer;
begin
   i:=1;
   loop exit when i>L.Cont;
      if i=3 then
         L.Numeros(i):=L.Numeros(L.Cont);
         L.Cont:= L.Cont - 1;
      end if;
      i:=i+1;
   end loop;









end eliminar_tercer_elemento;

