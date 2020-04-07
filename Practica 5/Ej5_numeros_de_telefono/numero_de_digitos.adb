function numero_de_digitos(num:in integer) return integer is

   --- Entrada: Un numero de telefono (Integer)
   --- Pre: el numero tiene 5 o 9 digitos
   --- Salida: un valor Integer
   --- Post: se devuelve el numero de digitos del numero de telefono
   rdo:integer:=1;
   num_aux:integer:=num;
begin
   loop exit when (num_aux / 10) =0 ;
      rdo:=rdo+1;
      num_aux:=num_aux/10;
   end loop;
return rdo;
end numero_de_digitos;
