function es_capicua (n: in integer) return boolean is
   -- pre: n >= 1
   -- post: el resultado True si n es capicua y False si no

   n_inverso,
   digito,
   res,
   aux : integer;
   capicua : boolean;
begin
   capicua:=False;
   digito:=0;
   res:=0;
   aux:=n;
   n_inverso:=0;
   loop exit when aux=0;
      n_inverso:=n_inverso*10;
      res := aux rem 10;

      aux := aux/10;
      n_inverso:= n_inverso + res;
      digito:= digito-1;
   end loop;

   if n_inverso = n then
      capicua:=True;
   end if;

   return(capicua);
end es_capicua;