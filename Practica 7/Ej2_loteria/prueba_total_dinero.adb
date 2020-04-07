with Ada.Integer_Text_Io, Ada.Text_Io;
use Ada.Integer_Text_Io, Ada.Text_Io;
with datos_loteria; use datos_loteria;
with total_dinero;

procedure prueba_total_dinero is

   Premios:T_Datos_Premios;
   Recaudacion:integer;
   premio:integer;

   procedure pedir_return_y_continuar is
   begin
      new_line(3);
      put_line("Pulsa return para continuar");
      skip_line;
      new_line(3);
   end pedir_return_y_continuar;

begin

   Premios(3).Cuantos:=10;
   Premios(3).Boletos:=(3435435,213403,230498,3424,34258,54654,45235,55654,55654,55654,others=>0);

   Premios(4).Cuantos:=8;
   Premios(4).Boletos:=(343,213402,230497,3423,34257,54653,45237,45237,others=>0);

   Premios(5).Cuantos:=4;
   Premios(5).Boletos:=(34255,54650,45230,456,others=>0);

   Premios(6).Cuantos:=1;
   Premios(6).boletos:=(999767,others=>0);

   Recaudacion:=3450000;

   premio:=total_dinero(Recaudacion,999767,Premios);
   put("Si el el boleto es 999767 con 6 aciertos el premio deberia de ser: ");
   put("431250");
   new_line;
   put("y segun vuestro programa es: ");
   put(premio);
   pedir_return_y_continuar;

   premio:=total_dinero(Recaudacion,54653,Premios);
   put("Si el el boleto es 54653 con 4 aciertos el premio deberia de ser: ");
   put("53906");
   new_line;
   put("y segun vuestro programa es: ");
   put(premio);
   pedir_return_y_continuar;

   premio:=total_dinero(Recaudacion,45237,Premios);
   put("Si el el boleto es 45237 con 4 aciertos el premio deberia de ser: ");
   put("107812");
   new_line;
   put("y segun vuestro programa es: ");
   put(premio);
   pedir_return_y_continuar;

   premio:=total_dinero(Recaudacion,55654,Premios);
   put("Si el el boleto es 55654 con 3 aciertos el premio deberia de ser: ");
   put("129375");
   new_line;
   put("y segun vuestro programa es: ");
   put(premio);
   pedir_return_y_continuar;

   premio:=total_dinero(Recaudacion,3435435,Premios);
   put("Si el el boleto es 3435435 con 3 aciertos el premio deberia de ser: ");
   put("43125");
   new_line;
   put("y segun vuestro programa es: ");
   put(premio);
   pedir_return_y_continuar;

   premio:=total_dinero(Recaudacion,1,Premios);
   put("Si el el boleto es 1 con 0 aciertos el premio deberia de ser: ");
   put("0");
   new_line;
   put("y segun vuestro programa es: ");
   put(premio);
   pedir_return_y_continuar;

   premio:=total_dinero(Recaudacion,456,Premios);
   put("Si el el boleto es 456 con 5 aciertos el premio deberia de ser: ");
   put("107812");
   new_line;
   put("y segun vuestro programa es: ");
   put(premio);
   pedir_return_y_continuar;

end prueba_total_dinero;