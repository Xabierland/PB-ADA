with vectores; use vectores;

procedure insertar_elemento_en_pos (N: in Integer; Pos: in Integer; L: in out Lista_Enteros) is
   -- pre: la posicion de insercion sera menor o igual
   --      que el numero de elementos que contenga la lista +1
   -- post: el elemento quedara insertado en la posicion de insercion
   --       y el resto de los elementos quedaran desplazados hacia la derecha
   i: Integer;

begin
   i:=L.Cont+1;
   L.Cont:= L.Cont+1;
   loop exit when i=pos;
      L.Numeros(i):= L.Numeros(i-1);
      i:=i-1;
   end loop;
   if i=pos then
      L.Numeros(i):=N;
   end if;
end insertar_elemento_en_pos;

