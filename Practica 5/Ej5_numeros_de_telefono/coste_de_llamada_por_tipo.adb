function coste_de_llamada_por_tipo(tipo: in integer;min:in integer; tarifa_plana_moviles,tarifa_plana_fijos: in boolean) return float is
   --- Entrada: 1) Integer: el tipo de llamada
   ---          2) Integer: la duracion de la llamada (en minutos)
   ---          3) Boolean: se dispone de tarifa plana a moviles
   ---          4) Boolean: se dispone de tarifa plana a fijos
   --- Pre: la duracion es >=1
   ---      el tipo de llamada es un valor entre 1 y 8
   --- Salida: Un Float: Coste
   --- Post: el coste es un valor comprendido entre 0 e Integer'last
   --- 			tipo 1 : gratis 0
   --- 			tipo 2 : minutos*0,02 o gratis
   --- 			tipo 3 : gratis
   --- 			tipo 4 : minutos*0,025
   --- 			tipo 5 : minutos*0,012
   --- 			tipo 6 : minutos*0,3
   --- 			tipo 7 : minutos*0,004 o gratis
   --- 			tipo 8 : minutos*0,01

   f_min:float:=float(min);

   begin
   if tipo=1 or tipo=3 or (tipo=2 and tarifa_plana_moviles=True) or (tipo=7 and tarifa_plana_fijos=True)then
   f_min:=0.0;
   elsif (tipo=2 and tarifa_plana_moviles= false) then
   f_min:= f_min*0.02;
   elsif tipo=4 then
   f_min:= (f_min*0.025);
   elsif tipo=5 then
   f_min:= f_min*0.012;
   elsif tipo=6 then
   f_min:= f_min*0.3;
   elsif (tipo=7 and tarifa_plana_fijos= false) then
   f_min:= f_min*0.004;
   else f_min:= f_min*0.01  ;
   end if;

   return f_min  ;

end coste_de_llamada_por_tipo;