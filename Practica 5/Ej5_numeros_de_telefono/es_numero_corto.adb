with numero_de_digitos;

function es_numero_corto(num:in integer) return boolean is

   --- Entrada: Un numero de telefono (Integer)
   --- Pre: el numero tiene 5 o 9 digitos
   --- Salida: un valor booleano
   --- Post: true si el numero de telefono tiene 5 digitos
   rdo:boolean:=false;
   num_aux:integer:=num;
   begin
   if numero_de_digitos(num_aux)=5 then
      rdo:=true;
   end if;
return rdo;
end es_numero_corto;