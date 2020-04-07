with Ada.Text_IO, ada.integer_text_IO;
use Ada.Text_IO, ada.integer_text_IO;

procedure Ejercicio6 is
   num, resto ,cont: Integer;
begin
   cont := 0;
   put ("Escribe un numero");
   get (num);
   loop exit when num=0;
      resto := num rem 10;
      num := num/10;
      if resto rem 2 /= 0  then
         cont := cont+1;
      end if;
   end loop;
   put ("Su numero tiene");
   put (cont);
   put (" digito(s) impar(es)");
end Ejercicio6;
