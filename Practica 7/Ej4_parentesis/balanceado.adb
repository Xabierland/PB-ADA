with Ada.Text_Io, Ada.Integer_Text_Io;
use Ada.Text_Io, Ada.Integer_Text_Io;
with datos; use datos;

function balanceado (C : in Cadena) return Boolean is
-- pre: C contiene un línea de un programa, que puede contener
--               paréntesis y llaves
--      Ej:         si (a > b) { b := a+n ) ; x+y }
-- post: el resultado es true si C está balanceada y false si no

   C_aux : Cadena;
   i    : Integer;
   salir : Boolean := False;
   balance : Boolean := False;

begin
   C_aux.Long := 0;
   i := 1;
   loop exit when i>C.Long or salir;
      if C.Caracteres(i)='(' or C.Caracteres(i)='[' or C.Caracteres(i)='{' then
         C_aux.Long:=C_aux.Long+1;
         C_aux.Caracteres(C_aux.Long):=C.Caracteres(i);
      end if;

      if C.Caracteres(i)=')' then
         if C_aux.Long/=0 then
            if C_aux.Caracteres(C_aux.Long)='(' then
               C_aux.Long:=C_aux.Long-1;
            else
               salir:=True;
            end if;
         else
            salir:=True;
         end if;
      end if;

      if C.Caracteres(i)=']' then
         if C_aux.Long/=0 then
            if C_aux.Caracteres(C_aux.Long)='[' then
               C_aux.Long:=C_aux.Long-1;
            else
               salir:=True;
            end if;
         else
            salir:=True;
         end if;
      end if;

      if C.Caracteres(i)='}' then
         if C_aux.Long/=0 then
            if C_aux.Caracteres(C_aux.Long)='{' then
               C_aux.Long:=C_aux.Long-1;
            else
               salir:=True;
            end if;
         else
            salir:=True;
         end if;
      end if;

      i:=i+1;
   end loop;

   if salir=False then
      balance:=True;
   end if;
   return(balance);

end balanceado;