with vectores; use vectores;

procedure rotar_derecha (vec: in out Vector_de_enteros) is
   -- pre: El array está lleno de información relevante
   -- post: se desplazaran todos los elementos hacia la derecha y el ultimo elemento
   --       pasara a ser el primero
   i,sec:Integer;

begin
   i:=10;
   sec:=vec(i);
   loop exit when i<(vec(1));
      vec(i):=vec(i-1);
      i:=i-1;
      if i=(vec(1)) then
         vec(1):=sec;
      end if;
   end loop;
end rotar_derecha;

