procedure intercambiar(num1,num2: in out integer) is

    aux: integer;
begin
   aux := num1;
   num1 := num2;
   num2 := aux;
end intercambiar;
