function suma_binaria(binario1,binario2: in integer) return integer is
  sumaBin,resto1,resto2,llevada,peso,bin1,bin2,aux:integer;
begin
   bin1:=binario1;
   bin2:=binario2;
   peso:=0;
   llevada:=0;
   sumaBin:=0;
   resto1:=0;
   resto2:=0;
   aux:=0;
   loop exit when(sumaBin>=binario1 and sumaBin>=binario2);
      resto1:=bin1 rem 10;
      resto2:=bin2 rem 10;
      bin1:=bin1/10;
      bin2:=bin2/10;
      aux:=(resto1+resto2+llevada);
      llevada:=0;
      if aux=2 then
         aux:=0;
         llevada:=1;
      end if;
      if aux=3 then
         aux:=1;
         llevada:=1;
      end if;
      sumaBin:= sumaBin + aux * 10**peso;
      peso:=peso+1;
    end loop;
return(sumaBin);
end suma_binaria;
