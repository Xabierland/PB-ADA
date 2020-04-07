with tipo_de_numero,coste_de_llamada_por_tipo;
procedure coste_de_llamada(tel, min: in integer; tarifa_plana_moviles, tarifa_plana_fijos: in boolean; tipo: out integer; coste: out float ) is
   --- Entrada: 1) Integer: un numero de telefono
   ---          2) Integer: la duracion de la llamada (en minutos)
   ---          3) Boolean: se dispone de tarifa plana a moviles
   ---          4) Boolean: se dispone de tarifa plana a fijos
   --- Pre: la duracion es >=1
   --- Salida: 2 numeros: Tipo y Coste
   --- Post: el tipo de llamada, valor Integer entre 1 y 8
   ---       el coste de la llamada, valor Float entre 0.0 y Float'last

  begin
   -- primero se obtiene el tipo de llamada
   tipo:=tipo_de_numero(tel);
   -- y luego se calcula el coste de la llamada en funcion del tipo de llamada
   coste:=coste_de_llamada_por_tipo(tipo,min,tarifa_plana_moviles,tarifa_plana_fijos);

end coste_de_llamada;