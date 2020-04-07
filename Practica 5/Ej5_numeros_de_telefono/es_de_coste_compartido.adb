function es_de_coste_compartido(num:in integer) return boolean is

   --- Entrada: Un numero de telefono (Integer)
   --- Pre: el numero tiene 9 digitos
   --- Salida: un valor booleano
   --- Post: true si el numero de telefono comienza por 901


   rdo:boolean:=false;
   num_aux:integer:=num;


begin
   if (num_aux / 10**6)=901 then
      rdo:=true;
   end if;
   return rdo;


end es_de_coste_compartido;
