with Ada.Text_IO, Ada.Integer_Text_IO, datos;
use Ada.Text_IO, Ada.Integer_Text_IO, datos;

procedure escribir ( L : in Lista ) is
   -- pre:  ??? Escribe la precondicion!!!
   -- post: ??? Escribe la postcondicion!!!


   Actual : Lista;

begin
   Actual:= new Nodo;
   Actual:=L;
   new_line(2);
   put("El contenido de la lista es: ");
   new_line;
   put("       <");
   new_line;
   loop exit when Actual = null;
      put(Actual.Info);
      Actual:=Actual.Sig;
   end loop;
   put("        >");
   new_line;
end escribir;

