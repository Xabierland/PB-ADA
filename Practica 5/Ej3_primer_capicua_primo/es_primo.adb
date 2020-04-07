function es_primo (n: in integer) return boolean is
--Especificación
--Entrada: Un número entero n
--Pre: n >=1
--Salida: un booleano
--Post: valor_salida1 será true si n es primo y false si n no es primo

   posible_divisor:Integer;
   primo:boolean;

begin
    primo:=True;
    posible_divisor:=2;
    loop exit when  primo=false or posible_divisor=n;
      if n rem posible_divisor = 0 or n=1 then
         primo:=false;
      end if;
      posible_divisor:= posible_divisor + 1;
   end loop;

   return(primo);
end es_primo;
