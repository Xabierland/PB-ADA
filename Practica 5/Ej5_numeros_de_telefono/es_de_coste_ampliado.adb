function es_de_coste_ampliado(num:in integer) return boolean is

   --- Entrada: Un numero de telefono (Integer)
   --- Pre: el numero tiene 9 digitos
   --- Salida: un valor booleano
   --- Post: true si el numero de telefono comienza por 803, 806, 807, 905 o 907
   rdo:boolean:=false;
   num_aux:integer:=num;


   begin
   if (num_aux / 10**6)=803 or (num_aux / 10**6)=806 or (num_aux / 10**6)=807 or (num_aux / 10**6)=905 or (num_aux / 10**6)=907 then
      rdo:=true;
   end if;
      return rdo;

end es_de_coste_ampliado;
