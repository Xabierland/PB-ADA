with numero_de_digitos,es_numero_corto,es_un_movil,
     es_de_cobro_revertido,es_de_coste_semi_ampliado,
     es_de_coste_compartido,es_de_coste_ampliado, es_fijo_local;

function tipo_de_numero(num:in integer) return integer is
   --- Entrada: Un numero de telefono (Integer)
   --- Pre: el numero tiene 5 o 9 digitos
   --- Salida: un valor Integer que representa el tipo de numero de telefono
   --- Post: el tipo es un valor entre 1 y 8
   -- 			1 (numero corto)
   -- 			2 (movil)
   -- 			3 (fijo de cobro revertido)
   -- 			4 (fijo de coste semi-ampliado)
   -- 			5 (fijo de coste compartido)
   -- 			6 (fijo de coste ampliado)
   -- 			7 (fijo estandar local)
   -- 			8 (fijo estandar no local)
rdo:integer:=0;
num_aux:integer:=num;
	begin
   if es_numero_corto(num_aux) then
      rdo:=1;
   elsif es_un_movil(num_aux) then
      rdo:=2;
   elsif es_de_cobro_revertido(num_aux) then
      rdo:=3;
   else if es_de_coste_semi_ampliado(num_aux) then
      rdo:=4;
   elsif es_de_coste_compartido(num_aux) then
      rdo:=5;
   elsif es_de_coste_ampliado(num_aux) then
      rdo:=6;
   elsif es_fijo_local(num_aux) then
      rdo:= 7;
   else  rdo:=8;
      end if;
      end if;
return rdo;
end tipo_de_numero;