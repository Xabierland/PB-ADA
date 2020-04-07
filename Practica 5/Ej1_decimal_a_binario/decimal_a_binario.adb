function decimal_a_binario (num: in integer) return integer is
   --- Entrada: 1 numero
   --- pre: el numero entero
   --- Salida: 1 numero
   --- post: el resultado ser el numero binario equivalente al numero de entrada

   n,
   binario,
   cont :integer;

begin
   n:=num;
   binario:=0;
   cont:=0;

   loop exit when n<=1;
      binario := binario + ((n rem 2) * 10**cont);
      cont:=cont+1;
      n:=n/2;
   end loop;
   binario:=binario + (n*10**cont);
   return(binario);
end decimal_a_binario;
