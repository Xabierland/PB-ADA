with Ada.Integer_Text_IO,Ada.Text_IO;
use Ada.Integer_Text_IO,Ada.Text_IO;
with suma_binaria;

procedure prueba_suma_binaria is
   suma,binario1,binario2:integer;
begin
   binario1:=0;
   binario2:=0;
   suma:=suma_binaria(binario1,binario2);
   put("0 + 0 en binario es 0 y segun tu programa es: ");
   put(suma);
   new_line(3);

   binario1:=0;
   binario2:=1;
   suma:=suma_binaria(binario1,binario2);
   put("0 + 1 en binario es 1 y segun tu programa es: ");
   put(suma);
   new_line(3);

   binario1:=1;
   binario2:=0;
   suma:=suma_binaria(binario1,binario2);
   put("1 + 0 en binario es 1 y segun tu programa es: ");
   put(suma);
   new_line(3);

   binario1:=1;
   binario2:=1;
   suma:=suma_binaria(binario1,binario2);
   put("1 + 1 en binario es 10 y segun tu programa es: ");
   put(suma);
   new_line(3);

   binario1:=11;
   binario2:=11;
   suma:=suma_binaria(binario1,binario2);
   put("11 + 11 en binario es 110 y segun tu programa es: ");
   put(suma);
   new_line(3);

   binario1:=111;
   binario2:=111;
   suma:=suma_binaria(binario1,binario2);
   put("111 + 111 en binario es 1110 y segun tu programa es: ");
   put(suma);
   new_line(3);

   binario1:=111;
   binario2:=100;
   suma:=suma_binaria(binario1,binario2);
   put("111 + 100 en binario es 1011 y segun tu programa es: ");
   put(suma);
   new_line(3);

   binario1:=1111;
   binario2:=10;
   suma:=suma_binaria(binario1,binario2);
   put("1111 + 10 en binario es 10001 y segun tu programa es: ");
   put(suma);
   new_line(3);

   binario1:=10;
   binario2:=1111;
   suma:=suma_binaria(binario1,binario2);
   put("10 + 1111 en binario es 10001 y segun tu programa es: ");
   put(suma);
   new_line(3);
end prueba_suma_binaria;
