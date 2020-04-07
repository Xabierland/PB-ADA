with Ada.Text_Io;
use Ada.Text_Io;
with numero_medio;

procedure prueba_numero_medio is

   package Boolean_E_S is new Enumeration_Io(Boolean);
   use Boolean_E_S;


begin
   Put("Primera prueba: medio(1) debe ser true y el resultado es ");
   Put(numero_medio(1));
   New_Line(3);
   Put_Line("Pulsa return para continuar");
   Skip_Line;

   Put("Primera prueba: medio(6) debe ser true y el resultado es ");
   Put(numero_medio(6));
   New_Line(3);
   Put_Line("Pulsa return para continuar");
   Skip_Line;

   Put("Segunda prueba: medio(7) debe ser false y el resultado es ");
   Put(numero_medio(7));
   New_Line(3);
   Put_Line("Pulsa return para continuar");
   Skip_Line;

   Put("Primera prueba: medio(35) debe ser true y el resultado es ");
   Put(numero_medio(35));
   New_Line(3);
   Put_Line("Pulsa return para continuar");
   Skip_Line;

   Put("Primera prueba: medio(40) debe ser false y el resultado es ");
   Put(numero_medio(40));
   New_Line(3);
   Put_Line("Pulsa return para continuar");
   Skip_Line;

end prueba_numero_medio;
