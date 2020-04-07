with intercambiar;
procedure ordenar_dos_numeros(n1,n2: in out integer) is

begin
   if n1 < n2 then
      intercambiar(n1,n2);
   end if;

end ordenar_dos_numeros;
