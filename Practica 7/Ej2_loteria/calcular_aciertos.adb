with datos_loteria; use datos_loteria;

function calcular_aciertos (
				LBoletos: in Lista_Boletos_Premiados;
				Num_Boleto: in Integer)
								return Natural is

-- Precondición:
-- Postcondición: el resultado es el número de apariciones de Num_Boleto
--                en la lista LBoletos

   Total_Aciertos: Natural;
   i: Integer;

begin
   i:=1;
   Total_Aciertos:=0;
   loop exit when i>LBoletos.Cuantos;
      if LBoletos.Boletos(i)=Num_Boleto then
         Total_Aciertos:=Total_Aciertos+1;
      end if;
      i:=i+1;
   end loop;
   return Total_Aciertos;
 end calcular_aciertos;
