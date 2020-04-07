with datos_loteria, calcular_aciertos;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
use datos_loteria;

function total_dinero (Recaudacion: in Natural;
                     Num_Boleto: in Integer;
                     Datos_Premios: in T_Datos_Premios) return Natural is
-- Precondición:
-- Postcondición: el resultado es el dinero en premios del boleto Num_Boleto
--                  en la lista Datos_Premios.
--                la mitad de la recaudación se destina a premios, dividiéndose
--                  a partes iguales entre las 4 categorías de aciertos.
--                dentro de cada categoría, se distribuye equitativamente entre
--                  todos los boletos premiados.

   Total_Premios, Total_Aciertos, Dinero_por_Categoria: Natural;
   encontrado:Boolean;
   i,j:Integer;

begin
   Total_Premios := 0;
   Total_Aciertos := 0;
   i:=3;
   j:=1;
   Dinero_por_Categoria:=Recaudacion/8;
   encontrado:=False;
   loop exit when i>6 or encontrado;
      loop exit when j>Datos_Premios(i).Cuantos or encontrado;
         if Num_Boleto = Datos_Premios(i).Boletos(j) then
            Total_Aciertos:=calcular_aciertos(Datos_Premios(i),Num_Boleto);
            Total_Premios:=(Dinero_por_Categoria/Datos_Premios(i).Cuantos) * Total_Aciertos;
            encontrado:=True;
         end if;
         j:=j+1;
      end loop;
      j:=1;
      i:=i+1;
   end loop;
   return Total_Premios;

end total_dinero;
