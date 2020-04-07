
with vectores; use vectores;

function esta_en_posicion (x: in Integer; vec: in Vector_de_enteros) return integer is
   -- pre: V contiene al menos un elemento (V'Last >= 1)
   -- los elementos no siguen ningun orden. el elemento que se busca no tiene por que estar en el vector V
   -- post: devolvera la posicion en la que se encuentre el elemento, y si no estuviese devolvera -1
   i:Integer;
   rst:Boolean;
   sec:Vector_de_enteros(1..10);
begin
   i:=1;
   rst:=False;
   sec:=vec;
   loop exit when rst or i>sec'last;
      if x=sec(i) then
         rst:=True;
      end if;
      i:=i+1;
   end loop;
   i:=i-1;
   if rst=False then
      i:=-1;
   end if;

   return(i);
end esta_en_posicion;

