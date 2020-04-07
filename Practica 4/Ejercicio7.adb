with Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;
procedure binario_a_decimal is
   exp, num, suma: Integer;
begin
   --inicializaciones
   put("Introduce un numero binario que comience en 1");
   get(num);
   exp:= 0;
   suma:= 0;
   --descomponer el numero binario y crear el decimal
   while(num>0) loop
      suma:= suma + (num rem 10)*(2**exp);
      num := num/10;
      exp := exp+1;
   end loop;
   put_line("El numero en decimal es:" );
   put(suma);
end binario_a_decimal;

