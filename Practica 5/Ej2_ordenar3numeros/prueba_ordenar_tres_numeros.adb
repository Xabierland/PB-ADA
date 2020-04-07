with ADA.Text_IO,ADA.Integer_Text_IO;
use ADA.Text_IO,ADA.Integer_Text_IO;
with ordenar_tres_numeros;

procedure prueba_ordenar_tres_numeros is
n1,n2,n3: integer;

begin
   put_line("Primera prueba: n1=5, n2=3 y n3=1");
   n1:=5;
   n2:=3;
   n3:=1;
   put_line("el orden deber�a ser 5 3 1");
   put_line("Y tu programa dice:     ");
   ordenar_tres_numeros(n1,n2,n3);
   put(n1);
   put(n2);
   put(n3);
   new_line(2);

   put_line("Segunda prueba: n1=5, n2=1 y n3=3");
   n1:=5;
   n2:=1;
   n3:=3;
   put_line("el orden deber�a ser 5 3 1");
   put_line("Y tu programa dice:     ");
   ordenar_tres_numeros(n1,n2,n3);
   put(n1);
   put(n2);
   put(n3);
   new_line(2);

   put_line("Tercera prueba: n1=3, n2=5 y n3=1");
   n1:=3;
   n2:=5;
   n3:=1;
   put_line("el orden deber�a ser 5 3 1");
   put_line("Y tu programa dice:     ");
   ordenar_tres_numeros(n1,n2,n3);
   put(n1);
   put(n2);
   put(n3);
   new_line(2);

   put_line("Cuarta prueba: n1=3, n2=1 y n3=5");
   n1:=3;
   n2:=1;
   n3:=5;
   put_line("el orden deber�a ser 5 3 1");
   put_line("Y tu programa dice:     ");
   ordenar_tres_numeros(n1,n2,n3);
   put(n1);
   put(n2);
   put(n3);
   new_line(2);

   put_line("Quinta prueba: n1=1, n2=3 y n3=5");
   n1:=1;
   n2:=3;
   n3:=5;
   put_line("el orden deber�a ser 5 3 1");
   put_line("Y tu programa dice:     ");
   ordenar_tres_numeros(n1,n2,n3);
   put(n1);
   put(n2);
   put(n3);
   new_line(2);

   put_line("Sexta prueba: n1=5, n2=5 y n3=5");
   n1:=5;
   n2:=5;
   n3:=5;
   put_line("el orden deber�a ser 5 5 5");
   put_line("Y tu programa dice:     ");
   ordenar_tres_numeros(n1,n2,n3);
   put(n1);
   put(n2);
   put(n3);
   new_line(2);

   put_line("Sexta prueba: n1=0, n2=0 y n3=0");
   n1:=0;
   n2:=0;
   n3:=0;
   put_line("el orden deber�a ser 0 0 0");
   put_line("Y tu programa dice:     ");
   ordenar_tres_numeros(n1,n2,n3);
   put(n1);
   put(n2);
   put(n3);
   new_line(2);

   put_line("Sexta prueba: n1=10, n2=20 y n3=30");
   n1:=10;
   n2:=20;
   n3:=30;
   put_line("el orden deber�a ser 30 20 10");
   put_line("Y tu programa dice:     ");
   ordenar_tres_numeros(n1,n2,n3);
   put(n1);
   put(n2);
   put(n3);
   new_line(2);

   put_line("Sexta prueba: n1=5, n2=0 y n3=10");
   n1:=5;
   n2:=0;
   n3:=10;
   put_line("el orden deber�a ser 10 5 0");
   put_line("Y tu programa dice:     ");
   ordenar_tres_numeros(n1,n2,n3);
   put(n1);
   put(n2);
   put(n3);
   new_line(2);
end prueba_ordenar_tres_numeros;
