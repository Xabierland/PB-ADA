with es_capicua,es_primo;

function primo_y_capicua_mayor (n: in integer) return integer is
   -- pre: n >= 1
   -- post: el resultado es un valor n2 tal que n2 es el primer capicua y primo mayor que n
   n2: integer;
   capicua, primo: boolean;
begin
   capicua:=False;
   primo:=False;

   n2:=n-1;
   loop exit when capicua and primo ;
      n2 := n2+1;
      capicua := es_capicua(n2);
      if capicua then
         primo:= es_primo(n2);
      end if;

   end loop;
   return(n2);
end primo_y_capicua_mayor;
