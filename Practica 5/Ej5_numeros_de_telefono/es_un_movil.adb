function es_un_movil(num:in integer) return Boolean is

   --- Entrada: Un numero de telefono (Integer)
   --- Pre: el numero tiene 9 digitos
   --- Salida: un valor booleano
   --- Post: true si el numero de telefono comienza por 6 o 7

rdo:Boolean:=false;
num_aux:Integer:=num;
 begin
   if ((num_aux/10**8)=6) or ((num_aux/10**8)=7) then
     rdo:=true;
   end if;
return rdo;
end es_un_movil;
