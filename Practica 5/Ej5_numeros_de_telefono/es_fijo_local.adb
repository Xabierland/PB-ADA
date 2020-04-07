function es_fijo_local(num:in integer) return boolean is

   --- Entrada: Un numero de telefono (Integer)
   --- Pre: el numero tiene 9 digitos
   --- Salida: un valor booleano
   --- Post: true si el numero de telefono comienza por 943, 945, 948 o 94 (salvo 941, 942, 947, y 949)
   rdo:boolean:=false;
   num_aux:integer:=num;
begin
   if (num_aux/10**6)=943 or (num_aux/10**6)=945 or (num_aux/10**6)=948 or (num_aux/10**6)=940 or (num_aux/10**6)=944 or (num_aux/10**6)=946 then
     rdo:=true;
end if;
return rdo;
end es_fijo_local;