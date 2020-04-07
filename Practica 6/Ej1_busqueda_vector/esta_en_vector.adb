with vectores;
use vectores;

function esta_en_vector (x: in Integer; ver: in Vector_de_enteros) return boolean is
   -- pre: el vector V contiene al menos un elemento (V'Last >= 1)
   -- los elementos no siguen ningún orden
   -- post: el resultado es True si el valor N esta en V y False si no
   i:integer;
   rst:boolean;
   sec:Vector_de_enteros(1..10);
begin
   rst:=False;
   i:=1;
   sec:=ver;
   loop exit when i>sec'last or rst;
      if x=sec(i) then
         rst:=True;
      end if;
      i:=i+1;
   end loop;
   return(rst);
end esta_en_vector;

