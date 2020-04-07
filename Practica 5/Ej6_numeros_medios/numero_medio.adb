   function numero_medio (num:in integer) return boolean is
   n, aux, aux2: integer;
   medio: boolean;
begin
   n:=num;
   aux:=0;
   aux2:=0;
   medio:=False;
   loop exit when n=0;
      n:=n-1;
      aux:= aux+n;
   end loop;
   n:=num;
   loop exit when aux2>=aux;
      n:=n+1;
      aux2:= aux2+n;
   end loop;
   if aux=aux2 then
      medio:=True;
   end if;

   return (medio);
end numero_medio;