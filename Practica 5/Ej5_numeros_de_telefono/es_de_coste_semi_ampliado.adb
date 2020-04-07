function es_de_coste_semi_ampliado(num:in integer) return boolean is

   --- Entrada: Un numero de telefono (Integer)
   --- Pre: el numero tiene 9 digitos
   --- Salida: un valor booleano
   --- Post: true si el numero de telefono comienza por 902


   rdo:boolean:=false;
   num_aux:integer:=num;


begin
   if (num_aux / 10**6)=902 then
      rdo:=true;
   end if;
   return rdo;

end es_de_coste_semi_ampliado;
